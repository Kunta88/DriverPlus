.class Lcom/txdriver/socket/Client$Connection;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/socket/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/socket/Client;


# direct methods
.method private constructor <init>(Lcom/txdriver/socket/Client;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/txdriver/socket/Client;Lcom/txdriver/socket/Client$1;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/txdriver/socket/Client$Connection;-><init>(Lcom/txdriver/socket/Client;)V

    return-void
.end method

.method private finishConnection(Ljava/nio/channels/SelectionKey;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 198
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 200
    invoke-virtual {p1, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 201
    iget-object p1, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/txdriver/socket/Client;->access$002(Lcom/txdriver/socket/Client;I)I

    .line 202
    iget-object p1, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {p1}, Lcom/txdriver/socket/Client;->access$300(Lcom/txdriver/socket/Client;)Lcom/txdriver/socket/SocketClientListener;

    move-result-object p1

    iget-object v1, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-interface {p1, v1}, Lcom/txdriver/socket/SocketClientListener;->onConnected(Lcom/txdriver/socket/Client;)V

    :cond_0
    return v0
.end method

.method private read(Ljava/nio/channels/SelectionKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 211
    iget-object v1, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v1}, Lcom/txdriver/socket/Client;->access$1200(Lcom/txdriver/socket/Client;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 212
    iget-object v1, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v1}, Lcom/txdriver/socket/Client;->access$1200(Lcom/txdriver/socket/Client;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 218
    iget-object p1, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {p1}, Lcom/txdriver/socket/Client;->access$1200(Lcom/txdriver/socket/Client;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 219
    iget-object p1, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {p1}, Lcom/txdriver/socket/Client;->access$300(Lcom/txdriver/socket/Client;)Lcom/txdriver/socket/SocketClientListener;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v0}, Lcom/txdriver/socket/Client;->access$1200(Lcom/txdriver/socket/Client;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/txdriver/socket/SocketClientListener;->onRead(Lcom/txdriver/socket/Client;Ljava/nio/ByteBuffer;)V

    .line 220
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {p1}, Lcom/txdriver/socket/Client;->access$1200(Lcom/txdriver/socket/Client;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 221
    iget-object p1, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {p1}, Lcom/txdriver/socket/Client;->access$1300(Lcom/txdriver/socket/Client;)Lcom/txdriver/socket/FrameDecoder;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v0}, Lcom/txdriver/socket/Client;->access$1200(Lcom/txdriver/socket/Client;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/txdriver/socket/FrameDecoder;->decode(Ljava/nio/ByteBuffer;)Lcom/txdriver/socket/Packet;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v0}, Lcom/txdriver/socket/Client;->access$300(Lcom/txdriver/socket/Client;)Lcom/txdriver/socket/SocketClientListener;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-interface {v0, v1, p1}, Lcom/txdriver/socket/SocketClientListener;->onRead(Lcom/txdriver/socket/Client;Lcom/txdriver/socket/Packet;)V

    goto :goto_0

    :cond_1
    return-void

    .line 214
    :cond_2
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->close()V

    .line 215
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 216
    new-instance p1, Ljava/io/IOException;

    const-string v0, "SocketChannel has reached end-of-stream"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private write(Ljava/nio/channels/SelectionKey;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 230
    invoke-static {}, Lcom/txdriver/socket/Client;->access$1000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2}, Lcom/txdriver/socket/Client;->access$1100(Lcom/txdriver/socket/Client;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 233
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/socket/Packet;

    .line 235
    invoke-interface {v3}, Lcom/txdriver/socket/Packet;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 236
    invoke-virtual {v0, v4}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 237
    iget-object v4, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v4}, Lcom/txdriver/socket/Client;->access$300(Lcom/txdriver/socket/Client;)Lcom/txdriver/socket/SocketClientListener;

    move-result-object v4

    iget-object v5, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-interface {v4, v5, v3}, Lcom/txdriver/socket/SocketClientListener;->onWrite(Lcom/txdriver/socket/Client;Lcom/txdriver/socket/Packet;)V

    .line 238
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 241
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 242
    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    return-void

    :catchall_0
    move-exception p1

    .line 241
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 104
    :try_start_0
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/txdriver/socket/Client;->access$002(Lcom/txdriver/socket/Client;I)I

    .line 105
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2}, Lcom/txdriver/socket/Client;->access$300(Lcom/txdriver/socket/Client;)Lcom/txdriver/socket/SocketClientListener;

    move-result-object v2

    iget-object v3, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-interface {v2, v3}, Lcom/txdriver/socket/SocketClientListener;->onConnecting(Lcom/txdriver/socket/Client;)V

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v4}, Lcom/txdriver/socket/Client;->access$400(Lcom/txdriver/socket/Client;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 107
    iget-object v4, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v4}, Lcom/txdriver/socket/Client;->access$500(Lcom/txdriver/socket/Client;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 108
    iget-object v4, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v4}, Lcom/txdriver/socket/Client;->access$500(Lcom/txdriver/socket/Client;)J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/txdriver/socket/Client;->access$402(Lcom/txdriver/socket/Client;J)J

    .line 111
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/txdriver/socket/Client;->access$602(Lcom/txdriver/socket/Client;Ljava/nio/channels/Selector;)Ljava/nio/channels/Selector;

    .line 112
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/txdriver/socket/Client;->access$702(Lcom/txdriver/socket/Client;Ljava/nio/channels/SocketChannel;)Ljava/nio/channels/SocketChannel;

    .line 113
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2}, Lcom/txdriver/socket/Client;->access$700(Lcom/txdriver/socket/Client;)Ljava/nio/channels/SocketChannel;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 115
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v3}, Lcom/txdriver/socket/Client;->access$800(Lcom/txdriver/socket/Client;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v4}, Lcom/txdriver/socket/Client;->access$900(Lcom/txdriver/socket/Client;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 116
    iget-object v3, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v3}, Lcom/txdriver/socket/Client;->access$700(Lcom/txdriver/socket/Client;)Ljava/nio/channels/SocketChannel;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 117
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2}, Lcom/txdriver/socket/Client;->access$700(Lcom/txdriver/socket/Client;)Ljava/nio/channels/SocketChannel;

    move-result-object v2

    iget-object v3, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v3}, Lcom/txdriver/socket/Client;->access$600(Lcom/txdriver/socket/Client;)Ljava/nio/channels/Selector;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 119
    :goto_0
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2}, Lcom/txdriver/socket/Client;->access$000(Lcom/txdriver/socket/Client;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_7

    .line 120
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2}, Lcom/txdriver/socket/Client;->access$600(Lcom/txdriver/socket/Client;)Ljava/nio/channels/Selector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->select()I

    .line 121
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2}, Lcom/txdriver/socket/Client;->access$600(Lcom/txdriver/socket/Client;)Ljava/nio/channels/Selector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 122
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 123
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 124
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 126
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 130
    :cond_2
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 131
    invoke-direct {p0, v3}, Lcom/txdriver/socket/Client$Connection;->finishConnection(Ljava/nio/channels/SelectionKey;)Z

    goto :goto_1

    .line 132
    :cond_3
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 133
    invoke-direct {p0, v3}, Lcom/txdriver/socket/Client$Connection;->read(Ljava/nio/channels/SelectionKey;)V

    goto :goto_1

    .line 134
    :cond_4
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    invoke-direct {p0, v3}, Lcom/txdriver/socket/Client$Connection;->write(Ljava/nio/channels/SelectionKey;)V

    goto :goto_1

    .line 139
    :cond_5
    invoke-static {}, Lcom/txdriver/socket/Client;->access$1000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    :try_start_1
    iget-object v3, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v3}, Lcom/txdriver/socket/Client;->access$1100(Lcom/txdriver/socket/Client;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 141
    iget-object v3, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v3}, Lcom/txdriver/socket/Client;->access$700(Lcom/txdriver/socket/Client;)Ljava/nio/channels/SocketChannel;

    move-result-object v3

    iget-object v4, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v4}, Lcom/txdriver/socket/Client;->access$600(Lcom/txdriver/socket/Client;)Ljava/nio/channels/Selector;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v4, 0x4

    .line 143
    invoke-virtual {v3, v4}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 146
    :cond_6
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    .line 149
    :cond_7
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2}, Lcom/txdriver/socket/Client;->access$000(Lcom/txdriver/socket/Client;)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v2, v3, :cond_a

    .line 160
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2}, Lcom/txdriver/socket/Client;->access$700(Lcom/txdriver/socket/Client;)Ljava/nio/channels/SocketChannel;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 162
    :try_start_3
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2}, Lcom/txdriver/socket/Client;->access$700(Lcom/txdriver/socket/Client;)Ljava/nio/channels/SocketChannel;

    move-result-object v2

    iget-object v3, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v3}, Lcom/txdriver/socket/Client;->access$600(Lcom/txdriver/socket/Client;)Ljava/nio/channels/Selector;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 164
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 167
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    :cond_8
    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2}, Lcom/txdriver/socket/Client;->access$700(Lcom/txdriver/socket/Client;)Ljava/nio/channels/SocketChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 172
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    :goto_3
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2, v1}, Lcom/txdriver/socket/Client;->access$702(Lcom/txdriver/socket/Client;Ljava/nio/channels/SocketChannel;)Ljava/nio/channels/SocketChannel;

    .line 176
    :cond_9
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2}, Lcom/txdriver/socket/Client;->access$600(Lcom/txdriver/socket/Client;)Ljava/nio/channels/Selector;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 178
    :try_start_5
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2}, Lcom/txdriver/socket/Client;->access$600(Lcom/txdriver/socket/Client;)Ljava/nio/channels/Selector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    .line 180
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    :goto_4
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2, v1}, Lcom/txdriver/socket/Client;->access$602(Lcom/txdriver/socket/Client;Ljava/nio/channels/Selector;)Ljava/nio/channels/Selector;

    goto/16 :goto_b

    .line 150
    :cond_a
    :try_start_6
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Unexpected thread interruption"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v2

    .line 158
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 160
    iget-object v3, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v3}, Lcom/txdriver/socket/Client;->access$700(Lcom/txdriver/socket/Client;)Ljava/nio/channels/SocketChannel;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 162
    :try_start_8
    iget-object v3, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v3}, Lcom/txdriver/socket/Client;->access$700(Lcom/txdriver/socket/Client;)Ljava/nio/channels/SocketChannel;

    move-result-object v3

    iget-object v4, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v4}, Lcom/txdriver/socket/Client;->access$600(Lcom/txdriver/socket/Client;)Ljava/nio/channels/Selector;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 164
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_5

    :catch_3
    move-exception v3

    .line 167
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    :cond_b
    :goto_5
    :try_start_9
    iget-object v3, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v3}, Lcom/txdriver/socket/Client;->access$700(Lcom/txdriver/socket/Client;)Ljava/nio/channels/SocketChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_6

    :catch_4
    move-exception v3

    .line 172
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    :goto_6
    iget-object v3, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v3, v1}, Lcom/txdriver/socket/Client;->access$702(Lcom/txdriver/socket/Client;Ljava/nio/channels/SocketChannel;)Ljava/nio/channels/SocketChannel;

    .line 176
    :cond_c
    iget-object v3, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v3}, Lcom/txdriver/socket/Client;->access$600(Lcom/txdriver/socket/Client;)Ljava/nio/channels/Selector;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 178
    :try_start_a
    iget-object v3, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v3}, Lcom/txdriver/socket/Client;->access$600(Lcom/txdriver/socket/Client;)Ljava/nio/channels/Selector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_7

    :catch_5
    move-exception v3

    .line 180
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    :goto_7
    iget-object v3, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v3, v1}, Lcom/txdriver/socket/Client;->access$602(Lcom/txdriver/socket/Client;Ljava/nio/channels/Selector;)Ljava/nio/channels/Selector;

    :cond_d
    move-object v1, v2

    goto :goto_b

    :catch_6
    move-exception v0

    const/4 v2, 0x1

    .line 155
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 160
    iget-object v0, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v0}, Lcom/txdriver/socket/Client;->access$700(Lcom/txdriver/socket/Client;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 162
    :try_start_c
    iget-object v0, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v0}, Lcom/txdriver/socket/Client;->access$700(Lcom/txdriver/socket/Client;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iget-object v3, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v3}, Lcom/txdriver/socket/Client;->access$600(Lcom/txdriver/socket/Client;)Ljava/nio/channels/Selector;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 164
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_8

    :catch_7
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    :cond_e
    :goto_8
    :try_start_d
    iget-object v0, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v0}, Lcom/txdriver/socket/Client;->access$700(Lcom/txdriver/socket/Client;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    :goto_9
    iget-object v0, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v0, v1}, Lcom/txdriver/socket/Client;->access$702(Lcom/txdriver/socket/Client;Ljava/nio/channels/SocketChannel;)Ljava/nio/channels/SocketChannel;

    .line 176
    :cond_f
    iget-object v0, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v0}, Lcom/txdriver/socket/Client;->access$600(Lcom/txdriver/socket/Client;)Ljava/nio/channels/Selector;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 178
    :try_start_e
    iget-object v0, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v0}, Lcom/txdriver/socket/Client;->access$600(Lcom/txdriver/socket/Client;)Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_a

    :catch_9
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    :goto_a
    iget-object v0, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v0, v1}, Lcom/txdriver/socket/Client;->access$602(Lcom/txdriver/socket/Client;Ljava/nio/channels/Selector;)Ljava/nio/channels/Selector;

    :cond_10
    const/4 v0, 0x1

    :cond_11
    :goto_b
    if-eqz v1, :cond_12

    .line 186
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2}, Lcom/txdriver/socket/Client;->access$300(Lcom/txdriver/socket/Client;)Lcom/txdriver/socket/SocketClientListener;

    move-result-object v2

    iget-object v3, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-interface {v2, v3, v1}, Lcom/txdriver/socket/SocketClientListener;->onExceptionCaught(Lcom/txdriver/socket/Client;Ljava/lang/Throwable;)V

    .line 188
    :cond_12
    iget-object v1, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v1}, Lcom/txdriver/socket/Client;->access$300(Lcom/txdriver/socket/Client;)Lcom/txdriver/socket/SocketClientListener;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-interface {v1, v2}, Lcom/txdriver/socket/SocketClientListener;->onDisconnected(Lcom/txdriver/socket/Client;)V

    if-eqz v0, :cond_13

    .line 190
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_13
    return-void

    :catchall_2
    move-exception v0

    .line 160
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2}, Lcom/txdriver/socket/Client;->access$700(Lcom/txdriver/socket/Client;)Ljava/nio/channels/SocketChannel;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 162
    :try_start_f
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2}, Lcom/txdriver/socket/Client;->access$700(Lcom/txdriver/socket/Client;)Ljava/nio/channels/SocketChannel;

    move-result-object v2

    iget-object v3, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v3}, Lcom/txdriver/socket/Client;->access$600(Lcom/txdriver/socket/Client;)Ljava/nio/channels/Selector;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 164
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_c

    :catch_a
    move-exception v2

    .line 167
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    :cond_14
    :goto_c
    :try_start_10
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2}, Lcom/txdriver/socket/Client;->access$700(Lcom/txdriver/socket/Client;)Ljava/nio/channels/SocketChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_d

    :catch_b
    move-exception v2

    .line 172
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    :goto_d
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2, v1}, Lcom/txdriver/socket/Client;->access$702(Lcom/txdriver/socket/Client;Ljava/nio/channels/SocketChannel;)Ljava/nio/channels/SocketChannel;

    .line 176
    :cond_15
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2}, Lcom/txdriver/socket/Client;->access$600(Lcom/txdriver/socket/Client;)Ljava/nio/channels/Selector;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 178
    :try_start_11
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2}, Lcom/txdriver/socket/Client;->access$600(Lcom/txdriver/socket/Client;)Ljava/nio/channels/Selector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    goto :goto_e

    :catch_c
    move-exception v2

    .line 180
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    :goto_e
    iget-object v2, p0, Lcom/txdriver/socket/Client$Connection;->this$0:Lcom/txdriver/socket/Client;

    invoke-static {v2, v1}, Lcom/txdriver/socket/Client;->access$602(Lcom/txdriver/socket/Client;Ljava/nio/channels/Selector;)Ljava/nio/channels/Selector;

    .line 184
    :cond_16
    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method
