.class Lcom/txdriver/ui/activity/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/MainActivity;->loadDriversCount()V
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
        "Lcom/txdriver/db/DriverParking;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/MainActivity;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$3;->this$0:Lcom/txdriver/ui/activity/MainActivity;

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
            "Lcom/txdriver/db/DriverParking;",
            ">;>;"
        }
    .end annotation

    .line 227
    new-instance p1, Lcom/activeandroid/ModelLoader;

    iget-object p2, p0, Lcom/txdriver/ui/activity/MainActivity$3;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    iget-object v0, p2, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getLogin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/txdriver/db/Driver;->getParkingsQuery(I)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/activeandroid/ModelLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 223
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/activity/MainActivity$3;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/DriverParking;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/txdriver/db/DriverParking;",
            ">;)V"
        }
    .end annotation

    .line 232
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$3;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/txdriver/ui/activity/MainActivity;->access$102(Lcom/txdriver/ui/activity/MainActivity;I)I

    .line 233
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$3;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/MainActivity;->access$200(Lcom/txdriver/ui/activity/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 234
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$3;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/MainActivity;->access$200(Lcom/txdriver/ui/activity/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/ui/activity/MainActivity$3;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {p2}, Lcom/txdriver/ui/activity/MainActivity;->access$100(Lcom/txdriver/ui/activity/MainActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :cond_1
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$3;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/MainActivity;->updateButtons()V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/DriverParking;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
