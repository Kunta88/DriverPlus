.class public Lcom/txdriver/ui/fragment/dialog/NotificationDialogFragment;
.super Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;
.source "NotificationDialogFragment.java"


# static fields
.field static final MESSAGE_ARG:Ljava/lang/String; = "message_arg"

.field static final TITLE_ARG:Ljava/lang/String; = "title_arg"


# instance fields
.field mMessage:Ljava/lang/String;

.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/txdriver/ui/fragment/dialog/NotificationDialogFragment;
    .locals 3

    .line 32
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/NotificationDialogFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/dialog/NotificationDialogFragment;-><init>()V

    .line 33
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title_arg"

    .line 34
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "message_arg"

    .line 35
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/NotificationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static show(Lcom/txdriver/ui/activity/BaseActivity;Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/DialogFragment;
    .locals 0

    .line 26
    invoke-static {p1, p2}, Lcom/txdriver/ui/fragment/dialog/NotificationDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/txdriver/ui/fragment/dialog/NotificationDialogFragment;

    move-result-object p1

    .line 27
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/txdriver/utils/Utils;->showDialog(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;)V

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/NotificationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "title_arg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/NotificationDialogFragment;->mTitle:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/NotificationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message_arg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/NotificationDialogFragment;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 49
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/NotificationDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/NotificationDialogFragment;->mTitle:Ljava/lang/String;

    .line 50
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/NotificationDialogFragment;->mMessage:Ljava/lang/String;

    .line 51
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
