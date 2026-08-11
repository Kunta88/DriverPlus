.class Lcom/txdriver/socket/handler/OrderHandler$1;
.super Ljava/lang/Object;
.source "OrderHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/socket/handler/OrderHandler;->startActivity(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/socket/handler/OrderHandler;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/txdriver/socket/handler/OrderHandler;J)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/txdriver/socket/handler/OrderHandler$1;->this$0:Lcom/txdriver/socket/handler/OrderHandler;

    iput-wide p2, p0, Lcom/txdriver/socket/handler/OrderHandler$1;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/txdriver/socket/handler/OrderHandler$1;->this$0:Lcom/txdriver/socket/handler/OrderHandler;

    iget-object v0, v0, Lcom/txdriver/socket/handler/OrderHandler;->app:Lcom/txdriver/App;

    iget-wide v1, p0, Lcom/txdriver/socket/handler/OrderHandler$1;->val$id:J

    invoke-static {v0, v1, v2}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->start(Lcom/txdriver/App;J)V

    return-void
.end method
