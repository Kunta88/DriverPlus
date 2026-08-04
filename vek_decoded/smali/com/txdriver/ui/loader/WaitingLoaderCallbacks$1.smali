.class Lcom/txdriver/ui/loader/WaitingLoaderCallbacks$1;
.super Landroid/os/AsyncTask;
.source "WaitingLoaderCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/loader/WaitingLoaderCallbacks;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/loader/WaitingLoaderCallbacks;

.field final synthetic val$data:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/loader/WaitingLoaderCallbacks;Ljava/lang/Object;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/txdriver/ui/loader/WaitingLoaderCallbacks$1;->this$0:Lcom/txdriver/ui/loader/WaitingLoaderCallbacks;

    iput-object p2, p0, Lcom/txdriver/ui/loader/WaitingLoaderCallbacks$1;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    :goto_0
    iget-object p1, p0, Lcom/txdriver/ui/loader/WaitingLoaderCallbacks$1;->this$0:Lcom/txdriver/ui/loader/WaitingLoaderCallbacks;

    invoke-virtual {p1}, Lcom/txdriver/ui/loader/WaitingLoaderCallbacks;->isWait()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 27
    iget-object p1, p0, Lcom/txdriver/ui/loader/WaitingLoaderCallbacks$1;->this$0:Lcom/txdriver/ui/loader/WaitingLoaderCallbacks;

    iget-object v0, p0, Lcom/txdriver/ui/loader/WaitingLoaderCallbacks$1;->val$data:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/loader/WaitingLoaderCallbacks;->onLoadFinished(Ljava/lang/Object;)V

    return-void
.end method
