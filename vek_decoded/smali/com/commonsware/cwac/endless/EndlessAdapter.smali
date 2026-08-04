.class public abstract Lcom/commonsware/cwac/endless/EndlessAdapter;
.super Lcom/commonsware/cwac/adapter/AdapterWrapper;
.source "EndlessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isSerialized:Z

.field private keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private pendingResource:I

.field private pendingView:Landroid/view/View;

.field private runInBackground:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;I)V
    .locals 1

    .line 94
    invoke-direct {p0, p2}, Lcom/commonsware/cwac/adapter/AdapterWrapper;-><init>(Landroid/widget/ListAdapter;)V

    const/4 p2, 0x0

    .line 57
    iput-object p2, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    .line 58
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, -0x1

    .line 60
    iput p2, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingResource:I

    const/4 p2, 0x0

    .line 61
    iput-boolean p2, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->isSerialized:Z

    .line 62
    iput-boolean v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->runInBackground:Z

    .line 95
    iput-object p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->context:Landroid/content/Context;

    .line 96
    iput p3, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingResource:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;IZ)V
    .locals 1

    .line 111
    invoke-direct {p0, p2}, Lcom/commonsware/cwac/adapter/AdapterWrapper;-><init>(Landroid/widget/ListAdapter;)V

    const/4 p2, 0x0

    .line 57
    iput-object p2, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    .line 58
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, -0x1

    .line 60
    iput p2, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingResource:I

    const/4 p2, 0x0

    .line 61
    iput-boolean p2, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->isSerialized:Z

    .line 62
    iput-boolean v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->runInBackground:Z

    .line 112
    iput-object p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->context:Landroid/content/Context;

    .line 113
    iput p3, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingResource:I

    .line 114
    invoke-direct {p0, p4}, Lcom/commonsware/cwac/endless/EndlessAdapter;->setKeepOnAppending(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/adapter/AdapterWrapper;-><init>(Landroid/widget/ListAdapter;)V

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    .line 58
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, -0x1

    .line 60
    iput p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingResource:I

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->isSerialized:Z

    .line 62
    iput-boolean v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->runInBackground:Z

    return-void
.end method

.method public constructor <init>(Landroid/widget/ListAdapter;Z)V
    .locals 1

    .line 80
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/adapter/AdapterWrapper;-><init>(Landroid/widget/ListAdapter;)V

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    .line 58
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, -0x1

    .line 60
    iput p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingResource:I

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->isSerialized:Z

    .line 62
    iput-boolean v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->runInBackground:Z

    .line 81
    invoke-direct {p0, p2}, Lcom/commonsware/cwac/endless/EndlessAdapter;->setKeepOnAppending(Z)V

    return-void
.end method

.method static synthetic access$0(Lcom/commonsware/cwac/endless/EndlessAdapter;Z)V
    .locals 0

    .line 299
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/endless/EndlessAdapter;->setKeepOnAppending(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/commonsware/cwac/endless/EndlessAdapter;)Landroid/view/View;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    return-object p0
.end method

.method private varargs executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask<",
            "TT;**>;[TT;)V"
        }
    .end annotation

    .line 290
    iget-boolean v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->isSerialized:Z

    if-nez v0, :cond_0

    .line 291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 292
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method private setKeepOnAppending(Z)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 302
    :goto_0
    iget-object v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez v0, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract appendCachedData()V
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected buildTask()Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;
    .locals 1

    .line 284
    new-instance v0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;

    invoke-direct {v0, p0}, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;-><init>(Lcom/commonsware/cwac/endless/EndlessAdapter;)V

    return-object v0
.end method

.method protected abstract cacheInBackground()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-super {p0}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 176
    :cond_0
    invoke-super {p0}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 203
    invoke-super {p0}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 207
    :cond_0
    invoke-super {p0, p1}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 188
    :cond_0
    invoke-super {p0, p1}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method protected getPendingView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "layout_inflater"

    .line 366
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 367
    iget v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingResource:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 370
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "You must either override getPendingView() or supply a pending View resource via the constructor"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 241
    invoke-super {p0}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    iget-object p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    if-nez p1, :cond_1

    .line 243
    invoke-virtual {p0, p3}, Lcom/commonsware/cwac/endless/EndlessAdapter;->getPendingView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    .line 245
    iget-boolean p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->runInBackground:Z

    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->buildTask()Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-direct {p0, p1, p2}, Lcom/commonsware/cwac/endless/EndlessAdapter;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0

    .line 250
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->cacheInBackground()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/commonsware/cwac/endless/EndlessAdapter;->setKeepOnAppending(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 253
    iget-object p2, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/commonsware/cwac/endless/EndlessAdapter;->onException(Landroid/view/View;Ljava/lang/Exception;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/commonsware/cwac/endless/EndlessAdapter;->setKeepOnAppending(Z)V

    .line 258
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    return-object p1

    .line 261
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 198
    invoke-super {p0}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 217
    invoke-super {p0}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 221
    :cond_0
    invoke-super {p0, p1}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public isSerialized()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->isSerialized:Z

    return v0
.end method

.method public onDataReady()V
    .locals 1

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    .line 162
    invoke-virtual {p0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onException(Landroid/view/View;Ljava/lang/Exception;)Z
    .locals 1

    const-string p1, "EndlessAdapter"

    const-string v0, "Exception in cacheInBackground()"

    .line 278
    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method

.method public restartAppending()V
    .locals 1

    const/4 v0, 0x1

    .line 130
    invoke-direct {p0, v0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->setKeepOnAppending(Z)V

    return-void
.end method

.method public setRunInBackground(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->runInBackground:Z

    return-void
.end method

.method public setSerialized(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->isSerialized:Z

    return-void
.end method

.method public stopAppending()V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, v0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->setKeepOnAppending(Z)V

    return-void
.end method
