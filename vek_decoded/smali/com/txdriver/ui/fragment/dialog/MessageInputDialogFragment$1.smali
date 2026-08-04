.class Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment$1;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "MessageInputDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 3

    .line 27
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;->getInputEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 29
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    new-instance v0, Lcom/txdriver/socket/packet/MessagePacket;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;

    invoke-static {v1}, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;->access$000(Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;)Lcom/txdriver/db/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;

    invoke-static {v1}, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;->access$000(Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;)Lcom/txdriver/db/Message;

    move-result-object v1

    iget v1, v1, Lcom/txdriver/db/Message;->messageId:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;

    .line 30
    invoke-virtual {v2}, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;->getInputEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/txdriver/socket/packet/MessagePacket;-><init>(ILjava/lang/String;)V

    .line 29
    invoke-virtual {p1, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    .line 31
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;->dismiss()V

    goto :goto_1

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;->getInputEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;

    const v1, 0x7f1000c7

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
