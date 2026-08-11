.class public Lcom/txdriver/socket/packet/OrderStatePacket;
.super Lcom/txdriver/socket/packet/ClientPacket;
.source "OrderStatePacket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/packet/ClientPacket<",
        "Lcom/txdriver/socket/data/OrderStateData;",
        ">;"
    }
.end annotation


# static fields
.field public static final STATE_ARRIVED:B = 0x3t

.field public static final STATE_DONE:B = 0x5t

.field public static final STATE_ON_ROUTE:B = 0x4t

.field public static final STATE_START_PERFORMING:B = 0x2t


# instance fields
.field private data:Lcom/txdriver/socket/data/OrderStateData;


# direct methods
.method public constructor <init>(IB)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/txdriver/socket/packet/ClientPacket;-><init>()V

    .line 20
    new-instance v0, Lcom/txdriver/socket/data/OrderStateData;

    invoke-direct {v0}, Lcom/txdriver/socket/data/OrderStateData;-><init>()V

    iput-object v0, p0, Lcom/txdriver/socket/packet/OrderStatePacket;->data:Lcom/txdriver/socket/data/OrderStateData;

    .line 21
    iput-byte p2, v0, Lcom/txdriver/socket/data/OrderStateData;->state:B

    .line 22
    iget-object p2, p0, Lcom/txdriver/socket/packet/OrderStatePacket;->data:Lcom/txdriver/socket/data/OrderStateData;

    iput p1, p2, Lcom/txdriver/socket/data/OrderStateData;->orderId:I

    return-void
.end method


# virtual methods
.method public getCode()B
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public getData()Lcom/txdriver/socket/data/OrderStateData;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/txdriver/socket/packet/OrderStatePacket;->data:Lcom/txdriver/socket/data/OrderStateData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/txdriver/socket/packet/OrderStatePacket;->getData()Lcom/txdriver/socket/data/OrderStateData;

    move-result-object v0

    return-object v0
.end method

.method public isResponseRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
