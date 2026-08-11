.class Lcom/txdriver/http/request/PushLogRequest$1;
.super Ljava/lang/Object;
.source "PushLogRequest.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/http/request/PushLogRequest;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/http/request/PushLogRequest;


# direct methods
.method constructor <init>(Lcom/txdriver/http/request/PushLogRequest;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/txdriver/http/request/PushLogRequest$1;->this$0:Lcom/txdriver/http/request/PushLogRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 65
    iget-object p1, p0, Lcom/txdriver/http/request/PushLogRequest$1;->this$0:Lcom/txdriver/http/request/PushLogRequest;

    invoke-static {p1}, Lcom/txdriver/http/request/PushLogRequest;->access$000(Lcom/txdriver/http/request/PushLogRequest;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File was not uploaded because of: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p1, p0, Lcom/txdriver/http/request/PushLogRequest$1;->this$0:Lcom/txdriver/http/request/PushLogRequest;

    iget-object p1, p1, Lcom/txdriver/http/request/PushLogRequest;->listener:Lcom/txdriver/http/request/PushLogRequest$UploadResponseListener;

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/txdriver/http/request/PushLogRequest$1;->this$0:Lcom/txdriver/http/request/PushLogRequest;

    iget-object p1, p1, Lcom/txdriver/http/request/PushLogRequest;->listener:Lcom/txdriver/http/request/PushLogRequest$UploadResponseListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/txdriver/http/request/PushLogRequest$UploadResponseListener;->onResponse(Z)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    .line 74
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/txdriver/http/request/PushLogRequest$1;->this$0:Lcom/txdriver/http/request/PushLogRequest;

    invoke-static {p1}, Lcom/txdriver/http/request/PushLogRequest;->access$000(Lcom/txdriver/http/request/PushLogRequest;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "File was uploaded successfully"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p1, p0, Lcom/txdriver/http/request/PushLogRequest$1;->this$0:Lcom/txdriver/http/request/PushLogRequest;

    iget-object p1, p1, Lcom/txdriver/http/request/PushLogRequest;->listener:Lcom/txdriver/http/request/PushLogRequest$UploadResponseListener;

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/txdriver/http/request/PushLogRequest$1;->this$0:Lcom/txdriver/http/request/PushLogRequest;

    iget-object p1, p1, Lcom/txdriver/http/request/PushLogRequest;->listener:Lcom/txdriver/http/request/PushLogRequest$UploadResponseListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/txdriver/http/request/PushLogRequest$UploadResponseListener;->onResponse(Z)V

    .line 78
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    :cond_0
    return-void
.end method
