.class Lcom/txdriver/ui/activity/OrderActivity$19;
.super Ljava/lang/Object;
.source "OrderActivity.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/OrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/txdriver/db/Order;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/OrderActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/OrderActivity;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$19;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 4
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

    .line 645
    new-instance p1, Lcom/txdriver/ui/loader/OrdersLoader;

    iget-object p2, p0, Lcom/txdriver/ui/activity/OrderActivity$19;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {p2}, Lcom/txdriver/ui/activity/OrderActivity;->access$600(Lcom/txdriver/ui/activity/OrderActivity;)Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Order;

    .line 646
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/txdriver/ui/activity/OrderActivity$19;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    .line 647
    invoke-static {v2}, Lcom/txdriver/ui/activity/OrderActivity;->access$1000(Lcom/txdriver/ui/activity/OrderActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Id = ?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/txdriver/ui/loader/OrdersLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 642
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/activity/OrderActivity$19;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Order;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Order;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 652
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 653
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/Order;

    .line 654
    iget-object p2, p0, Lcom/txdriver/ui/activity/OrderActivity$19;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {p2}, Lcom/txdriver/ui/activity/OrderActivity;->access$1100(Lcom/txdriver/ui/activity/OrderActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 655
    iget-object p2, p0, Lcom/txdriver/ui/activity/OrderActivity$19;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {p2}, Lcom/txdriver/ui/activity/OrderActivity;->access$1200(Lcom/txdriver/ui/activity/OrderActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 656
    iget-object p2, p0, Lcom/txdriver/ui/activity/OrderActivity$19;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {p2}, Lcom/txdriver/ui/activity/OrderActivity;->access$1100(Lcom/txdriver/ui/activity/OrderActivity;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p1, Lcom/txdriver/db/Order;->carExtras:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 657
    iget-object p2, p0, Lcom/txdriver/ui/activity/OrderActivity$19;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {p2}, Lcom/txdriver/ui/activity/OrderActivity;->access$1200(Lcom/txdriver/ui/activity/OrderActivity;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object p1, p1, Lcom/txdriver/db/Order;->driverExtras:Ljava/util/List;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Order;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
