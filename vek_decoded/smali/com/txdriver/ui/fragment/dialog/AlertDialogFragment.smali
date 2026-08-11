.class public Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;
.super Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;
.source "AlertDialogFragment.java"


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->mMessage:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public static newInstance()Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;
    .locals 1

    .line 21
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 47
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->mTitle:Ljava/lang/String;

    .line 48
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->mMessage:Ljava/lang/String;

    .line 49
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x104000a

    .line 50
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    const/high16 v1, 0x1040000

    .line 52
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public setNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public show(Lcom/txdriver/ui/activity/BaseActivity;)V
    .locals 0

    .line 34
    invoke-virtual {p1}, Lcom/txdriver/ui/activity/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/txdriver/utils/Utils;->showDialog(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method
