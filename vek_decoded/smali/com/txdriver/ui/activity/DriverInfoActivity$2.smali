.class Lcom/txdriver/ui/activity/DriverInfoActivity$2;
.super Ljava/lang/Object;
.source "DriverInfoActivity.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/DriverInfoActivity;->addWebAppsTabs(Lcom/txdriver/ui/adapter/NewTabsAdapter;)V
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
.field final synthetic this$0:Lcom/txdriver/ui/activity/DriverInfoActivity;

.field final synthetic val$tabsAdapter:Lcom/txdriver/ui/adapter/NewTabsAdapter;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/DriverInfoActivity;Lcom/txdriver/ui/adapter/NewTabsAdapter;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/txdriver/ui/activity/DriverInfoActivity$2;->this$0:Lcom/txdriver/ui/activity/DriverInfoActivity;

    iput-object p2, p0, Lcom/txdriver/ui/activity/DriverInfoActivity$2;->val$tabsAdapter:Lcom/txdriver/ui/adapter/NewTabsAdapter;

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

    .line 84
    new-instance p1, Lcom/activeandroid/ModelLoader;

    iget-object p2, p0, Lcom/txdriver/ui/activity/DriverInfoActivity$2;->this$0:Lcom/txdriver/ui/activity/DriverInfoActivity;

    sget-object v0, Lcom/txdriver/db/WebApp$Type;->DRIVER_TAB:Lcom/txdriver/db/WebApp$Type;

    invoke-static {v0}, Lcom/txdriver/db/WebApp;->getByTypeQuery(Lcom/txdriver/db/WebApp$Type;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/activeandroid/ModelLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 79
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/activity/DriverInfoActivity$2;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 2
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

    .line 89
    iget-object p1, p0, Lcom/txdriver/ui/activity/DriverInfoActivity$2;->this$0:Lcom/txdriver/ui/activity/DriverInfoActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/DriverInfoActivity;->access$000(Lcom/txdriver/ui/activity/DriverInfoActivity;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 90
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/db/WebApp;

    .line 91
    iget-object v0, p0, Lcom/txdriver/ui/activity/DriverInfoActivity$2;->this$0:Lcom/txdriver/ui/activity/DriverInfoActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/DriverInfoActivity;->access$000(Lcom/txdriver/ui/activity/DriverInfoActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p2, Lcom/txdriver/db/WebApp;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/txdriver/ui/fragment/WebAppFragment;->newInstance(Ljava/lang/String;)Lcom/txdriver/ui/fragment/WebAppFragment;

    move-result-object v1

    iget-object p2, p2, Lcom/txdriver/db/WebApp;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/DriverInfoActivity$2;->this$0:Lcom/txdriver/ui/activity/DriverInfoActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/DriverInfoActivity;->access$000(Lcom/txdriver/ui/activity/DriverInfoActivity;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 94
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 95
    iget-object v0, p0, Lcom/txdriver/ui/activity/DriverInfoActivity$2;->val$tabsAdapter:Lcom/txdriver/ui/adapter/NewTabsAdapter;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/txdriver/ui/adapter/NewTabsAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 96
    iget-object p2, p0, Lcom/txdriver/ui/activity/DriverInfoActivity$2;->val$tabsAdapter:Lcom/txdriver/ui/adapter/NewTabsAdapter;

    invoke-virtual {p2}, Lcom/txdriver/ui/adapter/NewTabsAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/txdriver/ui/activity/DriverInfoActivity$2;->this$0:Lcom/txdriver/ui/activity/DriverInfoActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/DriverInfoActivity;->access$100(Lcom/txdriver/ui/activity/DriverInfoActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/ui/activity/DriverInfoActivity$2;->this$0:Lcom/txdriver/ui/activity/DriverInfoActivity;

    iget-object p2, p2, Lcom/txdriver/ui/activity/DriverInfoActivity;->app:Lcom/txdriver/App;

    invoke-static {p1, p2}, Lcom/txdriver/utils/UiUtils;->dynamicSetTabLayoutMode(Lcom/google/android/material/tabs/TabLayout;Lcom/txdriver/App;)V

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

    .line 103
    iget-object p1, p0, Lcom/txdriver/ui/activity/DriverInfoActivity$2;->this$0:Lcom/txdriver/ui/activity/DriverInfoActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/DriverInfoActivity;->access$000(Lcom/txdriver/ui/activity/DriverInfoActivity;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method
