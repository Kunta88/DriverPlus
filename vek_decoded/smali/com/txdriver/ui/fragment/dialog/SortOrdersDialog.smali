.class public Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog;
.super Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;
.source "SortOrdersDialog.java"


# static fields
.field private static final TAB_ID_ARG:Ljava/lang/String; = "tab_id_arg"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog;
    .locals 3

    .line 32
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog;-><init>()V

    .line 33
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "tab_id_arg"

    .line 34
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;I)Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog;
    .locals 0

    .line 26
    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog;->newInstance(I)Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog;

    move-result-object p1

    .line 27
    invoke-static {p1, p0}, Lcom/txdriver/utils/Utils;->showDialog(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;)V

    return-object p1
.end method


# virtual methods
.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog;->onCreateDialog(Landroid/os/Bundle;)Landroidx/appcompat/app/AppCompatDialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroidx/appcompat/app/AppCompatDialog;
    .locals 4

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/CharSequence;

    const v0, 0x7f100225

    .line 42
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const v0, 0x7f100224

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 43
    new-instance v0, Lcom/txdriver/filter/FilterPreferences;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog;->app:Lcom/txdriver/App;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "tab_id_arg"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/txdriver/filter/FilterPreferences;-><init>(Lcom/txdriver/App;I)V

    .line 44
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f100196

    .line 45
    invoke-virtual {p0, v2}, Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 46
    invoke-virtual {v0}, Lcom/txdriver/filter/FilterPreferences;->getSort()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog$1;

    invoke-direct {v1, p0, v0}, Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog$1;-><init>(Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog;Lcom/txdriver/filter/FilterPreferences;)V

    const v0, 0x104000a

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
