.class Lcom/txdriver/http/request/StoreItemsRequest$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "StoreItemsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/http/request/StoreItemsRequest;->request()Lcom/txdriver/json/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/txdriver/json/Response<",
        "Lcom/txdriver/json/StoreItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/http/request/StoreItemsRequest;


# direct methods
.method constructor <init>(Lcom/txdriver/http/request/StoreItemsRequest;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/txdriver/http/request/StoreItemsRequest$1;->this$0:Lcom/txdriver/http/request/StoreItemsRequest;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
