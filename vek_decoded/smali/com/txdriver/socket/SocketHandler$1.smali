.class Lcom/txdriver/socket/SocketHandler$1;
.super Ljava/lang/Object;
.source "SocketHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/socket/SocketHandler;->onRead(Lcom/txdriver/socket/Client;Lcom/txdriver/socket/Packet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/socket/SocketHandler;

.field final synthetic val$handler:Lcom/txdriver/socket/handler/AbstractPacketHandler;

.field final synthetic val$packet:Lcom/txdriver/socket/packet/ServerPacket;


# direct methods
.method constructor <init>(Lcom/txdriver/socket/SocketHandler;Lcom/txdriver/socket/handler/AbstractPacketHandler;Lcom/txdriver/socket/packet/ServerPacket;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/txdriver/socket/SocketHandler$1;->this$0:Lcom/txdriver/socket/SocketHandler;

    iput-object p2, p0, Lcom/txdriver/socket/SocketHandler$1;->val$handler:Lcom/txdriver/socket/handler/AbstractPacketHandler;

    iput-object p3, p0, Lcom/txdriver/socket/SocketHandler$1;->val$packet:Lcom/txdriver/socket/packet/ServerPacket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler$1;->val$handler:Lcom/txdriver/socket/handler/AbstractPacketHandler;

    iget-object v1, p0, Lcom/txdriver/socket/SocketHandler$1;->val$packet:Lcom/txdriver/socket/packet/ServerPacket;

    invoke-virtual {v0, v1}, Lcom/txdriver/socket/handler/AbstractPacketHandler;->handle(Lcom/txdriver/socket/packet/ServerPacket;)V

    return-void
.end method
