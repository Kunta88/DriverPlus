.class Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$2;
.super Ljava/lang/Object;
.source "BaseInputDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;->setupInputEditText(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;

.field final synthetic val$inputEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$2;->val$inputEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$2;->val$inputEditText:Landroid/widget/EditText;

    new-instance p2, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$2$1;

    invoke-direct {p2, p0}, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$2$1;-><init>(Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$2;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
