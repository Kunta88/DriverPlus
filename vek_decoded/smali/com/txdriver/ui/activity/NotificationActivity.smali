.class public Lcom/txdriver/ui/activity/NotificationActivity;
.super Lcom/txdriver/ui/activity/BaseDialogActivity;
.source "NotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;,
        Lcom/txdriver/ui/activity/NotificationActivity$FinishEvent;
    }
.end annotation


# static fields
.field public static final MESSAGE_EXTRA:Ljava/lang/String; = "message_extra"

.field public static final TITLE_EXTRA:Ljava/lang/String; = "title_extra"


# instance fields
.field private message:Ljava/lang/String;

.field private okButton:Landroid/widget/Button;

.field private okButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

.field private textView:Landroid/widget/TextView;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseDialogActivity;-><init>()V

    .line 28
    new-instance v0, Lcom/txdriver/ui/activity/NotificationActivity$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/NotificationActivity$1;-><init>(Lcom/txdriver/ui/activity/NotificationActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/NotificationActivity;->okButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 50
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseDialogActivity;->finish()V

    .line 51
    iget-object v0, p0, Lcom/txdriver/ui/activity/NotificationActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/activity/NotificationActivity$FinishEvent;

    iget-object v2, p0, Lcom/txdriver/ui/activity/NotificationActivity;->message:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/txdriver/ui/activity/NotificationActivity$FinishEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0026

    .line 38
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/NotificationActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/NotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "title_extra"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/activity/NotificationActivity;->title:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/NotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "message_extra"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/activity/NotificationActivity;->message:Ljava/lang/String;

    const p1, 0x7f0901bb

    .line 41
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/NotificationActivity;->textView:Landroid/widget/TextView;

    const p1, 0x7f0901b8

    .line 42
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/txdriver/ui/activity/NotificationActivity;->okButton:Landroid/widget/Button;

    .line 43
    iget-object v0, p0, Lcom/txdriver/ui/activity/NotificationActivity;->okButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object p1, p0, Lcom/txdriver/ui/activity/NotificationActivity;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/NotificationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p0, Lcom/txdriver/ui/activity/NotificationActivity;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/txdriver/ui/activity/NotificationActivity;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
