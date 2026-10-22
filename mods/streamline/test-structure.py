from pathlib import Path
import xml.etree.ElementTree as ET
r=Path('vek_decoded')
a='{http://schemas.android.com/apk/res/android}'
checks=0
def check(v,msg):
    global checks
    assert v,msg
    checks+=1
prefs=ET.parse(r/'res/xml/preferences.xml').getroot()
keys=[e.get(a+'key') for e in prefs.iter()]
for k in ['pref_map','pref_driver_parkings','pref_parking_moving_notify']:
    check(k not in keys,'hidden '+k)
p=(r/'smali/com/txdriver/preferences/Preferences.smali').read_text()
def method(s,name):return s.split('.method '+name,1)[1].split('.end method',1)[0]
check('0x7f1000e9' in method(p,'public getMap()'),'Google fixed')
for m in ['isShowDriverParkings','isNotifyParkingMoving']:
    s=method(p,'public '+m+'()Z')
    check('const/4 v0, 0x1' in s and 'getBoolean' not in s,m+' fixed true')
main=(r/'smali/com/txdriver/ui/activity/MainActivity.smali').read_text()
check('setUserInputEnabled(Z)' in main,'no horizontal navigation')
check('CloseApplication;->confirm' in main,'close action')
layout=ET.parse(r/'res/layout/activity_main.xml').getroot()
check(next(e for e in layout.iter() if e.get(a+'id')=='@id/activity_main_tabLayout').get(a+'visibility')=='gone','tabs gone')
for variant in ['layout','layout-v17']:
    sheet=ET.parse(r/f'res/{variant}/fragment_bottom_sheet_dialog_main.xml').getroot()
    check(next(e for e in sheet.iter() if e.get(a+'id')=='@id/sheet_item_newsletters').get(a+'visibility')=='gone','news hidden '+variant)
    children=list(sheet)
    settings=next(i for i,e in enumerate(children) if e.get(a+'id')=='@id/sheet_item_settings')
    check(children[settings+1].get(a+'onClick')=='closeApplication','close below settings '+variant)
gps=(r/'smali/com/txdriver/ui/fragment/dialog/EnableGpsDialogFragment.smali').read_text()
check('GpsDialogWatcher;->run()' in gps and 'GpsDialogWatcher;->stop()' in gps,'watch lifecycle')
watch=(r/'smali/com/txdriver/compat/GpsDialogWatcher.smali').read_text()
check('isProviderEnabled' in watch and 'dismissAllowingStateLoss' in watch,'GPS closes dialog')
check('requestLocationUpdates' not in watch,'no extra GPS subscription')
for kind in ['HttpRequest','HttpPostRequest']:
    s=(r/f'smali/com/txdriver/http/request/{kind}.smali').read_text()
    check('WebDiagnostics;->begin' in s and 'WebDiagnostics;->end' in s and 'WebDiagnostics;->failed' in s,'request hooks '+kind)
stop=(r/'smali/com/txdriver/compat/CloseApplication.smali').read_text()
check('stopService' in stop and 'killProcess' in stop and 'finishAndRemoveTask' in stop,'full local cleanup')
check('APPLICATION_DETAILS_SETTINGS' in stop,'true Android stop accessible')
check('setStopped' in (r/'smali/com/txdriver/ui/activity/LaunchActivity.smali').read_text(),'explicit relaunch clears stop')
for f in ['service/MainService','receiver/PCTasksReceiver','receiver/NewsletterAlarmReceiver']:
    check('CloseApplication;->isStopped' in (r/f'smali/com/txdriver/{f}.smali').read_text(),'manual stop respected '+f)
print(f'Streamline structure: {checks} checks passed')
