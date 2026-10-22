.class public final Lcom/txdriver/compat/SavedLoginConfigCallback;
.super Ljava/lang/Object;
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;

.field private final activity:Ljava/lang/ref/WeakReference;

.method public constructor <init>(Lcom/txdriver/ui/activity/MainActivity;)V
    .locals 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    new-instance v0, Ljava/lang/ref/WeakReference;
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    iput-object v0, p0, Lcom/txdriver/compat/SavedLoginConfigCallback;->activity:Ljava/lang/ref/WeakReference;
    return-void
.end method

.method private complete()V
    .locals 1
    iget-object v0, p0, Lcom/txdriver/compat/SavedLoginConfigCallback;->activity:Ljava/lang/ref/WeakReference;
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/txdriver/ui/activity/MainActivity;
    if-eqz v0, :done
    invoke-virtual {v0}, Lcom/txdriver/ui/activity/MainActivity;->startSavedLoginService()V
    :done
    return-void
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 0
    invoke-direct {p0}, Lcom/txdriver/compat/SavedLoginConfigCallback;->complete()V
    return-void
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 0
    invoke-direct {p0}, Lcom/txdriver/compat/SavedLoginConfigCallback;->complete()V
    return-void
.end method
