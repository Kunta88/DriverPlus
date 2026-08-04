.class Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3;
.super Ljava/lang/Object;
.source "BroadcastOrdersFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->loadOrders()V
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
.field final synthetic this$0:Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3;->this$0:Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 121
    new-instance p2, Lcom/activeandroid/ModelLoader;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3;->this$0:Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;

    invoke-virtual {v0}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1}, Lcom/txdriver/db/Order;->getOrdersByTabQuery(I)Lcom/activeandroid/query/From;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/activeandroid/ModelLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p2
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 117
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 7
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

    .line 126
    new-instance p1, Lcom/txdriver/filter/FilterPreferences;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3;->this$0:Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;

    iget-object v0, v0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->app:Lcom/txdriver/App;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3;->this$0:Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;

    invoke-static {v1}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->access$000(Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/txdriver/filter/FilterPreferences;-><init>(Lcom/txdriver/App;I)V

    .line 127
    iget-object v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3;->this$0:Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;

    iget-object v0, v0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p1}, Lcom/txdriver/filter/FilterPreferences;->getSort()I

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    .line 130
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 131
    new-instance p1, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3$1;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3$1;-><init>(Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3;DD)V

    invoke-static {p2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3;->this$0:Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;

    invoke-static {p1, p2}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->access$100(Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;Ljava/util/List;)V

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
