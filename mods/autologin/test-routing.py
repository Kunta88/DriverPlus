from pathlib import Path

root = Path('vek_decoded/smali/com/txdriver')

def method(file, signature):
    return (root / file).read_text().split(signature, 1)[1].split('.end method', 1)[0]

launch = method('ui/activity/LaunchActivity.smali', '.method protected onCreate(')
assert launch.index('action_exit') < launch.index('SavedLogin;->canStart')
assert launch.index('action_change_company') < launch.index('SavedLogin;->canStart')
assert 'MainActivity;->startWithSavedLogin' in launch and ':manual_login' in launch
assert 'AuthActivity;->start' in launch
main = method('ui/activity/MainActivity.smali', '.method public onCreate(')
assert main.index('initLayout()') < main.index('connectWithSavedLogin()')
connect = method('ui/activity/MainActivity.smali', '.method private connectWithSavedLogin()')
assert 'SavedLogin;->canStart' in connect and 'AppConfigRequest' in connect
service = method('ui/activity/MainActivity.smali', '.method public startSavedLoginService()')
assert 'ModernCompat;->startService' in service and 'removeExtra' in service
assert service.index('startService') < service.index('removeExtra')
assert 'isFinishing' in service
assert 'setSessionOpened' not in connect and 'setCurrentOrderId' not in connect
permission = method('ui/activity/MainActivity.smali', '.method public onRequestPermissionsResult(')
assert 'invoke-super' in permission and '0x3e8' in permission
assert 'ACCESS_FINE_LOCATION' in permission and 'ACCESS_COARSE_LOCATION' in permission
assert ':permission_connect' in permission
for index in (1, 2):
    error = method(f'socket/handler/AuthHandler${index}.smali', '.method public run()')
    assert error.index('SavedLogin;->setRejected') < error.index('AuthActivity;->start')
manual = method('ui/activity/AuthActivity$2.smali', '.method public onViewClick(')
assert manual.index('access$000') < manual.index('SavedLogin;->setRejected') < manual.index('setLogin')
auth = method('socket/handler/AuthHandler.smali', '.method public handle(Lcom/txdriver/socket/data/AuthData;)')
assert auth.index(':cond_3\n') < auth.index('SavedLogin;->setRejected') < auth.index('postSticky')
assert 'SavePassword' not in connect  # stored values are used as-is, never overwritten
print('Saved-login routing, permission retry and rejection fallback checks passed')
