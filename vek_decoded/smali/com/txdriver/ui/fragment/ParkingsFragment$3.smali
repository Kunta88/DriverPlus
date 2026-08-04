.class Lcom/txdriver/ui/fragment/ParkingsFragment$3;
.super Ljava/lang/Object;
.source "ParkingsFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/ParkingsFragment;->initParkingsDriversLoader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "Lcom/txdriver/db/Parking$Info;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/ParkingsFragment;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$3;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

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
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/txdriver/db/Parking$Info;",
            ">;>;"
        }
    .end annotation

    .line 147
    new-instance p1, Lcom/txdriver/ui/loader/DriversLoader;

    iget-object p2, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$3;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    invoke-virtual {p2}, Lcom/txdriver/ui/fragment/ParkingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/txdriver/ui/loader/DriversLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 143
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/fragment/ParkingsFragment$3;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/Map;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/txdriver/db/Parking$Info;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/txdriver/db/Parking$Info;",
            ">;)V"
        }
    .end annotation

    .line 152
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$3;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/ParkingsFragment;->access$000(Lcom/txdriver/ui/fragment/ParkingsFragment;)Lcom/txdriver/ui/adapter/ParkingsAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/txdriver/ui/adapter/ParkingsAdapter;->setParkingDriversMap(Ljava/util/Map;)V

    .line 153
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$3;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/ParkingsFragment;->access$000(Lcom/txdriver/ui/fragment/ParkingsFragment;)Lcom/txdriver/ui/adapter/ParkingsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/ui/adapter/ParkingsAdapter;->notifyDataSetChanged()V

    .line 154
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$3;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/ParkingsFragment;->access$400(Lcom/txdriver/ui/fragment/ParkingsFragment;)Lcom/txdriver/ui/adapter/ParkingsAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/txdriver/ui/adapter/ParkingsAdapter;->setParkingDriversMap(Ljava/util/Map;)V

    .line 155
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$3;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/ParkingsFragment;->access$400(Lcom/txdriver/ui/fragment/ParkingsFragment;)Lcom/txdriver/ui/adapter/ParkingsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/ui/adapter/ParkingsAdapter;->notifyDataSetChanged()V

    .line 156
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$3;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/ParkingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$3;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/ParkingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/txdriver/db/Parking$Info;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
