.class Lcom/txdriver/ui/activity/OrderActivity$11;
.super Ljava/lang/Object;
.source "OrderActivity.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/OrderActivity;->addWebAppsTabs(Landroidx/appcompat/app/ActionBar;Lcom/txdriver/ui/adapter/TabsAdapter;)V
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

.field final synthetic val$bar:Landroidx/appcompat/app/ActionBar;

.field final synthetic val$tabsAdapter:Lcom/txdriver/ui/adapter/TabsAdapter;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/OrderActivity;Lcom/txdriver/ui/adapter/TabsAdapter;Landroidx/appcompat/app/ActionBar;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$11;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    iput-object p2, p0, Lcom/txdriver/ui/activity/OrderActivity$11;->val$tabsAdapter:Lcom/txdriver/ui/adapter/TabsAdapter;

    iput-object p3, p0, Lcom/txdriver/ui/activity/OrderActivity$11;->val$bar:Landroidx/appcompat/app/ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTab(Lcom/txdriver/db/WebApp;)V
    .locals 4

    .line 316
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity$11;->val$bar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v0

    .line 317
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 318
    iget-object v2, p1, Lcom/txdriver/db/WebApp;->url:Ljava/lang/String;

    const-string v3, "arg_url"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v2, p0, Lcom/txdriver/ui/activity/OrderActivity$11;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {v2}, Lcom/txdriver/ui/activity/OrderActivity;->access$800(Lcom/txdriver/ui/activity/OrderActivity;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v2, p0, Lcom/txdriver/ui/activity/OrderActivity$11;->val$tabsAdapter:Lcom/txdriver/ui/adapter/TabsAdapter;

    iget-object p1, p1, Lcom/txdriver/db/WebApp;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object p1

    const-class v0, Lcom/txdriver/ui/fragment/WebAppFragment;

    invoke-virtual {v2, p1, v0, v1}, Lcom/txdriver/ui/adapter/TabsAdapter;->addTab(Landroidx/appcompat/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
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

    .line 301
    new-instance p1, Lcom/activeandroid/ModelLoader;

    iget-object p2, p0, Lcom/txdriver/ui/activity/OrderActivity$11;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    sget-object v0, Lcom/txdriver/db/WebApp$Type;->ORDER_TAB:Lcom/txdriver/db/WebApp$Type;

    invoke-static {v0}, Lcom/txdriver/db/WebApp;->getByTypeQuery(Lcom/txdriver/db/WebApp$Type;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/activeandroid/ModelLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 297
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/activity/OrderActivity$11;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

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

    .line 306
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$11;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/OrderActivity;->access$800(Lcom/txdriver/ui/activity/OrderActivity;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/ActionBar$Tab;

    .line 307
    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity$11;->val$tabsAdapter:Lcom/txdriver/ui/adapter/TabsAdapter;

    invoke-virtual {v1, v0}, Lcom/txdriver/ui/adapter/TabsAdapter;->removeTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$11;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/OrderActivity;->access$800(Lcom/txdriver/ui/activity/OrderActivity;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 310
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/db/WebApp;

    .line 311
    invoke-virtual {p0, p2}, Lcom/txdriver/ui/activity/OrderActivity$11;->addTab(Lcom/txdriver/db/WebApp;)V

    goto :goto_1

    :cond_1
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
