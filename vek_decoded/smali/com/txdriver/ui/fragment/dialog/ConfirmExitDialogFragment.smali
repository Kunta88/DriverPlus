.class public Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment;
.super Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;
.source "ConfirmExitDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/txdriver/ui/activity/BaseActivity;)V
    .locals 1

    .line 23
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment;-><init>()V

    .line 24
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/txdriver/utils/Utils;->showDialog(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 30
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1000ce

    .line 31
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1000cf

    .line 32
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment$1;-><init>(Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment;Landroid/app/Activity;)V

    const p1, 0x104000a

    .line 33
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
