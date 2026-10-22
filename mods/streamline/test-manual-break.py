from pathlib import Path
r=Path('vek_decoded/smali/com/txdriver')
def text(p):return (r/(p+'.smali')).read_text()
def method(s,n):return s.split('.method '+n,1)[1].split('.end method',1)[0]
checks=0
def check(v,m):
    global checks
    assert v,m
    checks+=1
p=text('preferences/Preferences')
s=method(p,'public setTakeBreak(Z)V')
check('putBoolean' not in s and 'automaticIgnored' in s,'legacy writes neutralized')
s=method(p,'public setManualBreak(Z)V')
check('putBoolean' in s and 'pref_take_a_break' in s,'manual-only setter')
check('isTakeBreak' in method(p,'public isAutoAcceptOrdersEnabled()Z'),'auto accept preference respects manual break')
sites=[]
for f in r.rglob('*.smali'):
    s=f.read_text()
    if '->setManualBreak(Z)V' in s:sites.append(str(f.relative_to(r)))
check(sites==['compat/ManualBreak.smali'],'single audited setter caller')
s=text('socket/handler/BreakHandler')
live=method(s,'public handle(Ljava/lang/Boolean;)V').split('return-void',1)[0]
check('ManualBreak;->server' in live and 'setTakeBreak' not in live,'server observation only')
sites=[]
for f in r.rglob('*.smali'):
    if 'new-instance' in f.read_text() and 'BreakPacket;-><init>(Z)' in f.read_text():sites.append(str(f.relative_to(r)))
check(sites==['ui/activity/MainActivity.smali'],'all outgoing break packets are manual UI actions')
check('ManualBreak;->manual(Z)' in text('socket/packet/BreakPacket'),'manual actions recorded before packet send')
s=text('compat/ManualBreak')
check('clearPending' in method(s,'public static manual(Z)V'),'entering break clears queued autoaccepts')
check('ManualBreak;->reconnect()' in text('socket/ConnectionHealth'),'connection change preserves choice')
check('ManualBreak;->decorate' in text('ui/activity/ConnectionHealthIndicator'),'mismatch exposed on indicator')
s=text('filter/OrderAcceptManager')
for n in ['public declared-synchronized accept()V','public declared-synchronized add(Lcom/txdriver/db/Order;)V']:
    body=method(s,n)
    check('isTakeBreak()' in body and 'clearPending' in body,'queue guard '+n)
    check(body.index('isTakeBreak()')<body.index('return-void'),'guard before processing')
check('new-instance' not in method(text('compat/ManualBreak'),'public static server(Z)V'),'no automatic countercommands')
print(f'Manual break integration: {checks} checks passed')
