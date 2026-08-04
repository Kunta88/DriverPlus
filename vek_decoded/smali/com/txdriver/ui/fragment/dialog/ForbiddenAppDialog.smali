.class public Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;
.super Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;
.source "ForbiddenAppDialog.java"


# static fields
.field public static final APP_NAME_ARG:Ljava/lang/String; = "app_name_arg"

.field public static final PACKAGE_NAME_ARG:Ljava/lang/String; = "package_name_arg"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method

.method private enableLocationSettings()V
    .locals 2

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static newInstance()Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;
    .locals 1

    .line 39
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;-><init>()V

    return-object v0
.end method

.method public static show(Lcom/txdriver/ui/activity/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 29
    invoke-static {}, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;->newInstance()Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;->setCancelable(Z)V

    .line 31
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "app_name_arg"

    .line 32
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "package_name_arg"

    .line 33
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;->setArguments(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/txdriver/utils/Utils;->showDialog(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 44
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "app_name_arg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "package_name_arg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 47
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    .line 48
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 49
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog$1;

    invoke-direct {v1, p0, v0}, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog$1;-><init>(Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;Ljava/lang/String;)V

    const v0, 0x104000a

    .line 50
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
