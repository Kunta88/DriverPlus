.class public Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;
.super Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;
.source "ConfirmOrderStateDialogFragment.java"


# static fields
.field private static final ORDER_ID_ARG:Ljava/lang/String; = "order_id_arg"

.field private static final STATE_ARG:Ljava/lang/String; = "state_arg"

.field private static final TITLE_ARG:Ljava/lang/String; = "title_arg"


# instance fields
.field private mMainService:Lcom/txdriver/service/MainService;

.field private mOrderId:I

.field private mState:B

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;->mOrderId:I

    return p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;)B
    .locals 0

    .line 17
    iget-byte p0, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;->mState:B

    return p0
.end method

.method public static newInstance(IBLjava/lang/String;)Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;
    .locals 3

    .line 33
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;-><init>()V

    .line 34
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "order_id_arg"

    .line 35
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "state_arg"

    .line 36
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string p0, "title_arg"

    .line 37
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static show(Lcom/txdriver/ui/activity/BaseActivity;IBLjava/lang/String;)Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;
    .locals 0

    .line 27
    invoke-static {p1, p2, p3}, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;->newInstance(IBLjava/lang/String;)Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;

    move-result-object p1

    .line 28
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/txdriver/utils/Utils;->showDialog(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;)V

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "order_id_arg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;->mOrderId:I

    .line 46
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "state_arg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result p1

    iput-byte p1, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;->mState:B

    .line 47
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "title_arg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 52
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;->mTitle:Ljava/lang/String;

    .line 53
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100038

    .line 54
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment$1;-><init>(Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;)V

    const v1, 0x1040013

    .line 55
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x1040009

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
