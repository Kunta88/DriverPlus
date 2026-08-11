.class public Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;
.super Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;
.source "QuestionDialogFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/txdriver/db/Answer;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ID_ARG:Ljava/lang/String; = "id_arg"


# instance fields
.field private mAnswerModelAdapter:Lcom/activeandroid/widget/ModelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/activeandroid/widget/ModelAdapter<",
            "Lcom/txdriver/db/Answer;",
            ">;"
        }
    .end annotation
.end field

.field private mMainService:Lcom/txdriver/service/MainService;

.field private mQuestion:Lcom/txdriver/db/Question;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;)Lcom/activeandroid/widget/ModelAdapter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;->mAnswerModelAdapter:Lcom/activeandroid/widget/ModelAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;)Lcom/txdriver/db/Question;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;->mQuestion:Lcom/txdriver/db/Question;

    return-object p0
.end method

.method public static newInstance(J)Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;
    .locals 3

    .line 44
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;-><init>()V

    .line 45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id_arg"

    .line 46
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 47
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static show(Lcom/txdriver/ui/activity/BaseActivity;J)Landroidx/fragment/app/DialogFragment;
    .locals 0

    .line 38
    invoke-static {p1, p2}, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;->newInstance(J)Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;

    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/txdriver/utils/Utils;->showDialog(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;)V

    return-object p1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 76
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const-class p1, Lcom/txdriver/db/Question;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id_arg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/txdriver/db/Question;->load(Ljava/lang/Class;J)Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/Question;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;->mQuestion:Lcom/txdriver/db/Question;

    .line 55
    new-instance p1, Lcom/activeandroid/widget/ModelAdapter;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x1090003

    invoke-direct {p1, v0, v1}, Lcom/activeandroid/widget/ModelAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;->mAnswerModelAdapter:Lcom/activeandroid/widget/ModelAdapter;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 60
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;->mQuestion:Lcom/txdriver/db/Question;

    iget-object v0, v0, Lcom/txdriver/db/Question;->text:Ljava/lang/String;

    .line 61
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;->mAnswerModelAdapter:Lcom/activeandroid/widget/ModelAdapter;

    new-instance v1, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment$1;-><init>(Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;)V

    .line 62
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Answer;",
            ">;>;"
        }
    .end annotation

    .line 82
    new-instance p1, Lcom/activeandroid/ModelLoader;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Answer;

    .line 84
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;->mQuestion:Lcom/txdriver/db/Question;

    .line 85
    invoke-virtual {v2}, Lcom/txdriver/db/Question;->getId()Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Question = ?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/activeandroid/ModelLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Answer;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Answer;",
            ">;)V"
        }
    .end annotation

    .line 91
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;->mAnswerModelAdapter:Lcom/activeandroid/widget/ModelAdapter;

    invoke-virtual {p1, p2}, Lcom/activeandroid/widget/ModelAdapter;->setData(Ljava/util/List;)V

    .line 92
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/QuestionDialogFragment;->mAnswerModelAdapter:Lcom/activeandroid/widget/ModelAdapter;

    invoke-virtual {p1}, Lcom/activeandroid/widget/ModelAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Answer;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
