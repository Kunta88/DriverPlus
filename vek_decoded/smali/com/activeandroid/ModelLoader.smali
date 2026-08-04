.class public Lcom/activeandroid/ModelLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "ModelLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/activeandroid/Model;",
        ">",
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mQuery:Lcom/activeandroid/query/From;

.field private mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/activeandroid/ModelLoader;->mQuery:Lcom/activeandroid/query/From;

    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/activeandroid/ModelLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/activeandroid/ModelLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0, p1}, Lcom/activeandroid/ModelLoader;->onReleaseResources(Ljava/util/List;)V

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/activeandroid/ModelLoader;->mResults:Ljava/util/List;

    .line 61
    invoke-virtual {p0}, Lcom/activeandroid/ModelLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-super {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 71
    invoke-virtual {p0, p1}, Lcom/activeandroid/ModelLoader;->onReleaseResources(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/activeandroid/ModelLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/activeandroid/ModelLoader;->mQuery:Lcom/activeandroid/query/From;

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/activeandroid/ModelLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 96
    invoke-super {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/activeandroid/ModelLoader;->onReleaseResources(Ljava/util/List;)V

    return-void
.end method

.method protected onReleaseResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method protected onReset()V
    .locals 3

    .line 117
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onReset()V

    .line 120
    invoke-virtual {p0}, Lcom/activeandroid/ModelLoader;->onStopLoading()V

    .line 124
    iget-object v0, p0, Lcom/activeandroid/ModelLoader;->mResults:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0, v0}, Lcom/activeandroid/ModelLoader;->onReleaseResources(Ljava/util/List;)V

    .line 126
    iput-object v1, p0, Lcom/activeandroid/ModelLoader;->mResults:Ljava/util/List;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/activeandroid/ModelLoader;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/activeandroid/ModelLoader;->mQuery:Lcom/activeandroid/query/From;

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->getModelType()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/activeandroid/ModelLoader;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-static {v0, v2}, Lcom/activeandroid/Model;->unregisterDataSetObserver(Ljava/lang/Class;Landroid/database/DataSetObserver;)V

    .line 132
    iput-object v1, p0, Lcom/activeandroid/ModelLoader;->mDataSetObserver:Landroid/database/DataSetObserver;

    :cond_1
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/activeandroid/ModelLoader;->mResults:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0, v0}, Lcom/activeandroid/ModelLoader;->deliverResult(Ljava/util/List;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/activeandroid/ModelLoader;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_1

    .line 149
    new-instance v0, Lcom/activeandroid/ModelLoader$1;

    invoke-direct {v0, p0}, Lcom/activeandroid/ModelLoader$1;-><init>(Lcom/activeandroid/ModelLoader;)V

    iput-object v0, p0, Lcom/activeandroid/ModelLoader;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 175
    iget-object v0, p0, Lcom/activeandroid/ModelLoader;->mQuery:Lcom/activeandroid/query/From;

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->getModelType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/activeandroid/ModelLoader;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-static {v0, v1}, Lcom/activeandroid/Model;->registerDataSetObserver(Ljava/lang/Class;Landroid/database/DataSetObserver;)V

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/activeandroid/ModelLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/activeandroid/ModelLoader;->mResults:Ljava/util/List;

    if-nez v0, :cond_3

    .line 181
    :cond_2
    invoke-virtual {p0}, Lcom/activeandroid/ModelLoader;->forceLoad()V

    :cond_3
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 191
    invoke-virtual {p0}, Lcom/activeandroid/ModelLoader;->cancelLoad()Z

    return-void
.end method
