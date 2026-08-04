.class public Lcom/txdriver/filter/OrderAcceptManager;
.super Ljava/lang/Object;
.source "OrderAcceptManager.java"


# static fields
.field private static final THROTTLE_DELAY:I = 0x64


# instance fields
.field private app:Lcom/txdriver/App;

.field private lastAccept:J

.field private packets:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/txdriver/socket/packet/AbstractAcceptOrderPacket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/filter/OrderAcceptManager;->packets:Ljava/util/LinkedList;

    .line 27
    iput-object p1, p0, Lcom/txdriver/filter/OrderAcceptManager;->app:Lcom/txdriver/App;

    .line 28
    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public accept()V
    .locals 5

    .line 51
    invoke-static {}, Lcom/txdriver/db/Order;->getCurrentOrder()Lcom/txdriver/db/Order;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/txdriver/filter/OrderAcceptManager;->packets:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void

    .line 57
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/txdriver/filter/OrderAcceptManager;->lastAccept:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lcom/txdriver/filter/OrderAcceptManager;->packets:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/socket/Packet;

    if-eqz v0, :cond_1

    .line 58
    iget-object v1, p0, Lcom/txdriver/filter/OrderAcceptManager;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/filter/OrderAcceptManager;->lastAccept:J

    :cond_1
    return-void
.end method

.method public add(Lcom/txdriver/db/Order;)V
    .locals 3

    .line 32
    sget-object v0, Lcom/txdriver/filter/OrderAcceptManager$1;->$SwitchMap$com$txdriver$db$Order$Source:[I

    iget-object v1, p1, Lcom/txdriver/db/Order;->source:Lcom/txdriver/db/Order$Source;

    invoke-virtual {v1}, Lcom/txdriver/db/Order$Source;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/txdriver/filter/OrderAcceptManager;->packets:Ljava/util/LinkedList;

    new-instance v1, Lcom/txdriver/socket/packet/AcceptOrderPacket;

    iget p1, p1, Lcom/txdriver/db/Order;->orderId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/txdriver/socket/packet/AcceptOrderPacket;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/txdriver/filter/OrderAcceptManager;->packets:Ljava/util/LinkedList;

    new-instance v1, Lcom/txdriver/socket/packet/AcceptExchangeOrderPacket;

    iget p1, p1, Lcom/txdriver/db/Order;->orderId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/txdriver/socket/packet/AcceptExchangeOrderPacket;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/txdriver/filter/OrderAcceptManager;->packets:Ljava/util/LinkedList;

    new-instance v1, Lcom/txdriver/socket/packet/AcceptMultiTaxiOrderPacket;

    iget p1, p1, Lcom/txdriver/db/Order;->orderId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/txdriver/socket/packet/AcceptMultiTaxiOrderPacket;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/txdriver/filter/OrderAcceptManager;->packets:Ljava/util/LinkedList;

    new-instance v1, Lcom/txdriver/socket/packet/AcceptUpUpOrderPacket;

    iget p1, p1, Lcom/txdriver/db/Order;->orderId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/txdriver/socket/packet/AcceptUpUpOrderPacket;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/txdriver/filter/OrderAcceptManager;->packets:Ljava/util/LinkedList;

    new-instance v1, Lcom/txdriver/socket/packet/AcceptRbtOrderPacket;

    iget p1, p1, Lcom/txdriver/db/Order;->orderId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/txdriver/socket/packet/AcceptRbtOrderPacket;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onEvent(Lcom/txdriver/socket/SocketEvents$AuthEvent;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/txdriver/filter/OrderAcceptManager;->packets:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    return-void
.end method
