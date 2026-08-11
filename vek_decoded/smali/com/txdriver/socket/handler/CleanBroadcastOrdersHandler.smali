.class public Lcom/txdriver/socket/handler/CleanBroadcastOrdersHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "CleanBroadcastOrdersHandler.java"


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/packet/ServerPacket;)V
    .locals 0

    .line 17
    invoke-static {}, Lcom/txdriver/db/Order;->deleteBroadcastOrders()V

    return-void
.end method

.method public handle(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
