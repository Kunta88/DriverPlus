.class Lcom/txdriver/ui/activity/MainActivity$5;
.super Lcom/txdriver/ui/loader/WaitingLoaderCallbacks;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/MainActivity;->addWebAppsTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/ui/loader/WaitingLoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/txdriver/db/WebApp;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/MainActivity;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$5;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/loader/WaitingLoaderCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public isWait()Z
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity$5;->this$0:Lcom/txdriver/ui/activity/MainActivity;

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
            "Lcom/txdriver/db/WebApp;",
            ">;>;"
        }
    .end annotation

    .line 283
    new-instance p1, Lcom/activeandroid/ModelLoader;

    iget-object p2, p0, Lcom/txdriver/ui/activity/MainActivity$5;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    sget-object v0, Lcom/txdriver/db/WebApp$Type;->MAIN_TAB:Lcom/txdriver/db/WebApp$Type;

    invoke-static {v0}, Lcom/txdriver/db/WebApp;->getByTypeQuery(Lcom/txdriver/db/WebApp$Type;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/activeandroid/ModelLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Ljava/lang/Object;)V
    .locals 0

    .line 273
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/MainActivity$5;->onLoadFinished(Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/db/WebApp;",
            ">;)V"
        }
    .end annotation

    .line 288
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/db/WebApp;

    .line 289
    iget-object v1, p0, Lcom/txdriver/ui/activity/MainActivity$5;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {v1}, Lcom/txdriver/ui/activity/MainActivity;->access$300(Lcom/txdriver/ui/activity/MainActivity;)Lcom/txdriver/ui/adapter/NewTabsAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/txdriver/db/WebApp;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/txdriver/ui/fragment/WebAppFragment;->newInstance(Ljava/lang/String;)Lcom/txdriver/ui/fragment/WebAppFragment;

    move-result-object v2

    iget-object v3, v0, Lcom/txdriver/db/WebApp;->name:Ljava/lang/String;

    iget v0, v0, Lcom/txdriver/db/WebApp;->webAppId:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/txdriver/ui/adapter/NewTabsAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    goto :goto_0

    .line 291
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$5;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/MainActivity;->access$300(Lcom/txdriver/ui/activity/MainActivity;)Lcom/txdriver/ui/adapter/NewTabsAdapter;

    move-result-object p1

    const/16 v0, 0x3e7

    invoke-static {v0}, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->newInstance(I)Lcom/txdriver/ui/fragment/ReservedOrdersFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/ui/activity/MainActivity$5;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    iget-object v2, v2, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    const v3, 0x7f100161

    invoke-virtual {v2, v3}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/txdriver/ui/adapter/NewTabsAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 292
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$5;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/MainActivity;->access$300(Lcom/txdriver/ui/activity/MainActivity;)Lcom/txdriver/ui/adapter/NewTabsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/ui/adapter/NewTabsAdapter;->notifyDataSetChanged()V

    .line 293
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$5;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/MainActivity;->access$600(Lcom/txdriver/ui/activity/MainActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity$5;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    iget-object v0, v0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-static {p1, v0}, Lcom/txdriver/utils/UiUtils;->dynamicSetTabLayoutMode(Lcom/google/android/material/tabs/TabLayout;Lcom/txdriver/App;)V

    .line 294
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$5;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/MainActivity;->access$700(Lcom/txdriver/ui/activity/MainActivity;)V

    .line 295
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$5;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/MainActivity;->access$800(Lcom/txdriver/ui/activity/MainActivity;)V

    return-void
.end method
