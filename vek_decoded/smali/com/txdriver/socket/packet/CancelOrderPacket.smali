.class public Lcom/txdriver/socket/packet/CancelOrderPacket;
.super Lcom/txdriver/socket/packet/ClientPacket;
.source "CancelOrderPacket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/packet/ClientPacket<",
        "Lcom/txdriver/socket/data/CancelOrderData;",
        ">;"
    }
.end annotation


# static fields
.field public static final REASON_DRIVER_REJECT:B = -0x1t

.field public static final REASON_RETURN_REJECT:B = -0x3t

.field public static final REASON_TIMEOUT_REJECT:B = -0x2t


# instance fields
.field private data:Lcom/txdriver/socket/data/CancelOrderData;


# direct methods
.method public constructor <init>(IB)V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/txdriver/socket/packet/ClientPacket;-><init>()V

    .line 16
    new-instance v0, Lcom/txdriver/socket/data/CancelOrderData;

    invoke-direct {v0}, Lcom/txdriver/socket/data/CancelOrderData;-><init>()V

    iput-object v0, p0, Lcom/txdriver/socket/packet/CancelOrderPacket;->data:Lcom/txdriver/socket/data/CancelOrderData;

    .line 17
    iput p1, v0, Lcom/txdriver/socket/data/CancelOrderData;->orderId:I

    .line 18
    iget-object p1, p0, Lcom/txdriver/socket/packet/CancelOrderPacket;->data:Lcom/txdriver/socket/data/CancelOrderData;

    iput-byte p2, p1, Lcom/txdriver/socket/data/CancelOrderData;->reasonId:B

    return-void
.end method


# virtual methods
.method public getCode()B
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public getData()Lcom/txdriver/socket/data/CancelOrderData;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/txdriver/socket/packet/CancelOrderPacket;->data:Lcom/txdriver/socket/data/CancelOrderData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/txdriver/socket/packet/CancelOrderPacket;->getData()Lcom/txdriver/socket/data/CancelOrderData;

    move-result-object v0

    return-object v0
.end method

.method public isResponseRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
