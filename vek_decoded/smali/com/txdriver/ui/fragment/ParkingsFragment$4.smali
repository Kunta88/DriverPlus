.class Lcom/txdriver/ui/fragment/ParkingsFragment$4;
.super Ljava/lang/Object;
.source "ParkingsFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/ParkingsFragment;->initDriversCountLoader()V
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
.field final synthetic this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/ParkingsFragment;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$4;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

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

    .line 175
    new-instance p1, Lcom/activeandroid/ModelLoader;

    iget-object p2, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$4;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    invoke-virtual {p2}, Lcom/txdriver/ui/fragment/ParkingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 176
    invoke-static {}, Lcom/txdriver/db/DriverParking;->getParksCountQuery()Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/activeandroid/ModelLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 171
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/fragment/ParkingsFragment$4;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

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

    .line 182
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment$4;->this$0:Lcom/txdriver/ui/fragment/ParkingsFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/ParkingsFragment;->access$500(Lcom/txdriver/ui/fragment/ParkingsFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 183
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "0"

    .line 182
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
