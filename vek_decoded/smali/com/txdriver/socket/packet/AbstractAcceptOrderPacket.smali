.class public abstract Lcom/txdriver/socket/packet/AbstractAcceptOrderPacket;
.super Lcom/txdriver/socket/packet/ClientPacket;
.source "AbstractAcceptOrderPacket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/packet/ClientPacket<",
        "Lcom/txdriver/socket/data/AcceptOrderWithDeliveryTimeData;",
        ">;"
    }
.end annotation


# instance fields
.field private data:Lcom/txdriver/socket/data/AcceptOrderWithDeliveryTimeData;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/txdriver/socket/packet/ClientPacket;-><init>()V

    .line 9
    new-instance v0, Lcom/txdriver/socket/data/AcceptOrderWithDeliveryTimeData;

    invoke-direct {v0}, Lcom/txdriver/socket/data/AcceptOrderWithDeliveryTimeData;-><init>()V

    iput-object v0, p0, Lcom/txdriver/socket/packet/AbstractAcceptOrderPacket;->data:Lcom/txdriver/socket/data/AcceptOrderWithDeliveryTimeData;

    .line 10
    iput-object p1, v0, Lcom/txdriver/socket/data/AcceptOrderWithDeliveryTimeData;->orderId:Ljava/lang/Integer;

    .line 11
    iget-object p1, p0, Lcom/txdriver/socket/packet/AbstractAcceptOrderPacket;->data:Lcom/txdriver/socket/data/AcceptOrderWithDeliveryTimeData;

    iput-object p2, p1, Lcom/txdriver/socket/data/AcceptOrderWithDeliveryTimeData;->deliveryTime:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getData()Lcom/txdriver/socket/data/AcceptOrderWithDeliveryTimeData;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/txdriver/socket/packet/AbstractAcceptOrderPacket;->data:Lcom/txdriver/socket/data/AcceptOrderWithDeliveryTimeData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/txdriver/socket/packet/AbstractAcceptOrderPacket;->getData()Lcom/txdriver/socket/data/AcceptOrderWithDeliveryTimeData;

    move-result-object v0

    return-object v0
.end method
