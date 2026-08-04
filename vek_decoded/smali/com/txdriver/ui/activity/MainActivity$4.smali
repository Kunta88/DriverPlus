.class Lcom/txdriver/ui/activity/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/MainActivity;->addOrderTabs()V
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
        "Lcom/txdriver/db/OrderTab;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/MainActivity;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$4;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/OrderTab;",
            ">;>;"
        }
    .end annotation

    .line 250
    new-instance p1, Lcom/activeandroid/ModelLoader;

    iget-object p2, p0, Lcom/txdriver/ui/activity/MainActivity$4;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/OrderTab;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/activeandroid/ModelLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 246
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/activity/MainActivity$4;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/OrderTab;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/txdriver/db/OrderTab;",
            ">;)V"
        }
    .end annotation

    .line 255
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$4;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/MainActivity;->access$300(Lcom/txdriver/ui/activity/MainActivity;)Lcom/txdriver/ui/adapter/NewTabsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/ui/adapter/NewTabsAdapter;->resetTabs()V

    .line 256
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$4;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->isShowParkings()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$4;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/MainActivity;->access$300(Lcom/txdriver/ui/activity/MainActivity;)Lcom/txdriver/ui/adapter/NewTabsAdapter;

    move-result-object p1

    new-instance v0, Lcom/txdriver/ui/fragment/ParkingsFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/ParkingsFragment;-><init>()V

    iget-object v1, p0, Lcom/txdriver/ui/activity/MainActivity$4;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    const v2, 0x7f1001bb

    invoke-virtual {v1, v2}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/txdriver/ui/adapter/NewTabsAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 258
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$4;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/MainActivity;->access$400(Lcom/txdriver/ui/activity/MainActivity;)V

    .line 260
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/db/OrderTab;

    .line 261
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity$4;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/MainActivity;->access$300(Lcom/txdriver/ui/activity/MainActivity;)Lcom/txdriver/ui/adapter/NewTabsAdapter;

    move-result-object v0

    iget v1, p2, Lcom/txdriver/db/OrderTab;->tabId:I

    iget-object v2, p2, Lcom/txdriver/db/OrderTab;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->newInstance(ILjava/lang/String;)Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;

    move-result-object v1

    iget-object v2, p2, Lcom/txdriver/db/OrderTab;->name:Ljava/lang/String;

    iget p2, p2, Lcom/txdriver/db/OrderTab;->tabId:I

    invoke-virtual {v0, v1, v2, p2}, Lcom/txdriver/ui/adapter/NewTabsAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    goto :goto_0

    .line 263
    :cond_1
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$4;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/MainActivity;->access$500(Lcom/txdriver/ui/activity/MainActivity;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/OrderTab;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
