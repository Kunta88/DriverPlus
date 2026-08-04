.class Lcom/txdriver/socket/handler/AcceptOrderDelegate$1;
.super Ljava/lang/Object;
.source "AcceptOrderDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/socket/handler/AcceptOrderDelegate;->startOrderActivity(Lcom/txdriver/db/Order;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/socket/handler/AcceptOrderDelegate;

.field final synthetic val$order:Lcom/txdriver/db/Order;


# direct methods
.method constructor <init>(Lcom/txdriver/socket/handler/AcceptOrderDelegate;Lcom/txdriver/db/Order;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/txdriver/socket/handler/AcceptOrderDelegate$1;->this$0:Lcom/txdriver/socket/handler/AcceptOrderDelegate;

    iput-object p2, p0, Lcom/txdriver/socket/handler/AcceptOrderDelegate$1;->val$order:Lcom/txdriver/db/Order;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 75
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/txdriver/socket/handler/AcceptOrderDelegate$1;->this$0:Lcom/txdriver/socket/handler/AcceptOrderDelegate;

    invoke-static {v1}, Lcom/txdriver/socket/handler/AcceptOrderDelegate;->access$000(Lcom/txdriver/socket/handler/AcceptOrderDelegate;)Lcom/txdriver/App;

    move-result-object v1

    const-class v2, Lcom/txdriver/ui/activity/OrderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    iget-object v1, p0, Lcom/txdriver/socket/handler/AcceptOrderDelegate$1;->val$order:Lcom/txdriver/db/Order;

    invoke-virtual {v1}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "extra_order_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lcom/txdriver/socket/handler/AcceptOrderDelegate$1;->this$0:Lcom/txdriver/socket/handler/AcceptOrderDelegate;

    invoke-static {v1}, Lcom/txdriver/socket/handler/AcceptOrderDelegate;->access$000(Lcom/txdriver/socket/handler/AcceptOrderDelegate;)Lcom/txdriver/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/txdriver/App;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
