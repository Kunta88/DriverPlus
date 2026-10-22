.class public Lcom/txdriver/socket/packet/AcceptOrderPacket;
.super Lcom/txdriver/socket/packet/AbstractAcceptOrderPacket;
.source "AcceptOrderPacket.java"


# static fields
.field public static final RESULT_NOT_ALLOWED:B = 0x2t

.field public static final RESULT_OK:B = 0x1t


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/txdriver/socket/packet/AbstractAcceptOrderPacket;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public onWrite()V
    .locals 1
    invoke-super {p0}, Lcom/txdriver/socket/packet/AbstractAcceptOrderPacket;->onWrite()V
    invoke-virtual {p0}, Lcom/txdriver/socket/packet/AcceptOrderPacket;->getData()Lcom/txdriver/socket/data/AcceptOrderWithDeliveryTimeData;
    move-result-object v0
    iget-object v0, v0, Lcom/txdriver/socket/data/AcceptOrderWithDeliveryTimeData;->orderId:Ljava/lang/Integer;
    if-eqz v0, :done
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    move-result v0
    invoke-static {v0}, Lcom/txdriver/compat/EventGuard;->autoAccepted(I)V
    :done
    return-void
.end method

.method public getCode()B
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public isResponseRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
