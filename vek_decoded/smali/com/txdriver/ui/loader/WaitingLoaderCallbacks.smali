.class public abstract Lcom/txdriver/ui/loader/WaitingLoaderCallbacks;
.super Ljava/lang/Object;
.source "WaitingLoaderCallbacks.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isWait()Z
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 15
    new-instance p1, Lcom/txdriver/ui/loader/WaitingLoaderCallbacks$1;

    invoke-direct {p1, p0, p2}, Lcom/txdriver/ui/loader/WaitingLoaderCallbacks$1;-><init>(Lcom/txdriver/ui/loader/WaitingLoaderCallbacks;Ljava/lang/Object;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 30
    invoke-virtual {p1, p2}, Lcom/txdriver/ui/loader/WaitingLoaderCallbacks$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onLoadFinished(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method
