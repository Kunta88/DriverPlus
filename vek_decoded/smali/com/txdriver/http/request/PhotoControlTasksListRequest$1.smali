.class Lcom/txdriver/http/request/PhotoControlTasksListRequest$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "PhotoControlTasksListRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/http/request/PhotoControlTasksListRequest;->request()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/ArrayList<",
        "Lcom/txdriver/json/PhotoControlTask;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/http/request/PhotoControlTasksListRequest;


# direct methods
.method constructor <init>(Lcom/txdriver/http/request/PhotoControlTasksListRequest;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/txdriver/http/request/PhotoControlTasksListRequest$1;->this$0:Lcom/txdriver/http/request/PhotoControlTasksListRequest;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
