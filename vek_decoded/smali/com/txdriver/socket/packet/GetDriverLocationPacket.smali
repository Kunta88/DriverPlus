.class public Lcom/txdriver/socket/packet/GetDriverLocationPacket;
.super Lcom/txdriver/socket/packet/ClientPacket;
.source "GetDriverLocationPacket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/packet/ClientPacket<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private driverId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/txdriver/socket/packet/ClientPacket;-><init>()V

    .line 12
    iput p1, p0, Lcom/txdriver/socket/packet/GetDriverLocationPacket;->driverId:I

    return-void
.end method


# virtual methods
.method public getCode()B
    .locals 1

    const/16 v0, 0x1b

    return v0
.end method

.method public getData()Ljava/lang/Integer;
    .locals 1

    .line 22
    iget v0, p0, Lcom/txdriver/socket/packet/GetDriverLocationPacket;->driverId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/txdriver/socket/packet/GetDriverLocationPacket;->getData()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
