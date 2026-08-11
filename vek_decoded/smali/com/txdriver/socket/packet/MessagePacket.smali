.class public Lcom/txdriver/socket/packet/MessagePacket;
.super Lcom/txdriver/socket/packet/ClientPacket;
.source "MessagePacket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/packet/ClientPacket<",
        "Lcom/txdriver/socket/packet/MessagePacket;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public id:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/txdriver/socket/packet/ClientPacket;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/txdriver/socket/packet/MessagePacket;->text:Ljava/lang/String;

    .line 24
    iput p1, p0, Lcom/txdriver/socket/packet/MessagePacket;->id:I

    return-void
.end method


# virtual methods
.method public getCode()B
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public getData()Lcom/txdriver/socket/packet/MessagePacket;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/txdriver/socket/packet/MessagePacket;->getData()Lcom/txdriver/socket/packet/MessagePacket;

    move-result-object v0

    return-object v0
.end method

.method public onWrite()V
    .locals 2

    .line 39
    invoke-super {p0}, Lcom/txdriver/socket/packet/ClientPacket;->onWrite()V

    .line 40
    iget-object v0, p0, Lcom/txdriver/socket/packet/MessagePacket;->text:Ljava/lang/String;

    sget-object v1, Lcom/txdriver/db/ChatMessage$Type;->OUTGOING:Lcom/txdriver/db/ChatMessage$Type;

    invoke-static {v0, v1}, Lcom/txdriver/db/ChatMessage;->create(Ljava/lang/String;Lcom/txdriver/db/ChatMessage$Type;)Lcom/txdriver/db/ChatMessage;

    return-void
.end method
