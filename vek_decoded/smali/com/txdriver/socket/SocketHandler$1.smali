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
.field private final sessionEpoch:J


# direct methods
.method constructor <init>(Lcom/txdriver/socket/SocketHandler;Lcom/txdriver/socket/handler/AbstractPacketHandler;Lcom/txdriver/socket/packet/ServerPacket;)V
    .locals 2

    invoke-virtual {p1}, Lcom/txdriver/socket/SocketHandler;->getSessionEpoch()J
    move-result-wide v0
    iput-wide v0, p0, Lcom/txdriver/socket/SocketHandler$1;->sessionEpoch:J

    .line 175
    iput-object p1, p0, Lcom/txdriver/socket/SocketHandler$1;->this$0:Lcom/txdriver/socket/SocketHandler;

    iput-object p2, p0, Lcom/txdriver/socket/SocketHandler$1;->val$handler:Lcom/txdriver/socket/handler/AbstractPacketHandler;

    iput-object p3, p0, Lcom/txdriver/socket/SocketHandler$1;->val$packet:Lcom/txdriver/socket/packet/ServerPacket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler$1;->this$0:Lcom/txdriver/socket/SocketHandler;
    invoke-virtual {v0}, Lcom/txdriver/socket/SocketHandler;->getSessionEpoch()J
    move-result-wide v0
    iget-wide v2, p0, Lcom/txdriver/socket/SocketHandler$1;->sessionEpoch:J
    cmp-long v0, v0, v2
    if-nez v0, :done

    :try_start_stable

    .line 178
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler$1;->val$handler:Lcom/txdriver/socket/handler/AbstractPacketHandler;

    iget-object v1, p0, Lcom/txdriver/socket/SocketHandler$1;->val$packet:Lcom/txdriver/socket/packet/ServerPacket;

    invoke-virtual {v0, v1}, Lcom/txdriver/socket/handler/AbstractPacketHandler;->handle(Lcom/txdriver/socket/packet/ServerPacket;)V

    :try_end_stable
    .catch Ljava/lang/RuntimeException; {:try_start_stable .. :try_end_stable} :handler_failed
    goto :done

    :handler_failed
    move-exception v0
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler$1;->this$0:Lcom/txdriver/socket/SocketHandler;
    invoke-virtual {v0}, Lcom/txdriver/socket/SocketHandler;->getSessionEpoch()J
    move-result-wide v0
    iget-wide v2, p0, Lcom/txdriver/socket/SocketHandler$1;->sessionEpoch:J
    cmp-long v0, v0, v2
    if-nez v0, :done
    iget-object v0, p0, Lcom/txdriver/socket/SocketHandler$1;->this$0:Lcom/txdriver/socket/SocketHandler;
    invoke-virtual {v0}, Lcom/txdriver/socket/SocketHandler;->onPacketFailure()V

    :done

    return-void
.end method
