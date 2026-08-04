.class Lcom/txdriver/ui/fragment/ParkingsFragment$1;
.super Ljava/lang/Object;
.source "ParkingsFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/ParkingsFragment;->initParkingsLoader()V
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
        "Lcom/txdriver/db/Parking;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/ParkingsFragment;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$1;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

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
            "Lcom/txdriver/db/Parking;",
            ">;>;"
        }
    .end annotation

    .line 100
    new-instance p1, Lcom/activeandroid/ModelLoader;

    iget-object p2, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$1;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    invoke-virtual {p2}, Lcom/txdriver/ui/fragment/ParkingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Parking;

    .line 101
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/activeandroid/ModelLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 96
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/fragment/ParkingsFragment$1;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Parking;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Parking;",
            ">;)V"
        }
    .end annotation

    .line 106
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$1;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/ParkingsFragment;->access$000(Lcom/txdriver/ui/fragment/ParkingsFragment;)Lcom/txdriver/ui/adapter/ParkingsAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/txdriver/ui/adapter/ParkingsAdapter;->setData(Ljava/util/List;)V

    .line 107
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$1;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/ParkingsFragment;->access$000(Lcom/txdriver/ui/fragment/ParkingsFragment;)Lcom/txdriver/ui/adapter/ParkingsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/ui/adapter/ParkingsAdapter;->notifyDataSetChanged()V

    .line 108
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$1;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/ParkingsFragment;->access$100(Lcom/txdriver/ui/fragment/ParkingsFragment;)Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$1;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    iget-object p2, p2, Lcom/txdriver/ui/fragment/ParkingsFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p2

    invoke-virtual {p2}, Lcom/txdriver/preferences/Preferences;->isShowDriverParkings()Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$1;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/ParkingsFragment;->access$200(Lcom/txdriver/ui/fragment/ParkingsFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$1;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    iget-object p2, p2, Lcom/txdriver/ui/fragment/ParkingsFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p2

    invoke-virtual {p2}, Lcom/txdriver/preferences/Preferences;->isShowDriverParkings()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Parking;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
