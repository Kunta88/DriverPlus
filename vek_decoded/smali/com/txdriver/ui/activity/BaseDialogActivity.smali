.class public Lcom/txdriver/ui/activity/BaseDialogActivity;
.super Lcom/txdriver/ui/activity/BaseActivity;
.source "BaseDialogActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-static {}, Lcom/txdriver/utils/Utils;->hasHoneycomb()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/BaseDialogActivity;->setFinishOnTouchOutside(Z)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 52
    :cond_0
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method setBaseTheme()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseDialogActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getCurrentTheme()I

    move-result v0

    const v1, 0x7f1101ec

    if-eq v0, v1, :cond_1

    const v1, 0x7f1101ef

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f1101ee

    .line 27
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/BaseDialogActivity;->setTheme(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f1101ed

    .line 30
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/BaseDialogActivity;->setTheme(I)V

    :goto_0
    return-void
.end method

.method public showConnecting(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseDialogActivity;->finish()V

    :cond_0
    return-void
.end method
