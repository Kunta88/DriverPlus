.class public Lcom/txdriver/ui/loader/AddressesLoaderCallbacks;
.super Ljava/lang/Object;
.source "AddressesLoaderCallbacks.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/txdriver/db/Address;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mAddressesAdapter:Lcom/activeandroid/widget/ModelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/activeandroid/widget/ModelAdapter<",
            "Lcom/txdriver/db/Address;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFrom:Lcom/activeandroid/query/From;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/activeandroid/widget/ModelAdapter;Lcom/activeandroid/query/From;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/activeandroid/widget/ModelAdapter<",
            "Lcom/txdriver/db/Address;",
            ">;",
            "Lcom/activeandroid/query/From;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/txdriver/ui/loader/AddressesLoaderCallbacks;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/txdriver/ui/loader/AddressesLoaderCallbacks;->mAddressesAdapter:Lcom/activeandroid/widget/ModelAdapter;

    .line 28
    iput-object p3, p0, Lcom/txdriver/ui/loader/AddressesLoaderCallbacks;->mFrom:Lcom/activeandroid/query/From;

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
            "Lcom/txdriver/db/Address;",
            ">;>;"
        }
    .end annotation

    .line 33
    new-instance p1, Lcom/activeandroid/ModelLoader;

    iget-object p2, p0, Lcom/txdriver/ui/loader/AddressesLoaderCallbacks;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/txdriver/ui/loader/AddressesLoaderCallbacks;->mFrom:Lcom/activeandroid/query/From;

    invoke-direct {p1, p2, v0}, Lcom/activeandroid/ModelLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/loader/AddressesLoaderCallbacks;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Address;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Address;",
            ">;)V"
        }
    .end annotation

    .line 39
    iget-object p1, p0, Lcom/txdriver/ui/loader/AddressesLoaderCallbacks;->mAddressesAdapter:Lcom/activeandroid/widget/ModelAdapter;

    invoke-virtual {p1, p2}, Lcom/activeandroid/widget/ModelAdapter;->setData(Ljava/util/List;)V

    .line 40
    iget-object p1, p0, Lcom/txdriver/ui/loader/AddressesLoaderCallbacks;->mAddressesAdapter:Lcom/activeandroid/widget/ModelAdapter;

    invoke-virtual {p1}, Lcom/activeandroid/widget/ModelAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Address;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
