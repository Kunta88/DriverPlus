.class public abstract Lru/yandex/core/KDActivity;
.super Landroid/app/Activity;


# instance fields
.field private isMenuKeyPressed:Z

.field private isMenuKeyReleased:Z

.field isPaused:Z

.field isStarted:Z

.field public window:Lru/yandex/core/KDView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/core/KDActivity;->isPaused:Z

    iput-boolean v0, p0, Lru/yandex/core/KDActivity;->isStarted:Z

    iput-boolean v0, p0, Lru/yandex/core/KDActivity;->isMenuKeyPressed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/core/KDActivity;->isMenuKeyReleased:Z

    return-void
.end method

.method private stopJobIfNeed()V
    .locals 1

    iget-boolean v0, p0, Lru/yandex/core/KDActivity;->isStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/core/KDActivity;->isStarted:Z

    invoke-virtual {p0}, Lru/yandex/core/KDActivity;->getJobID()I

    move-result v0

    invoke-static {v0}, Lru/yandex/core/CoreApplication;->stopJob(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract createKDWindow(Landroid/app/Application;)Lru/yandex/core/KDView;
.end method

.method protected abstract getJobID()I
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lru/yandex/core/CoreApplication;->sendEvent([I)V

    return-void

    :array_0
    .array-data 4
        0x38
        0xa001
        0x1
    .end array-data
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lru/yandex/core/KDActivity;->window:Lru/yandex/core/KDView;

    new-instance v0, Lru/yandex/i;

    invoke-direct {v0, p0}, Lru/yandex/i;-><init>(Lru/yandex/core/KDActivity;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Lru/yandex/core/KDView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lru/yandex/core/KDActivity;->getJobID()I

    move-result p1

    invoke-static {p1}, Lru/yandex/core/CoreApplication;->forceStopJob(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lru/yandex/core/KDActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/core/KDActivity;->isMenuKeyPressed:Z

    iput-boolean p1, p0, Lru/yandex/core/KDActivity;->isMenuKeyReleased:Z

    invoke-virtual {p0}, Lru/yandex/core/KDActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/yandex/core/KDActivity;->createKDWindow(Landroid/app/Application;)Lru/yandex/core/KDView;

    move-result-object p1

    iput-object p1, p0, Lru/yandex/core/KDActivity;->window:Lru/yandex/core/KDView;

    invoke-static {p0, p1}, Lru/yandex/core/CoreApplication;->setCurrent(Lru/yandex/core/KDActivity;Lru/yandex/core/KDView;)V

    iget-object p1, p0, Lru/yandex/core/KDActivity;->window:Lru/yandex/core/KDView;

    invoke-virtual {p0, p1}, Lru/yandex/core/KDActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-direct {p0}, Lru/yandex/core/KDActivity;->stopJobIfNeed()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lru/yandex/core/KDActivity;->isMenuKeyReleased:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lru/yandex/core/KDActivity;->isMenuKeyReleased:Z

    iput-boolean v0, p0, Lru/yandex/core/KDActivity;->isMenuKeyPressed:Z

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    sget v1, Lru/yandex/core/CoreApplication;->SDK_INT:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lru/yandex/core/KDActivity;->onBackPressed()V

    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/core/KDActivity;->isMenuKeyReleased:Z

    iget-boolean v1, p0, Lru/yandex/core/KDActivity;->isMenuKeyPressed:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lru/yandex/core/KDActivity;->isMenuKeyPressed:Z

    iget-object p2, p0, Lru/yandex/core/KDActivity;->window:Lru/yandex/core/KDView;

    invoke-virtual {p2, p1}, Lru/yandex/core/KDView;->performHapticFeedback(I)Z

    const/4 p1, 0x3

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    invoke-static {p1}, Lru/yandex/core/CoreApplication;->sendEvent([I)V

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :array_0
    .array-data 4
        0x38
        0xa003
        0x1
    .end array-data
.end method

.method public onLowMemory()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x68

    aput v2, v0, v1

    invoke-static {v0}, Lru/yandex/core/CoreApplication;->sendEvent([I)V

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/core/KDActivity;->isPaused:Z

    invoke-static {p0}, Lru/yandex/core/CoreApplication;->onActivityPause(Landroid/app/Activity;)V

    iget-object v0, p0, Lru/yandex/core/KDActivity;->window:Lru/yandex/core/KDView;

    invoke-virtual {v0}, Lru/yandex/core/KDView;->getSurfaceView()Lru/yandex/core/KDSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/core/KDSurfaceView;->onPause()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    iget-object v0, p0, Lru/yandex/core/KDActivity;->window:Lru/yandex/core/KDView;

    invoke-static {p0, v0}, Lru/yandex/core/CoreApplication;->setCurrent(Lru/yandex/core/KDActivity;Lru/yandex/core/KDView;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/core/KDActivity;->isPaused:Z

    iget-object v0, p0, Lru/yandex/core/KDActivity;->window:Lru/yandex/core/KDView;

    invoke-virtual {v0}, Lru/yandex/core/KDView;->getSurfaceView()Lru/yandex/core/KDSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/core/KDSurfaceView;->onResume()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lru/yandex/core/CoreApplication;->onActivityResume(Landroid/app/Activity;)V

    invoke-static {}, Lru/yandex/core/CoreApplication;->getCoreApplicationParams()Lru/yandex/core/CoreApplicationParams;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/core/CoreApplicationParams;->getAppBetaName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lru/yandex/core/CoreApplication;->getAppBuildIdBranch()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lru/yandex/core/CoreApplication;->getAppBuildIdVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "master"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "release"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez v2, :cond_0

    new-instance v0, Lru/yandex/a;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lru/yandex/core/CoreApplication;->getAppBuildIdBranch()Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-direct {v0}, Lru/yandex/a;-><init>()V

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/core/KDActivity;->isMenuKeyPressed:Z

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Lru/yandex/core/CoreApplication;->sendEvent([I)V

    return v0

    nop

    :array_0
    .array-data 4
        0x38
        0xa002
        0x1
    .end array-data
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lru/yandex/core/KDActivity;->window:Lru/yandex/core/KDView;

    invoke-static {p0, v0}, Lru/yandex/core/CoreApplication;->setCurrent(Lru/yandex/core/KDActivity;Lru/yandex/core/KDView;)V

    invoke-static {p0}, Lru/yandex/core/CoreApplication;->onActivityStart(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {p0}, Lru/yandex/core/CoreApplication;->onActivityStop(Landroid/app/Activity;)V

    return-void
.end method

.method public onStopRequired()V
    .locals 0

    invoke-static {p0}, Lru/yandex/core/CoreApplication;->onActivityPause(Landroid/app/Activity;)V

    invoke-direct {p0}, Lru/yandex/core/KDActivity;->stopJobIfNeed()V

    invoke-virtual {p0}, Lru/yandex/core/KDActivity;->finish()V

    return-void
.end method

.method startJob()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/core/KDActivity;->isStarted:Z

    invoke-virtual {p0}, Lru/yandex/core/KDActivity;->getJobID()I

    move-result v0

    invoke-static {v0, p0}, Lru/yandex/core/CoreApplication;->startJob(ILru/yandex/core/KDActivity;)V

    return-void
.end method
