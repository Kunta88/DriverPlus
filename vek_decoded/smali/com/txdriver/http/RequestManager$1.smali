.class Lcom/txdriver/http/RequestManager$1;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/http/RequestManager;->putToCache(Lcom/txdriver/http/request/HttpRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/http/RequestManager;

.field final synthetic val$key:I


# direct methods
.method constructor <init>(Lcom/txdriver/http/RequestManager;I)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/txdriver/http/RequestManager$1;->this$0:Lcom/txdriver/http/RequestManager;

    iput p2, p0, Lcom/txdriver/http/RequestManager$1;->val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/txdriver/http/RequestManager$1;->this$0:Lcom/txdriver/http/RequestManager;

    invoke-static {v0}, Lcom/txdriver/http/RequestManager;->access$000(Lcom/txdriver/http/RequestManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/txdriver/http/RequestManager$1;->val$key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
