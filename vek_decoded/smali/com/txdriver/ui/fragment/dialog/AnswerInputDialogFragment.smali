.class public Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;
.super Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;
.source "AnswerInputDialogFragment.java"


# static fields
.field private static final ID_ARG:Ljava/lang/String; = "id_arg"


# instance fields
.field private mAnswer:Lcom/txdriver/db/Answer;

.field private mMainService:Lcom/txdriver/service/MainService;

.field private mPositiveButtonClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;-><init>()V

    .line 22
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment$1;-><init>(Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;->mPositiveButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;)Lcom/txdriver/service/MainService;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;->mMainService:Lcom/txdriver/service/MainService;

    return-object p0
.end method

.method public static newInstance(J)Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;
    .locals 3

    .line 45
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;-><init>()V

    .line 46
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id_arg"

    .line 47
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static show(Lcom/txdriver/ui/activity/BaseActivity;J)V
    .locals 0

    .line 40
    invoke-static {p1, p2}, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;->newInstance(J)Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;

    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/txdriver/utils/Utils;->showDialog(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getPositiveButtonClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;->mPositiveButtonClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;->mAnswer:Lcom/txdriver/db/Answer;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/txdriver/db/Answer;->text:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f100033

    .line 60
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseInputDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const-class p1, Lcom/txdriver/db/Answer;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id_arg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/txdriver/db/Answer;->load(Ljava/lang/Class;J)Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/Answer;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/AnswerInputDialogFragment;->mAnswer:Lcom/txdriver/db/Answer;

    return-void
.end method
