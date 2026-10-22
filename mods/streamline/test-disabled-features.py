from pathlib import Path
import xml.etree.ElementTree as ET
r=Path('vek_decoded')
a='{http://schemas.android.com/apk/res/android}'
checks=0
def check(v,m):
    global checks
    assert v,m
    checks+=1
def source(p):return (r/f'smali/com/txdriver/{p}.smali').read_text()
def method(s,n):return s.split('.method '+n,1)[1].split('.end method',1)[0]
manifest=ET.parse(r/'AndroidManifest.xml').getroot()
for name in ['com.txdriver.receiver.NewsletterAlarmReceiver','com.txdriver.receiver.PCTasksReceiver','com.txdriver.ui.activity.NewslettersActivity','com.txdriver.ui.activity.photocontrol.PhotoControlProceedTaskActivity','com.txdriver.ui.activity.photocontrol.PhotoControlTasksListActivity']:
    e=next(e for e in manifest.iter() if e.get(a+'name')==name)
    check(e.get(a+'enabled')=='false','component disabled '+name)
for cls,fetch,show in [('NewsletterManager','fetchNewsletters','private showNotification(Lcom/txdriver/json/Newsletter;)V'),('PCTasksNotificationManager','fetchPCTasks','private showNotification(Ljava/util/ArrayList;)V')]:
    s=source('news/'+cls)
    check('->register(' not in method(s,'public constructor <init>(Lcom/txdriver/App;)V'),'no event subscription '+cls)
    for m in ['public '+fetch+'()V','public onEvent(Lcom/txdriver/socket/SocketEvents$AuthEvent;)V',show]:
        body=method(s,m).split('return-void',1)[0]
        check('new-instance' not in body and '->execute' not in body,'disabled body '+m)
    body=method(s,'public scheduleAlarm()V').split('return-void',1)[0]
    check('cancelAlarm' in body and 'AlarmManager;->set' not in body,'no alarms '+cls)
    check('cancelAlarm' in method(s,'public constructor <init>(Lcom/txdriver/App;)V'),'old alarm cancelled '+cls)
for cls in ['HttpRequest','HttpPostRequest']:
    s=source('http/request/'+cls)
    for signature in ['protected varargs doInBackground([Ljava/lang/Void;)Lcom/txdriver/http/request/'+cls+'$RequestResult;','protected onPostExecute(Lcom/txdriver/http/request/'+cls+'$RequestResult;)V']:
        body=method(s,signature)
        check('DisabledFeatures;->request' in body,'request/callback gate '+cls)
        gate=body.index('DisabledFeatures;->request')
        check('return-' in body[gate:body.index('\n    :feature_enabled')],'silent early exit '+cls)
p=source('preferences/Preferences')
for m in ['public isPhotoControlActive()Z','public getNotificationsNewsCounter()I','public getNotificationsPcTasksCounter()I']:
    body=method(p,m)
    check('const/4 v0, 0x0' in body and 'getBoolean' not in body and 'getInt' not in body,'disabled UI preference '+m)
cleanup=source('compat/DisabledModuleCleanup')
check('TxNewsletterNotificationChannelID' in cleanup and 'TxPhotoControlTasksNotificationChannelID' in cleanup,'only feature channels removed')
check('cancelAll' not in cleanup,'order notifications not cancelled')
print(f'Disabled modules structure: {checks} checks passed')
