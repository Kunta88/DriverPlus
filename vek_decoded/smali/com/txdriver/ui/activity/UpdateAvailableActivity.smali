.class public Lcom/txdriver/ui/activity/UpdateAvailableActivity;
.super Lcom/txdriver/ui/activity/BaseDialogActivity;
.source "UpdateAvailableActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/activity/UpdateAvailableActivity$UpdateAvailableActivityRunner;,
        Lcom/txdriver/ui/activity/UpdateAvailableActivity$FinishEvent;
    }
.end annotation


# static fields
.field private static final CONFIG_EXTRA:Ljava/lang/String; = "config_extra"


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private cancelButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

.field private config:Lcom/txdriver/json/AppConfig;

.field private okButton:Landroid/widget/Button;

.field private okButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseDialogActivity;-><init>()V

    .line 27
    new-instance v0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/UpdateAvailableActivity$1;-><init>(Lcom/txdriver/ui/activity/UpdateAvailableActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->cancelButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    .line 38
    new-instance v0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$2;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/UpdateAvailableActivity$2;-><init>(Lcom/txdriver/ui/activity/UpdateAvailableActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->okButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/activity/UpdateAvailableActivity;)Lcom/txdriver/json/AppConfig;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->config:Lcom/txdriver/json/AppConfig;

    return-object p0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 74
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseDialogActivity;->finish()V

    .line 75
    iget-object v0, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/activity/UpdateAvailableActivity$FinishEvent;

    invoke-direct {v1}, Lcom/txdriver/ui/activity/UpdateAvailableActivity$FinishEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 51
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0034

    .line 52
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "config_extra"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/txdriver/json/AppConfig;

    iput-object p1, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->config:Lcom/txdriver/json/AppConfig;

    const p1, 0x7f100267

    .line 54
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f090350

    .line 55
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->cancelButton:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->cancelButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090351

    .line 57
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->okButton:Landroid/widget/Button;

    .line 58
    iget-object v0, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->okButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090352

    .line 59
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f090353

    .line 60
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    iget-object v1, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->config:Lcom/txdriver/json/AppConfig;

    iget-boolean v1, v1, Lcom/txdriver/json/AppConfig;->requireUpdate:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->config:Lcom/txdriver/json/AppConfig;

    iget-object p1, p1, Lcom/txdriver/json/AppConfig;->releaseNotes:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f090354

    .line 68
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
