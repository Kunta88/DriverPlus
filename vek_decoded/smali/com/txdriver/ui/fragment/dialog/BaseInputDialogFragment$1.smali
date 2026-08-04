.class Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$1;
.super Ljava/lang/Object;
.source "BaseInputDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;

.field final synthetic val$alertDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$1;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$1;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;

    invoke-virtual {v0}, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;->getPositiveButtonClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
