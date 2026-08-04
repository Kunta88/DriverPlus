.class public Lcom/txdriver/ui/activity/InboundMessageActivity;
.super Lcom/txdriver/ui/activity/BaseDialogActivity;
.source "InboundMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/activity/InboundMessageActivity$MessageActivityRunner;,
        Lcom/txdriver/ui/activity/InboundMessageActivity$FinishEvent;
    }
.end annotation


# static fields
.field public static final MESSAGE_EXTRA:Ljava/lang/String; = "message_extra"


# instance fields
.field private chatButton:Landroid/widget/Button;

.field private chatButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

.field private message:Ljava/lang/String;

.field private messageTextView:Landroid/widget/TextView;

.field private okButton:Landroid/widget/Button;

.field private okButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

.field private replyButton:Landroid/widget/Button;

.field private replyButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseDialogActivity;-><init>()V

    .line 26
    new-instance v0, Lcom/txdriver/ui/activity/InboundMessageActivity$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/InboundMessageActivity$1;-><init>(Lcom/txdriver/ui/activity/InboundMessageActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/InboundMessageActivity;->replyButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    .line 33
    new-instance v0, Lcom/txdriver/ui/activity/InboundMessageActivity$2;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/InboundMessageActivity$2;-><init>(Lcom/txdriver/ui/activity/InboundMessageActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/InboundMessageActivity;->chatButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    .line 41
    new-instance v0, Lcom/txdriver/ui/activity/InboundMessageActivity$3;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/InboundMessageActivity$3;-><init>(Lcom/txdriver/ui/activity/InboundMessageActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/InboundMessageActivity;->okButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/activity/InboundMessageActivity;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/txdriver/ui/activity/InboundMessageActivity;->message:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0022

    .line 53
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/InboundMessageActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/InboundMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "message_extra"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/activity/InboundMessageActivity;->message:Ljava/lang/String;

    const p1, 0x7f090188

    .line 55
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/InboundMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/txdriver/ui/activity/InboundMessageActivity;->replyButton:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/txdriver/ui/activity/InboundMessageActivity;->replyButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090186

    .line 57
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/InboundMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/txdriver/ui/activity/InboundMessageActivity;->chatButton:Landroid/widget/Button;

    .line 58
    iget-object v0, p0, Lcom/txdriver/ui/activity/InboundMessageActivity;->chatButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090187

    .line 59
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/InboundMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/txdriver/ui/activity/InboundMessageActivity;->okButton:Landroid/widget/Button;

    .line 60
    iget-object v0, p0, Lcom/txdriver/ui/activity/InboundMessageActivity;->okButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090189

    .line 61
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/InboundMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/InboundMessageActivity;->messageTextView:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/txdriver/ui/activity/InboundMessageActivity;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onEventMainThread(Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment$DismissEvent;)V
    .locals 4

    .line 66
    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment$DismissEvent;->getId()J

    move-result-wide v0

    iget-object p1, p0, Lcom/txdriver/ui/activity/InboundMessageActivity;->message:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/InboundMessageActivity;->finish()V

    return-void
.end method
