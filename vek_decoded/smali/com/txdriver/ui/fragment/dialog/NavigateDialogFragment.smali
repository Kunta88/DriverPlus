.class public Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;
.super Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;
.source "NavigateDialogFragment.java"


# static fields
.field private static final ID_ARG:Ljava/lang/String; = "id_arg"


# instance fields
.field private mAddress:Lcom/txdriver/db/Address;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;)Lcom/txdriver/db/Address;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;->mAddress:Lcom/txdriver/db/Address;

    return-object p0
.end method

.method public static newInstance(J)Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;
    .locals 3

    .line 28
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;-><init>()V

    .line 29
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id_arg"

    .line 30
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 31
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static show(Landroidx/fragment/app/FragmentActivity;J)V
    .locals 0

    .line 23
    invoke-static {p1, p2}, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;->newInstance(J)Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;

    move-result-object p1

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/txdriver/utils/Utils;->showDialog(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 37
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const-class p1, Lcom/txdriver/db/Address;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id_arg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/txdriver/db/Address;->load(Ljava/lang/Class;J)Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/Address;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;->mAddress:Lcom/txdriver/db/Address;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 43
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f100096

    .line 44
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;->mAddress:Lcom/txdriver/db/Address;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/txdriver/db/Address;->address:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 45
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    new-instance v1, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment$1;-><init>(Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;)V

    .line 46
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
