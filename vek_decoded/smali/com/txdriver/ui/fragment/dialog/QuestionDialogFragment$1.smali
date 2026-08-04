.class Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment$1;
.super Ljava/lang/Object;
.source "QuestionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 65
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;->access$000(Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;)Lcom/activeandroid/widget/ModelAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/activeandroid/widget/ModelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/Answer;

    if-eqz p1, :cond_0

    .line 67
    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;

    iget-object p2, p2, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p2}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p2

    new-instance v0, Lcom/txdriver/socket/packet/AnswerPacket;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;

    invoke-static {v1}, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;->access$100(Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;)Lcom/txdriver/db/Question;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/txdriver/socket/packet/AnswerPacket;-><init>(Lcom/txdriver/db/Question;Lcom/txdriver/db/Answer;)V

    invoke-virtual {p2, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    :cond_0
    return-void
.end method
