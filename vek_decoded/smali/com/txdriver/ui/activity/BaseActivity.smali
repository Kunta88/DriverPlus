.class public abstract Lcom/txdriver/ui/activity/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;
.implements Lcom/txdriver/location/LocationManager$GpsDisableListener;


# static fields
.field private static final REQUEST_READ_PHONE_STATE:I = 0x3e9

.field private static final REQUEST_WRITE_EXTERNAL_STORAGE:I = 0x3ea

.field static final RESULT_PREFERENCES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field private EXECUTED_CHECK_EXTERNAL_STORAGE_PERMISSION:Z

.field private EXECUTED_CHECK_INSTALLED_APPS:Z

.field private EXECUTED_CHECK_READ_PHONE_STATE_PERMISSION:Z

.field private SHOW_PERMISSION_RATIONALE_FOR_EXTERNAL_STORAGE:Z

.field private SHOW_PERMISSION_RATIONALE_FOR_READ_PHONE:Z

.field public app:Lcom/txdriver/App;

.field private connectingSnackbar:Lcom/google/android/material/snackbar/Snackbar;

.field dangerButtonClickListener:Landroid/view/View$OnClickListener;

.field private mConnection:Lcom/txdriver/service/ServiceConnection;

.field progressLayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->EXECUTED_CHECK_INSTALLED_APPS:Z

    .line 55
    iput-boolean v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->EXECUTED_CHECK_READ_PHONE_STATE_PERMISSION:Z

    .line 56
    iput-boolean v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->EXECUTED_CHECK_EXTERNAL_STORAGE_PERMISSION:Z

    .line 58
    iput-boolean v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->SHOW_PERMISSION_RATIONALE_FOR_READ_PHONE:Z

    .line 59
    iput-boolean v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->SHOW_PERMISSION_RATIONALE_FOR_EXTERNAL_STORAGE:Z

    .line 63
    new-instance v0, Lcom/txdriver/ui/activity/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/BaseActivity$1;-><init>(Lcom/txdriver/ui/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->dangerButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private applyTheme()V
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 219
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->finish()V

    .line 220
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private bindService()V
    .locals 1

    .line 129
    new-instance v0, Lcom/txdriver/service/ServiceConnection;

    invoke-direct {v0, p0}, Lcom/txdriver/service/ServiceConnection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->mConnection:Lcom/txdriver/service/ServiceConnection;

    .line 130
    invoke-virtual {v0}, Lcom/txdriver/service/ServiceConnection;->bindService()V

    return-void
.end method

.method private getConnectingSnackbar()Lcom/google/android/material/snackbar/Snackbar;
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->connectingSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x1020002

    .line 275
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100091

    const/4 v2, -0x2

    .line 274
    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->connectingSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 279
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x30

    .line 281
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 282
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0902aa

    .line 283
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, -0x100

    .line 284
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 285
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->connectingSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/txdriver/ui/activity/BaseActivity$8;

    invoke-direct {v2, p0}, Lcom/txdriver/ui/activity/BaseActivity$8;-><init>(Lcom/txdriver/ui/activity/BaseActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 295
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->connectingSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    return-object v0
.end method

.method private getProgressLayout()Landroid/view/View;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->progressLayout:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f090239

    .line 327
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->progressLayout:Landroid/view/View;

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->progressLayout:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method checkExternalStoragePermission()V
    .locals 3

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->EXECUTED_CHECK_EXTERNAL_STORAGE_PERMISSION:Z

    .line 205
    invoke-static {}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->newInstance()Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;

    move-result-object v0

    const/4 v1, 0x0

    .line 206
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setCancelable(Z)V

    .line 207
    iget-object v1, p0, Lcom/txdriver/ui/activity/BaseActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 208
    new-instance v1, Lcom/txdriver/ui/activity/BaseActivity$7;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/BaseActivity$7;-><init>(Lcom/txdriver/ui/activity/BaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 214
    invoke-virtual {v0, p0}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;)V

    return-void
.end method

.method checkInstalledApps()V
    .locals 5

    .line 181
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 182
    invoke-static {p0, v3}, Lcom/txdriver/utils/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 184
    invoke-static {p0, v4, v3}, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;->show(Lcom/txdriver/ui/activity/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method checkPhonePermission()V
    .locals 3

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->EXECUTED_CHECK_READ_PHONE_STATE_PERMISSION:Z

    .line 191
    invoke-static {}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->newInstance()Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;

    move-result-object v0

    const/4 v1, 0x0

    .line 192
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setCancelable(Z)V

    .line 193
    iget-object v1, p0, Lcom/txdriver/ui/activity/BaseActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 194
    new-instance v1, Lcom/txdriver/ui/activity/BaseActivity$6;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/BaseActivity$6;-><init>(Lcom/txdriver/ui/activity/BaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 200
    invoke-virtual {v0, p0}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;)V

    return-void
.end method

.method isSessionStarted()Z
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->isSessionOpened()Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;->applyTheme()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 225
    sget-object v0, Lcom/txdriver/ui/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCreate] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/txdriver/App;

    iput-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->app:Lcom/txdriver/App;

    .line 227
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->setBaseTheme()V

    .line 228
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getActivityLifecycleObserver()Lcom/txdriver/ActivityLifecycleObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/txdriver/ActivityLifecycleObserver;->onActivityCreated(Lcom/txdriver/ui/activity/BaseActivity;)V

    .line 229
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 230
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 243
    sget-object v0, Lcom/txdriver/ui/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDestroy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getActivityLifecycleObserver()Lcom/txdriver/ActivityLifecycleObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/txdriver/ActivityLifecycleObserver;->onActivityDestroyed(Lcom/txdriver/ui/activity/BaseActivity;)V

    .line 245
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/txdriver/socket/SocketEvents$ConnectionStateEvent;)V
    .locals 2

    .line 253
    iget v0, p1, Lcom/txdriver/socket/SocketEvents$ConnectionStateEvent;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    .line 254
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->showConnecting(Z)V

    goto :goto_0

    .line 255
    :cond_0
    iget p1, p1, Lcom/txdriver/socket/SocketEvents$ConnectionStateEvent;->state:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 256
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->showConnecting(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/txdriver/socket/SocketEvents$ExceptionEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 299
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->showConnecting(Z)V

    return-void
.end method

.method public onEventMainThread(Lcom/txdriver/socket/SocketEvents$PendingResponseEvent;)V
    .locals 0

    .line 303
    iget-boolean p1, p1, Lcom/txdriver/socket/SocketEvents$PendingResponseEvent;->pending:Z

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->showPending(Z)V

    return-void
.end method

.method public onGpsDisabled()V
    .locals 0

    .line 355
    invoke-static {p0}, Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;)V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 334
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 336
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/txdriver/ui/activity/SettingsActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lcom/txdriver/ui/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v0

    .line 339
    :pswitch_1
    invoke-static {p0}, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f090182
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .line 93
    sget-object v0, Lcom/txdriver/ui/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPause] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/txdriver/location/LocationManager;->removeGpsDisableListener(Lcom/txdriver/location/LocationManager$GpsDisableListener;)V

    .line 96
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getActivityLifecycleObserver()Lcom/txdriver/ActivityLifecycleObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/txdriver/ActivityLifecycleObserver;->onActivityPaused(Lcom/txdriver/ui/activity/BaseActivity;)V

    .line 97
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/16 p2, 0x3e9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p2, :cond_0

    const/16 p2, 0x3ea

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 137
    :cond_0
    aget p1, p3, v1

    if-eqz p1, :cond_1

    .line 138
    iget-boolean p1, p0, Lcom/txdriver/ui/activity/BaseActivity;->SHOW_PERMISSION_RATIONALE_FOR_READ_PHONE:Z

    if-nez p1, :cond_1

    .line 139
    iput-boolean v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->SHOW_PERMISSION_RATIONALE_FOR_READ_PHONE:Z

    .line 140
    invoke-static {}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->newInstance()Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;

    move-result-object p1

    const p2, 0x7f1001c8

    .line 141
    invoke-virtual {p0, p2}, Lcom/txdriver/ui/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 142
    new-instance p2, Lcom/txdriver/ui/activity/BaseActivity$2;

    invoke-direct {p2, p0}, Lcom/txdriver/ui/activity/BaseActivity$2;-><init>(Lcom/txdriver/ui/activity/BaseActivity;)V

    invoke-virtual {p1, p2}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 148
    new-instance p2, Lcom/txdriver/ui/activity/BaseActivity$3;

    invoke-direct {p2, p0}, Lcom/txdriver/ui/activity/BaseActivity$3;-><init>(Lcom/txdriver/ui/activity/BaseActivity;)V

    invoke-virtual {p1, p2}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 154
    invoke-virtual {p1, p0}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;)V

    .line 158
    :cond_1
    aget p1, p3, v1

    if-eqz p1, :cond_2

    .line 159
    iget-boolean p1, p0, Lcom/txdriver/ui/activity/BaseActivity;->SHOW_PERMISSION_RATIONALE_FOR_EXTERNAL_STORAGE:Z

    if-nez p1, :cond_2

    .line 160
    iput-boolean v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->SHOW_PERMISSION_RATIONALE_FOR_EXTERNAL_STORAGE:Z

    .line 161
    invoke-static {}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->newInstance()Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;

    move-result-object p1

    const p2, 0x7f1001c9

    .line 162
    invoke-virtual {p0, p2}, Lcom/txdriver/ui/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 163
    new-instance p2, Lcom/txdriver/ui/activity/BaseActivity$4;

    invoke-direct {p2, p0}, Lcom/txdriver/ui/activity/BaseActivity$4;-><init>(Lcom/txdriver/ui/activity/BaseActivity;)V

    invoke-virtual {p1, p2}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 169
    new-instance p2, Lcom/txdriver/ui/activity/BaseActivity$5;

    invoke-direct {p2, p0}, Lcom/txdriver/ui/activity/BaseActivity$5;-><init>(Lcom/txdriver/ui/activity/BaseActivity;)V

    invoke-virtual {p1, p2}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 174
    invoke-virtual {p1, p0}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 102
    sget-object v0, Lcom/txdriver/ui/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onResume] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-boolean v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->EXECUTED_CHECK_READ_PHONE_STATE_PERMISSION:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iput-boolean v1, p0, Lcom/txdriver/ui/activity/BaseActivity;->EXECUTED_CHECK_READ_PHONE_STATE_PERMISSION:Z

    .line 105
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->checkPhonePermission()V

    goto :goto_0

    .line 106
    :cond_0
    iget-boolean v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->EXECUTED_CHECK_EXTERNAL_STORAGE_PERMISSION:Z

    if-nez v0, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iput-boolean v1, p0, Lcom/txdriver/ui/activity/BaseActivity;->EXECUTED_CHECK_EXTERNAL_STORAGE_PERMISSION:Z

    .line 108
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->checkExternalStoragePermission()V

    goto :goto_0

    .line 109
    :cond_1
    iget-boolean v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->EXECUTED_CHECK_INSTALLED_APPS:Z

    if-nez v0, :cond_2

    .line 110
    iput-boolean v1, p0, Lcom/txdriver/ui/activity/BaseActivity;->EXECUTED_CHECK_INSTALLED_APPS:Z

    .line 111
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->checkInstalledApps()V

    .line 114
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/txdriver/location/LocationManager;->addGpsDisableListener(Lcom/txdriver/location/LocationManager$GpsDisableListener;)V

    .line 116
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getActivityLifecycleObserver()Lcom/txdriver/ActivityLifecycleObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/txdriver/ActivityLifecycleObserver;->onActivityResumed(Lcom/txdriver/ui/activity/BaseActivity;)V

    .line 117
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 122
    sget-object v0, Lcom/txdriver/ui/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStart] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getActivityLifecycleObserver()Lcom/txdriver/ActivityLifecycleObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/txdriver/ActivityLifecycleObserver;->onActivityStarted(Lcom/txdriver/ui/activity/BaseActivity;)V

    .line 124
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 125
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;->bindService()V

    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 235
    sget-object v0, Lcom/txdriver/ui/activity/BaseActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStop] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getActivityLifecycleObserver()Lcom/txdriver/ActivityLifecycleObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/txdriver/ActivityLifecycleObserver;->onActivityStopped(Lcom/txdriver/ui/activity/BaseActivity;)V

    .line 237
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 238
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->mConnection:Lcom/txdriver/service/ServiceConnection;

    invoke-virtual {v0}, Lcom/txdriver/service/ServiceConnection;->unbindService()V

    return-void
.end method

.method prepareMenu(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method setBaseTheme()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;
    const/4 v0, 0x7f1101ec

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/BaseActivity;->setTheme(I)V  

    return-void
.end method

.method public showConnecting(Z)V
    .locals 1

    .line 261
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;->getConnectingSnackbar()Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    :goto_0
    return-void
.end method

.method public showPending(Z)V
    .locals 1

    const v0, 0x7f100272

    .line 307
    invoke-virtual {p0, p1, v0}, Lcom/txdriver/ui/activity/BaseActivity;->showProgressLayout(ZI)V

    return-void
.end method

.method public showProgressLayout(ZI)V
    .locals 3

    .line 311
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;->getProgressLayout()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f09023a

    .line 315
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 316
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 317
    new-instance p2, Lcom/txdriver/ui/activity/BaseActivity$9;

    invoke-direct {p2, p0, v0, p1}, Lcom/txdriver/ui/activity/BaseActivity$9;-><init>(Lcom/txdriver/ui/activity/BaseActivity;Landroid/view/View;Z)V

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x3e8

    :goto_0
    invoke-virtual {v0, p2, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
