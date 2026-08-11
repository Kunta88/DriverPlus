.class public Lcom/txdriver/ui/activity/InboundQuestionActivity;
.super Lcom/txdriver/ui/activity/BaseDialogActivity;
.source "InboundQuestionActivity.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/activity/InboundQuestionActivity$QuestionActivityRunner;,
        Lcom/txdriver/ui/activity/InboundQuestionActivity$FinishEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/ui/activity/BaseDialogActivity;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/txdriver/db/Answer;",
        ">;>;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final ID_EXTRA:Ljava/lang/String; = "id_extra"


# instance fields
.field private answerModelAdapter:Lcom/activeandroid/widget/ModelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/activeandroid/widget/ModelAdapter<",
            "Lcom/txdriver/db/Answer;",
            ">;"
        }
    .end annotation
.end field

.field private answersListView:Landroid/widget/ListView;

.field private question:Lcom/txdriver/db/Question;

.field private questionId:J

.field private questionTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseDialogActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 61
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseDialogActivity;->finish()V

    .line 62
    iget-object v0, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/activity/InboundQuestionActivity$FinishEvent;

    iget-wide v2, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity;->questionId:J

    invoke-direct {v1, v2, v3}, Lcom/txdriver/ui/activity/InboundQuestionActivity$FinishEvent;-><init>(J)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 41
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/InboundQuestionActivity;->supportRequestWindowFeature(I)Z

    const p1, 0x7f0c0023

    .line 43
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/InboundQuestionActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/InboundQuestionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "id_extra"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity;->questionId:J

    .line 45
    const-class p1, Lcom/txdriver/db/Question;

    invoke-static {p1, v0, v1}, Lcom/txdriver/db/Question;->load(Ljava/lang/Class;J)Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/Question;

    iput-object p1, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity;->question:Lcom/txdriver/db/Question;

    if-nez p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/InboundQuestionActivity;->finish()V

    return-void

    .line 50
    :cond_0
    new-instance p1, Lcom/activeandroid/widget/ModelAdapter;

    const v0, 0x1090003

    invoke-direct {p1, p0, v0}, Lcom/activeandroid/widget/ModelAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity;->answerModelAdapter:Lcom/activeandroid/widget/ModelAdapter;

    const p1, 0x7f09023d

    .line 51
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/InboundQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity;->answersListView:Landroid/widget/ListView;

    .line 52
    iget-object v0, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity;->answerModelAdapter:Lcom/activeandroid/widget/ModelAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    iget-object p1, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity;->answersListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f09023e

    .line 54
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/InboundQuestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity;->questionTextView:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity;->question:Lcom/txdriver/db/Question;

    iget-object v0, v0, Lcom/txdriver/db/Question;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/InboundQuestionActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 3
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

    .line 67
    new-instance p1, Lcom/activeandroid/ModelLoader;

    new-instance p2, Lcom/activeandroid/query/Select;

    invoke-direct {p2}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v0, Lcom/txdriver/db/Answer;

    .line 68
    invoke-virtual {p2, v0}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity;->question:Lcom/txdriver/db/Question;

    invoke-virtual {v1}, Lcom/txdriver/db/Question;->getId()Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Question = ?"

    invoke-virtual {p2, v1, v0}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/activeandroid/ModelLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 85
    iget-object p1, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity;->answerModelAdapter:Lcom/activeandroid/widget/ModelAdapter;

    invoke-virtual {p1, p3}, Lcom/activeandroid/widget/ModelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/Answer;

    if-eqz p1, :cond_0

    .line 87
    iget-object p2, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p2}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p2

    new-instance p3, Lcom/txdriver/socket/packet/AnswerPacket;

    iget-object p4, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity;->question:Lcom/txdriver/db/Question;

    invoke-direct {p3, p4, p1}, Lcom/txdriver/socket/packet/AnswerPacket;-><init>(Lcom/txdriver/db/Question;Lcom/txdriver/db/Answer;)V

    invoke-virtual {p2, p3}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/InboundQuestionActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/activity/InboundQuestionActivity;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

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

    .line 74
    iget-object p1, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity;->answerModelAdapter:Lcom/activeandroid/widget/ModelAdapter;

    invoke-virtual {p1, p2}, Lcom/activeandroid/widget/ModelAdapter;->setData(Ljava/util/List;)V

    .line 75
    iget-object p1, p0, Lcom/txdriver/ui/activity/InboundQuestionActivity;->answerModelAdapter:Lcom/activeandroid/widget/ModelAdapter;

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
