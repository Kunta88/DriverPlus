.class public abstract Lcom/txdriver/http/request/HttpRequest;
.super Landroid/os/AsyncTask;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/http/request/HttpRequest$RequestResult;,
        Lcom/txdriver/http/request/HttpRequest$OnResponseListener;
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
        "Lcom/txdriver/http/request/HttpRequest$RequestResult<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final CACHE_TIME:I = 0x7530


# instance fields
.field app:Lcom/txdriver/App;

.field client:Lcom/txdriver/http/HttpClient;

.field endpoint:Ljava/lang/String;

.field onResponseListener:Lcom/txdriver/http/request/HttpRequest$OnResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
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

    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/txdriver/http/request/HttpRequest;->app:Lcom/txdriver/App;

    .line 46
    new-instance v0, Lcom/txdriver/http/HttpClient;

    invoke-direct {v0}, Lcom/txdriver/http/HttpClient;-><init>()V

    iput-object v0, p0, Lcom/txdriver/http/request/HttpRequest;->client:Lcom/txdriver/http/HttpClient;

    .line 47
    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getServerAddress()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getHttpPort()I

    move-result p1

    .line 49
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

    iput-object p1, p0, Lcom/txdriver/http/request/HttpRequest;->endpoint:Ljava/lang/String;

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

    .line 40
    invoke-direct {p0, p1}, Lcom/txdriver/http/request/HttpRequest;-><init>(Lcom/txdriver/App;)V

    .line 41
    iput-object p2, p0, Lcom/txdriver/http/request/HttpRequest;->resultClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/txdriver/http/request/HttpRequest$RequestResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/txdriver/http/request/HttpRequest$RequestResult<",
            "TT;>;"
        }
    .end annotation

    .line 62
    iget-object p1, p0, Lcom/txdriver/http/request/HttpRequest;->response:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 63
    new-instance p1, Lcom/txdriver/http/request/HttpRequest$RequestResult;

    iget-object v1, p0, Lcom/txdriver/http/request/HttpRequest;->response:Ljava/lang/Object;

    invoke-direct {p1, v1, v0, v0}, Lcom/txdriver/http/request/HttpRequest$RequestResult;-><init>(Ljava/lang/Object;Ljava/lang/Exception;Lcom/txdriver/http/request/HttpRequest$1;)V

    return-object p1

    .line 66
    :cond_0
    :try_start_0
    new-instance p1, Lcom/txdriver/http/request/HttpRequest$RequestResult;

    invoke-virtual {p0}, Lcom/txdriver/http/request/HttpRequest;->request()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p1, v1, v0, v0}, Lcom/txdriver/http/request/HttpRequest$RequestResult;-><init>(Ljava/lang/Object;Ljava/lang/Exception;Lcom/txdriver/http/request/HttpRequest$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    new-instance v1, Lcom/txdriver/http/request/HttpRequest$RequestResult;

    invoke-direct {v1, v0, p1, v0}, Lcom/txdriver/http/request/HttpRequest$RequestResult;-><init>(Ljava/lang/Object;Ljava/lang/Exception;Lcom/txdriver/http/request/HttpRequest$1;)V

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/txdriver/http/request/HttpRequest;->doInBackground([Ljava/lang/Void;)Lcom/txdriver/http/request/HttpRequest$RequestResult;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/txdriver/http/request/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCacheTime()I
    .locals 1

    const/16 v0, 0x7530

    return v0
.end method

.method public getOnResponseListener()Lcom/txdriver/http/request/HttpRequest$OnResponseListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
            "TT;>;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/txdriver/http/request/HttpRequest;->onResponseListener:Lcom/txdriver/http/request/HttpRequest$OnResponseListener;

    return-object v0
.end method

.method public getResponse()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/txdriver/http/request/HttpRequest;->response:Ljava/lang/Object;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/txdriver/http/request/HttpRequest;->endpoint:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/txdriver/http/request/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 134
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "HttpRequest"

    const-string v1, "onException"

    .line 84
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    iget-object v0, p0, Lcom/txdriver/http/request/HttpRequest;->onResponseListener:Lcom/txdriver/http/request/HttpRequest$OnResponseListener;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0, p1}, Lcom/txdriver/http/request/HttpRequest$OnResponseListener;->onException(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method protected onPostExecute(Lcom/txdriver/http/request/HttpRequest$RequestResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/http/request/HttpRequest$RequestResult<",
            "TT;>;)V"
        }
    .end annotation

    .line 75
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p1, Lcom/txdriver/http/request/HttpRequest$RequestResult;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 77
    iget-object p1, p1, Lcom/txdriver/http/request/HttpRequest$RequestResult;->exception:Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/txdriver/http/request/HttpRequest;->onException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p1, Lcom/txdriver/http/request/HttpRequest$RequestResult;->response:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/txdriver/http/request/HttpRequest;->onResponse(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/txdriver/http/request/HttpRequest$RequestResult;

    invoke-virtual {p0, p1}, Lcom/txdriver/http/request/HttpRequest;->onPostExecute(Lcom/txdriver/http/request/HttpRequest$RequestResult;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/txdriver/http/request/HttpRequest;->response:Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/txdriver/http/request/HttpRequest;->onResponseListener:Lcom/txdriver/http/request/HttpRequest$OnResponseListener;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0, p1}, Lcom/txdriver/http/request/HttpRequest$OnResponseListener;->onResponse(Ljava/lang/Object;)V

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

    .line 98
    invoke-virtual {p0}, Lcom/txdriver/http/request/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/txdriver/http/request/HttpRequest;->client:Lcom/txdriver/http/HttpClient;

    invoke-virtual {v1, v0}, Lcom/txdriver/http/HttpClient;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/txdriver/http/request/HttpRequest;->resultClass:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/txdriver/http/request/HttpRequest;->onResponseListener:Lcom/txdriver/http/request/HttpRequest$OnResponseListener;

    return-void
.end method

.method public setResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/txdriver/http/request/HttpRequest;->response:Ljava/lang/Object;

    return-void
.end method
