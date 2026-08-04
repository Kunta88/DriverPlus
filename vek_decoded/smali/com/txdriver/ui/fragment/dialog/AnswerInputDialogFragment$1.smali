.class Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment$1;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "AnswerInputDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 2

    .line 26
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;->getInputEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;->access$000(Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;)Lcom/txdriver/service/MainService;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 30
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;->dismiss()V

    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;->getInputEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;

    const v1, 0x7f1000c7

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
