.class public Lcom/txdriver/ui/loader/DriversLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "DriversLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "Lcom/txdriver/db/Parking$Info;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/txdriver/db/Parking$Info;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/loader/DriversLoader;->deliverResult(Ljava/util/Map;)V

    return-void
.end method

.method public deliverResult(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/txdriver/db/Parking$Info;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/txdriver/ui/loader/DriversLoader;->mResults:Ljava/util/Map;

    .line 45
    invoke-virtual {p0}, Lcom/txdriver/ui/loader/DriversLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-super {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/txdriver/ui/loader/DriversLoader;->loadInBackground()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/txdriver/db/Parking$Info;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    invoke-static {}, Lcom/txdriver/db/Parking;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/db/Parking;

    .line 37
    iget v3, v2, Lcom/txdriver/db/Parking;->parkingId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/txdriver/db/Parking$Info;

    invoke-virtual {p0}, Lcom/txdriver/ui/loader/DriversLoader;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Lcom/txdriver/db/Parking;->drivers()Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lcom/txdriver/db/Parking$Info;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected onReset()V
    .locals 3

    .line 55
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onReset()V

    .line 58
    invoke-virtual {p0}, Lcom/txdriver/ui/loader/DriversLoader;->onStopLoading()V

    .line 62
    iget-object v0, p0, Lcom/txdriver/ui/loader/DriversLoader;->mResults:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 64
    iput-object v1, p0, Lcom/txdriver/ui/loader/DriversLoader;->mResults:Ljava/util/Map;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/loader/DriversLoader;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_1

    .line 69
    const-class v2, Lcom/txdriver/db/DriverParking;

    invoke-static {v2, v0}, Lcom/activeandroid/Model;->unregisterDataSetObserver(Ljava/lang/Class;Landroid/database/DataSetObserver;)V

    .line 70
    iput-object v1, p0, Lcom/txdriver/ui/loader/DriversLoader;->mDataSetObserver:Landroid/database/DataSetObserver;

    :cond_1
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/txdriver/ui/loader/DriversLoader;->mResults:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/loader/DriversLoader;->deliverResult(Ljava/util/Map;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/loader/DriversLoader;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_1

    .line 87
    new-instance v0, Lcom/txdriver/ui/loader/DriversLoader$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/loader/DriversLoader$1;-><init>(Lcom/txdriver/ui/loader/DriversLoader;)V

    iput-object v0, p0, Lcom/txdriver/ui/loader/DriversLoader;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 113
    const-class v1, Lcom/txdriver/db/DriverParking;

    invoke-static {v1, v0}, Lcom/activeandroid/Model;->registerDataSetObserver(Ljava/lang/Class;Landroid/database/DataSetObserver;)V

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/txdriver/ui/loader/DriversLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/txdriver/ui/loader/DriversLoader;->mResults:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/txdriver/ui/loader/DriversLoader;->forceLoad()V

    :cond_3
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/txdriver/ui/loader/DriversLoader;->cancelLoad()Z

    return-void
.end method
