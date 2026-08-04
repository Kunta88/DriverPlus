.class Lcom/txdriver/http/request/ArchiveRequest$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "ArchiveRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/http/request/ArchiveRequest;->request()Lcom/txdriver/json/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/txdriver/json/Response<",
        "Lcom/txdriver/json/ArchiveOrder;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/http/request/ArchiveRequest;


# direct methods
.method constructor <init>(Lcom/txdriver/http/request/ArchiveRequest;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/txdriver/http/request/ArchiveRequest$1;->this$0:Lcom/txdriver/http/request/ArchiveRequest;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
