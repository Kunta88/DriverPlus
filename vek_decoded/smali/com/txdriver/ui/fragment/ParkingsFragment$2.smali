.class Lcom/txdriver/ui/fragment/ParkingsFragment$2;
.super Ljava/lang/Object;
.source "ParkingsFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/ParkingsFragment;->initDriverParkingsLoader()V
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

    .line 120
    iput-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$2;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
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

    .line 124
    new-instance p1, Lcom/txdriver/ui/loader/DriverParkingsLoader;

    iget-object p2, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$2;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    invoke-virtual {p2}, Lcom/txdriver/ui/fragment/ParkingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/txdriver/ui/loader/DriverParkingsLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 120
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/fragment/ParkingsFragment$2;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 1
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

    .line 129
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$2;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/ParkingsFragment;->access$300(Lcom/txdriver/ui/fragment/ParkingsFragment;)Landroid/view/View;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$2;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/ParkingsFragment;->access$400(Lcom/txdriver/ui/fragment/ParkingsFragment;)Lcom/txdriver/ui/adapter/ParkingsAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/txdriver/ui/adapter/ParkingsAdapter;->setData(Ljava/util/List;)V

    .line 131
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$2;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/ParkingsFragment;->access$400(Lcom/txdriver/ui/fragment/ParkingsFragment;)Lcom/txdriver/ui/adapter/ParkingsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/ui/adapter/ParkingsAdapter;->notifyDataSetChanged()V

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
