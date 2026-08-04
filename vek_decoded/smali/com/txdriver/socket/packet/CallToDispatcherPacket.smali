.class public Lcom/txdriver/socket/packet/CallToDispatcherPacket;
.super Lcom/txdriver/socket/packet/ClientPacket;
.source "CallToDispatcherPacket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/packet/ClientPacket<",
        "Lcom/txdriver/socket/packet/CallToDispatcherPacket;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public orderId:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/txdriver/socket/packet/ClientPacket;-><init>()V

    .line 13
    iput p1, p0, Lcom/txdriver/socket/packet/CallToDispatcherPacket;->orderId:I

    return-void
.end method


# virtual methods
.method public getCode()B
    .locals 1

    const/16 v0, 0x4a

    return v0
.end method

.method public getData()Lcom/txdriver/socket/packet/CallToDispatcherPacket;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/txdriver/socket/packet/CallToDispatcherPacket;->getData()Lcom/txdriver/socket/packet/CallToDispatcherPacket;

    move-result-object v0

    return-object v0
.end method
