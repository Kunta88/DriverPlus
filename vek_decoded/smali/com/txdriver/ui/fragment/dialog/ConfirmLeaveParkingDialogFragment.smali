.class public Lcom/txdriver/ui/fragment/dialog/ConfirmLeaveParkingDialogFragment;
.super Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;
.source "ConfirmLeaveParkingDialogFragment.java"


# instance fields
.field private mMainService:Lcom/txdriver/service/MainService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/txdriver/ui/fragment/dialog/ConfirmLeaveParkingDialogFragment;
    .locals 1

    .line 30
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/ConfirmLeaveParkingDialogFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/dialog/ConfirmLeaveParkingDialogFragment;-><init>()V

    return-object v0
.end method

.method public static show(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 25
    invoke-static {}, Lcom/txdriver/ui/fragment/dialog/ConfirmLeaveParkingDialogFragment;->newInstance()Lcom/txdriver/ui/fragment/dialog/ConfirmLeaveParkingDialogFragment;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/txdriver/utils/Utils;->showDialog(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 35
    new-instance p1, Lcom/txdriver/ui/fragment/dialog/ConfirmLeaveParkingDialogFragment$1;

    invoke-direct {p1, p0}, Lcom/txdriver/ui/fragment/dialog/ConfirmLeaveParkingDialogFragment$1;-><init>(Lcom/txdriver/ui/fragment/dialog/ConfirmLeaveParkingDialogFragment;)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f1000ff

    invoke-virtual {p0, v1}, Lcom/txdriver/ui/fragment/dialog/ConfirmLeaveParkingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ConfirmLeaveParkingDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    .line 44
    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 45
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
