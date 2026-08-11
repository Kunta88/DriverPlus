.class Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$2$1;
.super Ljava/lang/Object;
.source "BaseInputDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$2;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$2;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$2;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$2;

    iget-object v0, v0, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;

    invoke-virtual {v0}, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 71
    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$2;

    iget-object v1, v1, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$2;->val$inputEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
