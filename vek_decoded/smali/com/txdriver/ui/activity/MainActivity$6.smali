.class Lcom/txdriver/ui/activity/MainActivity$6;
.super Lcom/txdriver/ui/loader/WaitingLoaderCallbacks;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/MainActivity;->loadBroadcastOrdersCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/ui/loader/WaitingLoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/txdriver/db/Order;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/MainActivity;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$6;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/loader/WaitingLoaderCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public isWait()Z
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity$6;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/MainActivity;->access$300(Lcom/txdriver/ui/activity/MainActivity;)Lcom/txdriver/ui/adapter/NewTabsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/ui/adapter/NewTabsAdapter;->getFragmentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Order;",
            ">;>;"
        }
    .end annotation

    .line 305
    new-instance p1, Lcom/activeandroid/ModelLoader;

    iget-object p2, p0, Lcom/txdriver/ui/activity/MainActivity$6;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {}, Lcom/txdriver/db/Order;->getBroadcastOrdersQuery()Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/activeandroid/ModelLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Ljava/lang/Object;)V
    .locals 0

    .line 301
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/MainActivity$6;->onLoadFinished(Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Order;",
            ">;)V"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity$6;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/MainActivity;->access$900(Lcom/txdriver/ui/activity/MainActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    .line 317
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/txdriver/db/Order;

    .line 318
    iget-object v5, v4, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-object v5, v5, Lcom/txdriver/db/OrderType;->orderTab:Lcom/txdriver/db/OrderTab;

    if-eqz v5, :cond_1

    iget-object v4, v4, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-object v4, v4, Lcom/txdriver/db/OrderType;->orderTab:Lcom/txdriver/db/OrderTab;

    iget v4, v4, Lcom/txdriver/db/OrderTab;->tabId:I

    if-ne v4, v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 322
    :cond_2
    iget-object v3, p0, Lcom/txdriver/ui/activity/MainActivity$6;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {v3}, Lcom/txdriver/ui/activity/MainActivity;->access$900(Lcom/txdriver/ui/activity/MainActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 324
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    return-void
.end method
