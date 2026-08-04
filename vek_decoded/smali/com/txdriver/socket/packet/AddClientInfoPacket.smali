.class public Lcom/txdriver/socket/packet/AddClientInfoPacket;
.super Lcom/txdriver/socket/packet/ClientPacket;
.source "AddClientInfoPacket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/packet/ClientPacket<",
        "Lcom/txdriver/socket/packet/AddClientInfoPacket;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public clientCurrentOrderId:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field public clientName:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public clientPhone:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/txdriver/socket/packet/ClientPacket;-><init>()V

    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/txdriver/socket/packet/AddClientInfoPacket;->clientCurrentOrderId:I

    .line 20
    iput-object p2, p0, Lcom/txdriver/socket/packet/AddClientInfoPacket;->clientPhone:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/txdriver/socket/packet/AddClientInfoPacket;->clientName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()B
    .locals 1

    const/16 v0, 0x49

    return v0
.end method

.method public getData()Lcom/txdriver/socket/packet/AddClientInfoPacket;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/txdriver/socket/packet/AddClientInfoPacket;->getData()Lcom/txdriver/socket/packet/AddClientInfoPacket;

    move-result-object v0

    return-object v0
.end method
