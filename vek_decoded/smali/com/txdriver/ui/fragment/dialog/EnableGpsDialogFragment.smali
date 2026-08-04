.class public Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment;
.super Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;
.source "EnableGpsDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment;->enableLocationSettings()V

    return-void
.end method

.method private enableLocationSettings()V
    .locals 2

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static newInstance()Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment;
    .locals 1

    .line 30
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment;-><init>()V

    return-object v0
.end method

.method public static show(Lcom/txdriver/ui/activity/BaseActivity;)V
    .locals 2

    .line 24
    invoke-static {}, Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment;->newInstance()Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment;

    move-result-object v0

    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment;->setCancelable(Z)V

    .line 26
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/txdriver/utils/Utils;->showDialog(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 35
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "GPS"

    .line 36
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 37
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 38
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment$2;-><init>(Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment$1;-><init>(Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment;)V

    const/high16 v1, 0x1040000

    .line 44
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
