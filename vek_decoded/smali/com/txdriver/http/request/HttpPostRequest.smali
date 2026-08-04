.class public abstract Lcom/txdriver/http/request/HttpPostRequest;
.super Landroid/os/AsyncTask;
.source "HttpPostRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/http/request/HttpPostRequest$RequestResult;,
        Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/txdriver/http/request/HttpPostRequest$RequestResult<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field app:Lcom/txdriver/App;

.field client:Lcom/txdriver/http/HttpClient;

.field endpoint:Ljava/lang/String;

.field onResponseListener:Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest<",
            "TT;>;"
        }
    .end annotation
.end field

.field private response:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private resultClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/txdriver/http/request/HttpPostRequest;->app:Lcom/txdriver/App;

    .line 34
    new-instance v0, Lcom/txdriver/http/HttpClient;

    invoke-direct {v0}, Lcom/txdriver/http/HttpClient;-><init>()V

    iput-object v0, p0, Lcom/txdriver/http/request/HttpPostRequest;->client:Lcom/txdriver/http/HttpClient;

    .line 35
    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getServerAddress()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getHttpPort()I

    move-result p1

    .line 37
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "http://%s:%d/"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/http/request/HttpPostRequest;->endpoint:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/App;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lcom/txdriver/http/request/HttpPostRequest;-><init>(Lcom/txdriver/App;)V

    .line 29
    iput-object p2, p0, Lcom/txdriver/http/request/HttpPostRequest;->resultClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/txdriver/http/request/HttpPostRequest$RequestResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/txdriver/http/request/HttpPostRequest$RequestResult<",
            "TT;>;"
        }
    .end annotation

    .line 58
    iget-object p1, p0, Lcom/txdriver/http/request/HttpPostRequest;->response:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 59
    new-instance p1, Lcom/txdriver/http/request/HttpPostRequest$RequestResult;

    iget-object v1, p0, Lcom/txdriver/http/request/HttpPostRequest;->response:Ljava/lang/Object;

    invoke-direct {p1, v1, v0, v0}, Lcom/txdriver/http/request/HttpPostRequest$RequestResult;-><init>(Ljava/lang/Object;Ljava/lang/Exception;Lcom/txdriver/http/request/HttpPostRequest$1;)V

    return-object p1

    .line 62
    :cond_0
    :try_start_0
    new-instance p1, Lcom/txdriver/http/request/HttpPostRequest$RequestResult;

    invoke-virtual {p0}, Lcom/txdriver/http/request/HttpPostRequest;->request()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p1, v1, v0, v0}, Lcom/txdriver/http/request/HttpPostRequest$RequestResult;-><init>(Ljava/lang/Object;Ljava/lang/Exception;Lcom/txdriver/http/request/HttpPostRequest$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    new-instance v1, Lcom/txdriver/http/request/HttpPostRequest$RequestResult;

    invoke-direct {v1, v0, p1, v0}, Lcom/txdriver/http/request/HttpPostRequest$RequestResult;-><init>(Ljava/lang/Object;Ljava/lang/Exception;Lcom/txdriver/http/request/HttpPostRequest$1;)V

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/txdriver/http/request/HttpPostRequest;->doInBackground([Ljava/lang/Void;)Lcom/txdriver/http/request/HttpPostRequest$RequestResult;

    move-result-object p1

    return-object p1
.end method

.method public getResponse()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/txdriver/http/request/HttpPostRequest;->response:Ljava/lang/Object;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/txdriver/http/request/HttpPostRequest;->endpoint:Ljava/lang/String;

    return-object v0
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "HttpRequest"

    const-string v1, "onException"

    .line 80
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    iget-object v0, p0, Lcom/txdriver/http/request/HttpPostRequest;->onResponseListener:Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p1}, Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;->onException(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method protected onPostExecute(Lcom/txdriver/http/request/HttpPostRequest$RequestResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/http/request/HttpPostRequest$RequestResult<",
            "TT;>;)V"
        }
    .end annotation

    .line 71
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p1, Lcom/txdriver/http/request/HttpPostRequest$RequestResult;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 73
    iget-object p1, p1, Lcom/txdriver/http/request/HttpPostRequest$RequestResult;->exception:Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/txdriver/http/request/HttpPostRequest;->onException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p1, Lcom/txdriver/http/request/HttpPostRequest$RequestResult;->response:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/txdriver/http/request/HttpPostRequest;->onResponse(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/txdriver/http/request/HttpPostRequest$RequestResult;

    invoke-virtual {p0, p1}, Lcom/txdriver/http/request/HttpPostRequest;->onPostExecute(Lcom/txdriver/http/request/HttpPostRequest$RequestResult;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/txdriver/http/request/HttpPostRequest;->response:Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/txdriver/http/request/HttpPostRequest;->onResponseListener:Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p1}, Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;->onResponse(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public request()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/txdriver/http/request/HttpPostRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 96
    iget-object v2, p0, Lcom/txdriver/http/request/HttpPostRequest;->client:Lcom/txdriver/http/HttpClient;

    invoke-virtual {v2, v0, v1}, Lcom/txdriver/http/HttpClient;->post(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/txdriver/http/request/HttpPostRequest;->resultClass:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setOnResponseListener(Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest<",
            "TT;>;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/txdriver/http/request/HttpPostRequest;->onResponseListener:Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;

    return-void
.end method

.method public setResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/txdriver/http/request/HttpPostRequest;->response:Ljava/lang/Object;

    return-void
.end method
