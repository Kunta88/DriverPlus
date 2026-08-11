.class public Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;
.super Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;
.source "UpdateDialogFragment.java"


# static fields
.field private static final UPDATE_ARG:Ljava/lang/String; = "update_args"


# instance fields
.field private config:Lcom/txdriver/json/AppConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;)Lcom/txdriver/json/AppConfig;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;->config:Lcom/txdriver/json/AppConfig;

    return-object p0
.end method

.method private getContentView()Landroid/view/View;
    .locals 5

    .line 77
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090352

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090353

    .line 79
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 80
    iget-object v3, p0, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;->config:Lcom/txdriver/json/AppConfig;

    iget-boolean v3, v3, Lcom/txdriver/json/AppConfig;->requireUpdate:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 81
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;->config:Lcom/txdriver/json/AppConfig;

    iget-object v1, v1, Lcom/txdriver/json/AppConfig;->releaseNotes:Ljava/lang/String;

    .line 84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 85
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f090354

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object v0
.end method

.method public static newInstance(Lcom/txdriver/json/AppConfig;)Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;
    .locals 3

    .line 38
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;-><init>()V

    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "update_args"

    .line 40
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static show(Lcom/txdriver/ui/activity/BaseActivity;Lcom/txdriver/json/AppConfig;)V
    .locals 1

    .line 32
    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;->newInstance(Lcom/txdriver/json/AppConfig;)Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;

    move-result-object p1

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;->setCancelable(Z)V

    .line 34
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/txdriver/utils/Utils;->showDialog(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "update_args"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/txdriver/json/AppConfig;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;->config:Lcom/txdriver/json/AppConfig;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 53
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f100267

    .line 54
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 55
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100266

    .line 56
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment$2;-><init>(Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment$1;-><init>(Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;)V

    const/high16 v1, 0x1040000

    .line 63
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
