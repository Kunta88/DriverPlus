.class public Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;
.super Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;
.source "MessageInputDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment$DismissEvent;
    }
.end annotation


# static fields
.field private static final ID_ARG:Ljava/lang/String; = "id_arg"


# instance fields
.field private id:J

.field private mMessage:Lcom/txdriver/db/Message;

.field private mPositiveButtonClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;-><init>()V

    .line 24
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment$1;-><init>(Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;->mPositiveButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;)Lcom/txdriver/db/Message;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;->mMessage:Lcom/txdriver/db/Message;

    return-object p0
.end method

.method public static newInstance(J)Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;
    .locals 3

    .line 44
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;-><init>()V

    .line 45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id_arg"

    .line 46
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 47
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static show(Landroidx/fragment/app/FragmentActivity;J)V
    .locals 0

    .line 39
    invoke-static {p1, p2}, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;->newInstance(J)Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;

    move-result-object p1

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/txdriver/utils/Utils;->showDialog(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getPositiveButtonClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;->mPositiveButtonClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;->mMessage:Lcom/txdriver/db/Message;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/txdriver/db/Message;->text:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f100130

    .line 60
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "id_arg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;->id:J

    .line 55
    const-class p1, Lcom/txdriver/db/Message;

    invoke-static {p1, v0, v1}, Lcom/txdriver/db/Message;->load(Ljava/lang/Class;J)Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/Message;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;->mMessage:Lcom/txdriver/db/Message;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 75
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 76
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance v0, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment$DismissEvent;

    iget-wide v1, p0, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;->id:J

    invoke-direct {v0, v1, v2}, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment$DismissEvent;-><init>(J)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
