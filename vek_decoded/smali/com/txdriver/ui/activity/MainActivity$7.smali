.class Lcom/txdriver/ui/activity/MainActivity$7;
.super Lcom/txdriver/ui/loader/WaitingLoaderCallbacks;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/MainActivity;->loadReservedOrdersCount()V
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

    .line 332
    iput-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$7;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/loader/WaitingLoaderCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public isWait()Z
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity$7;->this$0:Lcom/txdriver/ui/activity/MainActivity;

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

    .line 336
    new-instance p1, Lcom/activeandroid/ModelLoader;

    iget-object p2, p0, Lcom/txdriver/ui/activity/MainActivity$7;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {}, Lcom/txdriver/db/Order;->getReservedAndCurrentOrdersQuery()Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/activeandroid/ModelLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Ljava/lang/Object;)V
    .locals 0

    .line 332
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/MainActivity$7;->onLoadFinished(Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Order;",
            ">;)V"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity$7;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/MainActivity;->access$1000(Lcom/txdriver/ui/activity/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity$7;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/MainActivity;->access$1000(Lcom/txdriver/ui/activity/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
