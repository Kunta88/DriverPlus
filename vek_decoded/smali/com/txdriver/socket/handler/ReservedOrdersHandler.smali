.class public Lcom/txdriver/socket/handler/ReservedOrdersHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "ReservedOrdersHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Ljava/util/List<",
        "Lcom/txdriver/socket/data/ReservedOrderData;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReservedOrdersHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 21
    new-instance v0, Lcom/txdriver/socket/data/template/ReservedOrderTemplate;

    invoke-direct {v0}, Lcom/txdriver/socket/data/template/ReservedOrderTemplate;-><init>()V

    invoke-static {v0}, Lorg/msgpack/template/Templates;->tList(Lorg/msgpack/template/Template;)Lorg/msgpack/template/Template;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Lorg/msgpack/template/Template;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/ReservedOrdersHandler;->handle(Ljava/util/List;)V

    return-void
.end method

.method public handle(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/ReservedOrderData;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-static {}, Lcom/txdriver/db/Order;->deleteReservedOrders()V

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/socket/data/OrderData;

    .line 28
    iget-object v1, p0, Lcom/txdriver/socket/handler/ReservedOrdersHandler;->app:Lcom/txdriver/App;

    sget-object v2, Lcom/txdriver/db/Order$Status;->ACCEPTED:Lcom/txdriver/db/Order$Status;

    sget-object v3, Lcom/txdriver/db/Order$Kind;->RESERVED:Lcom/txdriver/db/Order$Kind;

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lcom/txdriver/order/OrderManager;->createOrder(Lcom/txdriver/App;Lcom/txdriver/socket/data/OrderData;Lcom/txdriver/db/Order$Status;Lcom/txdriver/db/Order$Kind;Z)Lcom/txdriver/db/Order;

    goto :goto_0

    .line 30
    :cond_0
    const-class p1, Lcom/txdriver/db/Order;

    invoke-static {p1}, Lcom/txdriver/db/Order;->notifyChanged(Ljava/lang/Class;)V

    return-void
.end method
