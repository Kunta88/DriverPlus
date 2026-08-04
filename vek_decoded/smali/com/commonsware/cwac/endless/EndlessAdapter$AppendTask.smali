.class public Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;
.super Landroid/os/AsyncTask;
.source "EndlessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/commonsware/cwac/endless/EndlessAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AppendTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field adapter:Lcom/commonsware/cwac/endless/EndlessAdapter;

.field tempKeep:Z


# direct methods
.method protected constructor <init>(Lcom/commonsware/cwac/endless/EndlessAdapter;)V
    .locals 1

    .line 320
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 317
    iput-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->adapter:Lcom/commonsware/cwac/endless/EndlessAdapter;

    .line 321
    iput-object p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->adapter:Lcom/commonsware/cwac/endless/EndlessAdapter;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 0

    .line 329
    :try_start_0
    iget-object p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->adapter:Lcom/commonsware/cwac/endless/EndlessAdapter;

    invoke-virtual {p1}, Lcom/commonsware/cwac/endless/EndlessAdapter;->cacheInBackground()Z

    move-result p1

    iput-boolean p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->tempKeep:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-object p1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->adapter:Lcom/commonsware/cwac/endless/EndlessAdapter;

    iget-boolean v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->tempKeep:Z

    invoke-static {v0, v1}, Lcom/commonsware/cwac/endless/EndlessAdapter;->access$0(Lcom/commonsware/cwac/endless/EndlessAdapter;Z)V

    if-nez p1, :cond_0

    .line 343
    iget-object p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->adapter:Lcom/commonsware/cwac/endless/EndlessAdapter;

    invoke-virtual {p1}, Lcom/commonsware/cwac/endless/EndlessAdapter;->appendCachedData()V

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->adapter:Lcom/commonsware/cwac/endless/EndlessAdapter;

    invoke-static {v0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->access$1(Lcom/commonsware/cwac/endless/EndlessAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/commonsware/cwac/endless/EndlessAdapter;->onException(Landroid/view/View;Ljava/lang/Exception;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/commonsware/cwac/endless/EndlessAdapter;->access$0(Lcom/commonsware/cwac/endless/EndlessAdapter;Z)V

    .line 350
    :goto_0
    iget-object p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->adapter:Lcom/commonsware/cwac/endless/EndlessAdapter;

    invoke-virtual {p1}, Lcom/commonsware/cwac/endless/EndlessAdapter;->onDataReady()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method
