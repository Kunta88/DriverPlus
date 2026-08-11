.class Lcom/txdriver/ui/activity/OrderActivity$12;
.super Ljava/lang/Object;
.source "OrderActivity.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/OrderActivity;->loadWebAppsMenu()V
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
        "Lcom/txdriver/db/WebApp;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/OrderActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/OrderActivity;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$12;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

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
            "Lcom/txdriver/db/WebApp;",
            ">;>;"
        }
    .end annotation

    .line 334
    new-instance p1, Lcom/activeandroid/ModelLoader;

    iget-object p2, p0, Lcom/txdriver/ui/activity/OrderActivity$12;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    sget-object v0, Lcom/txdriver/db/WebApp$Type;->ORDER_MENU:Lcom/txdriver/db/WebApp$Type;

    invoke-static {v0}, Lcom/txdriver/db/WebApp;->getByTypeQuery(Lcom/txdriver/db/WebApp$Type;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/activeandroid/ModelLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 331
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/activity/OrderActivity$12;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/WebApp;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/txdriver/db/WebApp;",
            ">;)V"
        }
    .end annotation

    .line 339
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$12;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {p1, p2}, Lcom/txdriver/ui/activity/OrderActivity;->access$902(Lcom/txdriver/ui/activity/OrderActivity;Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/WebApp;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
