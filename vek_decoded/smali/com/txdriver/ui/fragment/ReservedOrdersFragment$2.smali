.class Lcom/txdriver/ui/fragment/ReservedOrdersFragment$2;
.super Ljava/lang/Object;
.source "ReservedOrdersFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->initLoader()V
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
.field final synthetic this$0:Lcom/txdriver/ui/fragment/ReservedOrdersFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/ReservedOrdersFragment;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment$2;->this$0:Lcom/txdriver/ui/fragment/ReservedOrdersFragment;

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

    .line 95
    new-instance p1, Lcom/txdriver/ui/loader/OrdersLoader;

    iget-object p2, p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment$2;->this$0:Lcom/txdriver/ui/fragment/ReservedOrdersFragment;

    invoke-virtual {p2}, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {}, Lcom/txdriver/db/Order;->getReservedAndCurrentOrdersQuery()Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/txdriver/ui/loader/OrdersLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 91
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/fragment/ReservedOrdersFragment$2;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 0
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

    .line 100
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment$2;->this$0:Lcom/txdriver/ui/fragment/ReservedOrdersFragment;

    invoke-static {p1, p2}, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->access$100(Lcom/txdriver/ui/fragment/ReservedOrdersFragment;Ljava/util/List;)V

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
