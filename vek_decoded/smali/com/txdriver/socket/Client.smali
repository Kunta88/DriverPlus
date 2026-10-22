.class public final Lcom/txdriver/socket/Client;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/socket/Client$Frame;
    }
.end annotation


# static fields
.field public static final STATE_CONNECTED:I = 0x4

.field public static final STATE_CONNECTING:I = 0x3

.field public static final STATE_DISCONNECTED:I = 0x2

.field public static final STATE_OPEN:I = 0x1


# instance fields
.field private volatile channel:Ljava/nio/channels/SocketChannel;

.field private final control:Ljava/lang/Object;

.field private final decoder:Lcom/txdriver/socket/FrameDecoder;

.field private enabled:Z

.field private volatile failure:Ljava/lang/String;

.field private generation:J

.field private host:Ljava/lang/String;

.field private final listener:Lcom/txdriver/socket/SocketClientListener;

.field private minimumDelay:J

.field private port:I

.field private final queue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/txdriver/socket/Client$Frame;",
            ">;"
        }
    .end annotation
.end field

.field private queuedBytes:I

.field private volatile selector:Ljava/nio/channels/Selector;

.field private volatile state:I

.field private worker:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/txdriver/socket/SocketClientListener;Lcom/txdriver/socket/FrameDecoder;)V
    .registers 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/txdriver/socket/Client;->control:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/txdriver/socket/Client;->queue:Ljava/util/ArrayDeque;

    .line 19
    const/4 v0, 0x2

    iput v0, p0, Lcom/txdriver/socket/Client;->state:I

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/txdriver/socket/Client;->failure:Ljava/lang/String;

    .line 25
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/txdriver/socket/Client;->minimumDelay:J

    .line 37
    iput-object p1, p0, Lcom/txdriver/socket/Client;->listener:Lcom/txdriver/socket/SocketClientListener;

    iput-object p2, p0, Lcom/txdriver/socket/Client;->decoder:Lcom/txdriver/socket/FrameDecoder;

    .line 38
    return-void
.end method

.method private current(J)Z
    .registers 7

    .line 83
    iget-object v0, p0, Lcom/txdriver/socket/Client;->control:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/txdriver/socket/Client;->enabled:Z

    if-eqz v1, :cond_f

    iget-wide v1, p0, Lcom/txdriver/socket/Client;->generation:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    monitor-exit v0

    return p1

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method private discardQueue()V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/txdriver/socket/Client;->control:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/txdriver/socket/Client;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/txdriver/socket/Client;->queuedBytes:I

    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private wake()V
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/txdriver/socket/Client;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_7
    return-void
.end method


# virtual methods
.method public close()V
    .registers 6

    .line 62
    iget-object v0, p0, Lcom/txdriver/socket/Client;->control:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/txdriver/socket/Client;->enabled:Z

    iget-wide v1, p0, Lcom/txdriver/socket/Client;->generation:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/txdriver/socket/Client;->generation:J

    const/4 v1, 0x2

    iput v1, p0, Lcom/txdriver/socket/Client;->state:I

    iget-object v1, p0, Lcom/txdriver/socket/Client;->control:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_23

    .line 63
    invoke-direct {p0}, Lcom/txdriver/socket/Client;->wake()V

    .line 64
    iget-object v0, p0, Lcom/txdriver/socket/Client;->channel:Ljava/nio/channels/SocketChannel;

    .line 65
    if-eqz v0, :cond_22

    :try_start_1d
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v0

    .line 66
    :cond_22
    :goto_22
    return-void

    .line 62
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public getLastFailure()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/txdriver/socket/Client;->failure:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()J
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/txdriver/socket/Client;->control:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/txdriver/socket/Client;->generation:J

    monitor-exit v0

    return-wide v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isSocketConnected()Z
    .registers 3

    .line 39
    iget v0, p0, Lcom/txdriver/socket/Client;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public open(Ljava/lang/String;I)V
    .registers 5

    .line 44
    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    if-lt p2, v0, :cond_3c

    const v0, 0xffff

    if-le p2, v0, :cond_15

    goto :goto_3c

    .line 45
    :cond_15
    iget-object v0, p0, Lcom/txdriver/socket/Client;->control:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_18
    iget-boolean v1, p0, Lcom/txdriver/socket/Client;->enabled:Z

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Lcom/txdriver/socket/Client;->isSocketConnected()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/txdriver/socket/Client;->host:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget v1, p0, Lcom/txdriver/socket/Client;->port:I

    if-ne p2, v1, :cond_30

    monitor-exit v0

    return-void

    .line 47
    :cond_30
    iput-object p1, p0, Lcom/txdriver/socket/Client;->host:Ljava/lang/String;

    iput p2, p0, Lcom/txdriver/socket/Client;->port:I

    .line 48
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_18 .. :try_end_35} :catchall_39

    .line 49
    invoke-virtual {p0}, Lcom/txdriver/socket/Client;->reconn()V

    .line 50
    return-void

    .line 48
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1

    .line 44
    :cond_3c
    :goto_3c
    const-string p1, "\u041d\u0435\u043a\u043e\u0440\u0440\u0435\u043a\u0442\u043d\u044b\u0439 \u0430\u0434\u0440\u0435\u0441 \u0441\u0435\u0440\u0432\u0435\u0440\u0430"

    iput-object p1, p0, Lcom/txdriver/socket/Client;->failure:Ljava/lang/String;

    return-void
.end method

.method public reconn()V
    .registers 8

    .line 52
    iget-object v0, p0, Lcom/txdriver/socket/Client;->control:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_3
    iget-object v1, p0, Lcom/txdriver/socket/Client;->host:Ljava/lang/String;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/txdriver/socket/Client;->host:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4a

    iget v1, p0, Lcom/txdriver/socket/Client;->port:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_4a

    iget v1, p0, Lcom/txdriver/socket/Client;->port:I

    const v3, 0xffff

    if-le v1, v3, :cond_20

    goto :goto_4a

    .line 54
    :cond_20
    iput-boolean v2, p0, Lcom/txdriver/socket/Client;->enabled:Z

    iget-wide v3, p0, Lcom/txdriver/socket/Client;->generation:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/txdriver/socket/Client;->generation:J

    .line 56
    iget-object v1, p0, Lcom/txdriver/socket/Client;->worker:Ljava/lang/Thread;

    if-nez v1, :cond_40

    new-instance v1, Ljava/lang/Thread;

    const-string v3, "DriverPlus-Connection"

    invoke-direct {v1, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/txdriver/socket/Client;->worker:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/txdriver/socket/Client;->worker:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v1, p0, Lcom/txdriver/socket/Client;->worker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 57
    :cond_40
    iget-object v1, p0, Lcom/txdriver/socket/Client;->control:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 58
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_4c

    .line 59
    invoke-direct {p0}, Lcom/txdriver/socket/Client;->wake()V

    .line 60
    return-void

    .line 53
    :cond_4a
    :goto_4a
    :try_start_4a
    monitor-exit v0

    return-void

    .line 58
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public run()V
    .registers 24

    .line 89
    move-object/from16 v1, p0

    .line 90
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v5, v3

    const/4 v7, 0x0

    .line 95
    :goto_7
    iget-object v8, v1, Lcom/txdriver/socket/Client;->control:Ljava/lang/Object;

    monitor-enter v8

    .line 97
    :goto_a
    :try_start_a
    iget-boolean v0, v1, Lcom/txdriver/socket/Client;->enabled:Z

    if-nez v0, :cond_14

    iget-object v0, v1, Lcom/txdriver/socket/Client;->control:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_a

    .line 98
    :cond_14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long v9, v5, v9

    const-wide/32 v11, 0xf4240

    div-long/2addr v9, v11

    .line 99
    const-wide/16 v13, 0x7530

    cmp-long v0, v9, v3

    if-lez v0, :cond_30

    iget-object v0, v1, Lcom/txdriver/socket/Client;->control:Ljava/lang/Object;

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_2d} :catch_328
    .catchall {:try_start_a .. :try_end_2d} :catchall_326

    :try_start_2d
    monitor-exit v8

    goto/16 :goto_32a

    .line 100
    :cond_30
    nop

    .line 101
    iget-wide v9, v1, Lcom/txdriver/socket/Client;->generation:J

    iget-object v0, v1, Lcom/txdriver/socket/Client;->host:Ljava/lang/String;

    iget v15, v1, Lcom/txdriver/socket/Client;->port:I

    .line 102
    monitor-exit v8
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_326

    .line 103
    nop

    .line 104
    nop

    .line 105
    nop

    .line 107
    const/4 v8, 0x2

    const-wide/16 v16, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_40
    invoke-direct/range {p0 .. p0}, Lcom/txdriver/socket/Client;->discardQueue()V

    iget-object v11, v1, Lcom/txdriver/socket/Client;->decoder:Lcom/txdriver/socket/FrameDecoder;

    invoke-interface {v11}, Lcom/txdriver/socket/FrameDecoder;->reset()V

    const/4 v11, 0x3

    iput v11, v1, Lcom/txdriver/socket/Client;->state:I

    .line 108
    iget-object v11, v1, Lcom/txdriver/socket/Client;->listener:Lcom/txdriver/socket/SocketClientListener;

    invoke-interface {v11, v1}, Lcom/txdriver/socket/SocketClientListener;->onConnecting(Lcom/txdriver/socket/Client;)V

    .line 110
    new-instance v11, Ljava/net/InetSocketAddress;

    invoke-direct {v11, v0, v15}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 111
    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v12

    if-nez v12, :cond_249

    .line 112
    invoke-direct {v1, v9, v10}, Lcom/txdriver/socket/Client;->current(J)Z

    move-result v0
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_5f} :catch_255
    .catchall {:try_start_40 .. :try_end_5f} :catchall_24f

    if-nez v0, :cond_8e

    .line 174
    iget-object v12, v1, Lcom/txdriver/socket/Client;->control:Ljava/lang/Object;

    monitor-enter v12

    :try_start_64
    iget-wide v13, v1, Lcom/txdriver/socket/Client;->generation:J

    cmp-long v0, v13, v9

    if-nez v0, :cond_70

    iget-wide v9, v1, Lcom/txdriver/socket/Client;->generation:J

    add-long v9, v9, v16

    iput-wide v9, v1, Lcom/txdriver/socket/Client;->generation:J

    :cond_70
    monitor-exit v12
    :try_end_71
    .catchall {:try_start_64 .. :try_end_71} :catchall_8b

    .line 175
    iput v8, v1, Lcom/txdriver/socket/Client;->state:I

    .line 176
    nop

    .line 177
    nop

    .line 178
    iput-object v4, v1, Lcom/txdriver/socket/Client;->channel:Ljava/nio/channels/SocketChannel;

    iput-object v4, v1, Lcom/txdriver/socket/Client;->selector:Ljava/nio/channels/Selector;

    invoke-direct/range {p0 .. p0}, Lcom/txdriver/socket/Client;->discardQueue()V

    iget-object v0, v1, Lcom/txdriver/socket/Client;->decoder:Lcom/txdriver/socket/FrameDecoder;

    invoke-interface {v0}, Lcom/txdriver/socket/FrameDecoder;->reset()V

    .line 179
    :try_start_81
    iget-object v0, v1, Lcom/txdriver/socket/Client;->listener:Lcom/txdriver/socket/SocketClientListener;

    invoke-interface {v0, v1}, Lcom/txdriver/socket/SocketClientListener;->onDisconnected(Lcom/txdriver/socket/Client;)V
    :try_end_86
    .catch Ljava/lang/RuntimeException; {:try_start_81 .. :try_end_86} :catch_88

    goto/16 :goto_32a

    :catch_88
    move-exception v0

    .line 112
    goto/16 :goto_32a

    .line 174
    :catchall_8b
    move-exception v0

    :try_start_8c
    monitor-exit v12
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw v0

    .line 113
    :cond_8e
    :try_start_8e
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v5
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_92} :catch_255
    .catchall {:try_start_8e .. :try_end_92} :catchall_24f

    :try_start_92
    iput-object v5, v1, Lcom/txdriver/socket/Client;->selector:Ljava/nio/channels/Selector;

    .line 114
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v6
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_98} :catch_247
    .catchall {:try_start_92 .. :try_end_98} :catchall_244

    :try_start_98
    iput-object v6, v1, Lcom/txdriver/socket/Client;->channel:Ljava/nio/channels/SocketChannel;

    .line 115
    invoke-virtual {v6, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 116
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setKeepAlive(Z)V

    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 117
    invoke-virtual {v6, v11}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    move-result v0

    .line 118
    if-eqz v0, :cond_b3

    const/4 v11, 0x1

    goto :goto_b5

    :cond_b3
    const/16 v11, 0x8

    :goto_b5
    invoke-virtual {v6, v5, v11}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v11

    .line 119
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    const-wide v20, 0x2540be400L

    add-long v18, v18, v20

    .line 120
    const/4 v12, 0x4

    if-eqz v0, :cond_d8

    iput v12, v1, Lcom/txdriver/socket/Client;->state:I

    const-string v15, ""

    iput-object v15, v1, Lcom/txdriver/socket/Client;->failure:Ljava/lang/String;
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_cd} :catch_242
    .catchall {:try_start_98 .. :try_end_cd} :catchall_2ec

    :try_start_cd
    iget-object v7, v1, Lcom/txdriver/socket/Client;->listener:Lcom/txdriver/socket/SocketClientListener;

    invoke-interface {v7, v1}, Lcom/txdriver/socket/SocketClientListener;->onConnected(Lcom/txdriver/socket/Client;)V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d2} :catch_d4
    .catchall {:try_start_cd .. :try_end_d2} :catchall_2ec

    const/4 v7, 0x0

    goto :goto_d8

    .line 165
    :catch_d4
    move-exception v0

    const/4 v7, 0x0

    goto/16 :goto_258

    .line 121
    :cond_d8
    :goto_d8
    const/16 v15, 0x2000

    :try_start_da
    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 122
    :goto_de
    invoke-direct {v1, v9, v10}, Lcom/txdriver/socket/Client;->current(J)Z

    move-result v20

    if-eqz v20, :cond_208

    .line 123
    if-nez v0, :cond_f7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    cmp-long v22, v20, v18

    if-gtz v22, :cond_ef

    goto :goto_f7

    :cond_ef
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v11, "Connection timeout"

    invoke-direct {v0, v11}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_f7
    :goto_f7
    if-eqz v0, :cond_110

    iget-object v2, v1, Lcom/txdriver/socket/Client;->control:Ljava/lang/Object;

    monitor-enter v2
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_fc} :catch_242
    .catchall {:try_start_da .. :try_end_fc} :catchall_2ec

    .line 125
    :try_start_fc
    iget-object v13, v1, Lcom/txdriver/socket/Client;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v13}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_106

    const/4 v13, 0x0

    goto :goto_107

    :cond_106
    const/4 v13, 0x4

    :goto_107
    or-int/2addr v13, v3

    invoke-virtual {v11, v13}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 126
    monitor-exit v2

    goto :goto_110

    :catchall_10d
    move-exception v0

    monitor-exit v2
    :try_end_10f
    .catchall {:try_start_fc .. :try_end_10f} :catchall_10d

    :try_start_10f
    throw v0

    .line 127
    :cond_110
    :goto_110
    const-wide/16 v13, 0x3e8

    invoke-virtual {v5, v13, v14}, Ljava/nio/channels/Selector;->select(J)I

    .line 128
    invoke-virtual {v5}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 129
    :goto_11d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_200

    invoke-direct {v1, v9, v10}, Lcom/txdriver/socket/Client;->current(J)Z

    move-result v13

    if-eqz v13, :cond_200

    .line 130
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/nio/channels/SelectionKey;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 131
    invoke-virtual {v13}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v14

    if-nez v14, :cond_139

    goto :goto_11d

    .line 132
    :cond_139
    invoke-virtual {v13}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v14

    if-eqz v14, :cond_156

    .line 133
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v14

    if-nez v14, :cond_146

    goto :goto_11d

    .line 134
    :cond_146
    iput v12, v1, Lcom/txdriver/socket/Client;->state:I

    const-string v0, ""

    iput-object v0, v1, Lcom/txdriver/socket/Client;->failure:Ljava/lang/String;
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_14c} :catch_242
    .catchall {:try_start_10f .. :try_end_14c} :catchall_2ec

    .line 135
    :try_start_14c
    invoke-virtual {v13, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    iget-object v0, v1, Lcom/txdriver/socket/Client;->listener:Lcom/txdriver/socket/SocketClientListener;

    invoke-interface {v0, v1}, Lcom/txdriver/socket/SocketClientListener;->onConnected(Lcom/txdriver/socket/Client;)V
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_154} :catch_d4
    .catchall {:try_start_14c .. :try_end_154} :catchall_2ec

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 137
    :cond_156
    :try_start_156
    invoke-virtual {v13}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v14

    if-eqz v14, :cond_1a2

    .line 138
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v6, v15}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 139
    if-ltz v14, :cond_19a

    .line 140
    if-lez v14, :cond_1a2

    .line 141
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v14, v1, Lcom/txdriver/socket/Client;->listener:Lcom/txdriver/socket/SocketClientListener;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-interface {v14, v1, v12}, Lcom/txdriver/socket/SocketClientListener;->onRead(Lcom/txdriver/socket/Client;Ljava/nio/ByteBuffer;)V

    .line 142
    :goto_173
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v12

    if-eqz v12, :cond_1a2

    .line 143
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    iget-object v14, v1, Lcom/txdriver/socket/Client;->decoder:Lcom/txdriver/socket/FrameDecoder;

    invoke-interface {v14, v15}, Lcom/txdriver/socket/FrameDecoder;->decode(Ljava/nio/ByteBuffer;)Lcom/txdriver/socket/Packet;

    move-result-object v14

    .line 144
    if-eqz v14, :cond_18a

    iget-object v3, v1, Lcom/txdriver/socket/Client;->listener:Lcom/txdriver/socket/SocketClientListener;

    invoke-interface {v3, v1, v14}, Lcom/txdriver/socket/SocketClientListener;->onRead(Lcom/txdriver/socket/Client;Lcom/txdriver/socket/Packet;)V

    .line 145
    :cond_18a
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-eq v3, v12, :cond_192

    .line 146
    const/4 v3, 0x1

    goto :goto_173

    .line 145
    :cond_192
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Decoder made no progress"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_19a
    new-instance v0, Ljava/io/IOException;

    const-string v2, "End of stream"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1a2
    invoke-virtual {v13}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v3

    if-eqz v3, :cond_1fb

    .line 150
    const/high16 v3, 0x10000

    .line 151
    :goto_1aa
    if-lez v3, :cond_1fb

    invoke-direct {v1, v9, v10}, Lcom/txdriver/socket/Client;->current(J)Z

    move-result v12

    if-eqz v12, :cond_1fb

    .line 153
    iget-object v12, v1, Lcom/txdriver/socket/Client;->control:Ljava/lang/Object;

    monitor-enter v12
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_1b5} :catch_242
    .catchall {:try_start_156 .. :try_end_1b5} :catchall_2ec

    :try_start_1b5
    iget-object v13, v1, Lcom/txdriver/socket/Client;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v13}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/txdriver/socket/Client$Frame;

    monitor-exit v12
    :try_end_1be
    .catchall {:try_start_1b5 .. :try_end_1be} :catchall_1f8

    .line 154
    if-nez v13, :cond_1c1

    goto :goto_1fb

    .line 155
    :cond_1c1
    :try_start_1c1
    iget-object v12, v13, Lcom/txdriver/socket/Client$Frame;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    .line 156
    iget-object v14, v13, Lcom/txdriver/socket/Client$Frame;->bytes:Ljava/nio/ByteBuffer;

    invoke-static {v6, v14}, Lcom/txdriver/socket/FrameWriter;->write(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)Z

    move-result v14

    .line 157
    iget-object v4, v13, Lcom/txdriver/socket/Client$Frame;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    sub-int/2addr v12, v4

    sub-int/2addr v3, v12

    .line 158
    if-nez v14, :cond_1d8

    goto :goto_1fb

    .line 159
    :cond_1d8
    iget-object v4, v1, Lcom/txdriver/socket/Client;->control:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_1c1 .. :try_end_1db} :catch_242
    .catchall {:try_start_1c1 .. :try_end_1db} :catchall_2ec

    :try_start_1db
    iget-object v12, v1, Lcom/txdriver/socket/Client;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    iget v12, v1, Lcom/txdriver/socket/Client;->queuedBytes:I

    iget-object v14, v13, Lcom/txdriver/socket/Client$Frame;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->limit()I

    move-result v14

    sub-int/2addr v12, v14

    iput v12, v1, Lcom/txdriver/socket/Client;->queuedBytes:I

    monitor-exit v4
    :try_end_1ec
    .catchall {:try_start_1db .. :try_end_1ec} :catchall_1f5

    .line 160
    :try_start_1ec
    iget-object v4, v1, Lcom/txdriver/socket/Client;->listener:Lcom/txdriver/socket/SocketClientListener;

    iget-object v12, v13, Lcom/txdriver/socket/Client$Frame;->packet:Lcom/txdriver/socket/Packet;

    invoke-interface {v4, v1, v12}, Lcom/txdriver/socket/SocketClientListener;->onWrite(Lcom/txdriver/socket/Client;Lcom/txdriver/socket/Packet;)V
    :try_end_1f3
    .catch Ljava/lang/Exception; {:try_start_1ec .. :try_end_1f3} :catch_242
    .catchall {:try_start_1ec .. :try_end_1f3} :catchall_2ec

    .line 161
    const/4 v4, 0x0

    goto :goto_1aa

    .line 159
    :catchall_1f5
    move-exception v0

    :try_start_1f6
    monitor-exit v4
    :try_end_1f7
    .catchall {:try_start_1f6 .. :try_end_1f7} :catchall_1f5

    :try_start_1f7
    throw v0
    :try_end_1f8
    .catch Ljava/lang/Exception; {:try_start_1f7 .. :try_end_1f8} :catch_242
    .catchall {:try_start_1f7 .. :try_end_1f8} :catchall_2ec

    .line 153
    :catchall_1f8
    move-exception v0

    :try_start_1f9
    monitor-exit v12
    :try_end_1fa
    .catchall {:try_start_1f9 .. :try_end_1fa} :catchall_1f8

    :try_start_1fa
    throw v0
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1fa .. :try_end_1fb} :catch_242
    .catchall {:try_start_1fa .. :try_end_1fb} :catchall_2ec

    .line 163
    :cond_1fb
    :goto_1fb
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v12, 0x4

    goto/16 :goto_11d

    .line 164
    :cond_200
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v12, 0x4

    const-wide/16 v13, 0x7530

    goto/16 :goto_de

    .line 174
    :cond_208
    iget-object v2, v1, Lcom/txdriver/socket/Client;->control:Ljava/lang/Object;

    monitor-enter v2

    :try_start_20b
    iget-wide v3, v1, Lcom/txdriver/socket/Client;->generation:J

    cmp-long v0, v3, v9

    if-nez v0, :cond_217

    iget-wide v3, v1, Lcom/txdriver/socket/Client;->generation:J

    add-long v3, v3, v16

    iput-wide v3, v1, Lcom/txdriver/socket/Client;->generation:J

    :cond_217
    monitor-exit v2
    :try_end_218
    .catchall {:try_start_20b .. :try_end_218} :catchall_23f

    .line 175
    iput v8, v1, Lcom/txdriver/socket/Client;->state:I

    .line 176
    if-eqz v6, :cond_221

    :try_start_21c
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_21f
    .catch Ljava/io/IOException; {:try_start_21c .. :try_end_21f} :catch_220

    goto :goto_221

    :catch_220
    move-exception v0

    .line 177
    :cond_221
    :goto_221
    if-eqz v5, :cond_228

    :try_start_223
    invoke-virtual {v5}, Ljava/nio/channels/Selector;->close()V
    :try_end_226
    .catch Ljava/io/IOException; {:try_start_223 .. :try_end_226} :catch_227

    goto :goto_228

    :catch_227
    move-exception v0

    .line 178
    :cond_228
    :goto_228
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/txdriver/socket/Client;->channel:Ljava/nio/channels/SocketChannel;

    iput-object v2, v1, Lcom/txdriver/socket/Client;->selector:Ljava/nio/channels/Selector;

    invoke-direct/range {p0 .. p0}, Lcom/txdriver/socket/Client;->discardQueue()V

    iget-object v0, v1, Lcom/txdriver/socket/Client;->decoder:Lcom/txdriver/socket/FrameDecoder;

    invoke-interface {v0}, Lcom/txdriver/socket/FrameDecoder;->reset()V

    .line 179
    :try_start_235
    iget-object v0, v1, Lcom/txdriver/socket/Client;->listener:Lcom/txdriver/socket/SocketClientListener;

    invoke-interface {v0, v1}, Lcom/txdriver/socket/SocketClientListener;->onDisconnected(Lcom/txdriver/socket/Client;)V
    :try_end_23a
    .catch Ljava/lang/RuntimeException; {:try_start_235 .. :try_end_23a} :catch_23c

    goto/16 :goto_2b7

    :catch_23c
    move-exception v0

    .line 180
    goto/16 :goto_2b7

    .line 174
    :catchall_23f
    move-exception v0

    :try_start_240
    monitor-exit v2
    :try_end_241
    .catchall {:try_start_240 .. :try_end_241} :catchall_23f

    throw v0

    .line 165
    :catch_242
    move-exception v0

    goto :goto_258

    .line 174
    :catchall_244
    move-exception v0

    move-object v2, v0

    goto :goto_252

    .line 165
    :catch_247
    move-exception v0

    goto :goto_257

    .line 111
    :cond_249
    :try_start_249
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-direct {v2, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_24f
    .catch Ljava/lang/Exception; {:try_start_249 .. :try_end_24f} :catch_255
    .catchall {:try_start_249 .. :try_end_24f} :catchall_24f

    .line 174
    :catchall_24f
    move-exception v0

    move-object v2, v0

    const/4 v5, 0x0

    :goto_252
    const/4 v6, 0x0

    goto/16 :goto_2ee

    .line 165
    :catch_255
    move-exception v0

    const/4 v5, 0x0

    :goto_257
    const/4 v6, 0x0

    .line 166
    :goto_258
    :try_start_258
    invoke-direct {v1, v9, v10}, Lcom/txdriver/socket/Client;->current(J)Z

    move-result v2

    if-eqz v2, :cond_285

    .line 167
    instance-of v2, v0, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_265

    const-string v2, "\u041d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d \u0430\u0434\u0440\u0435\u0441 \u0441\u0435\u0440\u0432\u0435\u0440\u0430"

    goto :goto_27c

    .line 168
    :cond_265
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27a

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Permission denied"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27a

    .line 169
    const-string v2, "Android \u0437\u0430\u043f\u0440\u0435\u0442\u0438\u043b \u0434\u043e\u0441\u0442\u0443\u043f \u043a \u0441\u0435\u0442\u0438"

    goto :goto_27c

    :cond_27a
    const-string v2, "\u0421\u043e\u0435\u0434\u0438\u043d\u0435\u043d\u0438\u0435 \u043f\u0440\u0435\u0440\u0432\u0430\u043d\u043e"

    :goto_27c
    iput-object v2, v1, Lcom/txdriver/socket/Client;->failure:Ljava/lang/String;
    :try_end_27e
    .catchall {:try_start_258 .. :try_end_27e} :catchall_2ec

    .line 171
    :try_start_27e
    iget-object v2, v1, Lcom/txdriver/socket/Client;->listener:Lcom/txdriver/socket/SocketClientListener;

    invoke-interface {v2, v1, v0}, Lcom/txdriver/socket/SocketClientListener;->onExceptionCaught(Lcom/txdriver/socket/Client;Ljava/lang/Throwable;)V
    :try_end_283
    .catch Ljava/lang/RuntimeException; {:try_start_27e .. :try_end_283} :catch_284
    .catchall {:try_start_27e .. :try_end_283} :catchall_2ec

    goto :goto_285

    :catch_284
    move-exception v0

    .line 174
    :cond_285
    :goto_285
    iget-object v2, v1, Lcom/txdriver/socket/Client;->control:Ljava/lang/Object;

    monitor-enter v2

    :try_start_288
    iget-wide v3, v1, Lcom/txdriver/socket/Client;->generation:J

    cmp-long v0, v3, v9

    if-nez v0, :cond_294

    iget-wide v3, v1, Lcom/txdriver/socket/Client;->generation:J

    add-long v3, v3, v16

    iput-wide v3, v1, Lcom/txdriver/socket/Client;->generation:J

    :cond_294
    monitor-exit v2
    :try_end_295
    .catchall {:try_start_288 .. :try_end_295} :catchall_2e9

    .line 175
    iput v8, v1, Lcom/txdriver/socket/Client;->state:I

    .line 176
    if-eqz v6, :cond_29e

    :try_start_299
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_29c
    .catch Ljava/io/IOException; {:try_start_299 .. :try_end_29c} :catch_29d

    goto :goto_29e

    :catch_29d
    move-exception v0

    .line 177
    :cond_29e
    :goto_29e
    if-eqz v5, :cond_2a5

    :try_start_2a0
    invoke-virtual {v5}, Ljava/nio/channels/Selector;->close()V
    :try_end_2a3
    .catch Ljava/io/IOException; {:try_start_2a0 .. :try_end_2a3} :catch_2a4

    goto :goto_2a5

    :catch_2a4
    move-exception v0

    .line 178
    :cond_2a5
    :goto_2a5
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/txdriver/socket/Client;->channel:Ljava/nio/channels/SocketChannel;

    iput-object v2, v1, Lcom/txdriver/socket/Client;->selector:Ljava/nio/channels/Selector;

    invoke-direct/range {p0 .. p0}, Lcom/txdriver/socket/Client;->discardQueue()V

    iget-object v0, v1, Lcom/txdriver/socket/Client;->decoder:Lcom/txdriver/socket/FrameDecoder;

    invoke-interface {v0}, Lcom/txdriver/socket/FrameDecoder;->reset()V

    .line 179
    :try_start_2b2
    iget-object v0, v1, Lcom/txdriver/socket/Client;->listener:Lcom/txdriver/socket/SocketClientListener;

    invoke-interface {v0, v1}, Lcom/txdriver/socket/SocketClientListener;->onDisconnected(Lcom/txdriver/socket/Client;)V
    :try_end_2b7
    .catch Ljava/lang/RuntimeException; {:try_start_2b2 .. :try_end_2b7} :catch_23c

    .line 181
    :goto_2b7
    const/4 v2, 0x1

    add-int/2addr v7, v2

    const/4 v0, 0x5

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 182
    iget-wide v2, v1, Lcom/txdriver/socket/Client;->minimumDelay:J

    add-int/lit8 v0, v7, -0x1

    shl-long v4, v16, v0

    mul-long v2, v2, v4

    const-wide/16 v4, 0x7530

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 183
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x406f400000000000L    # 250.0

    mul-double v8, v8, v10

    double-to-long v8, v8

    add-long/2addr v2, v8

    const-wide/32 v8, 0xf4240

    mul-long v2, v2, v8

    add-long/2addr v2, v4

    .line 184
    move-wide v5, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    goto/16 :goto_7

    .line 174
    :catchall_2e9
    move-exception v0

    :try_start_2ea
    monitor-exit v2
    :try_end_2eb
    .catchall {:try_start_2ea .. :try_end_2eb} :catchall_2e9

    throw v0

    :catchall_2ec
    move-exception v0

    move-object v2, v0

    :goto_2ee
    iget-object v3, v1, Lcom/txdriver/socket/Client;->control:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2f1
    iget-wide v11, v1, Lcom/txdriver/socket/Client;->generation:J

    cmp-long v0, v11, v9

    if-nez v0, :cond_2fd

    iget-wide v9, v1, Lcom/txdriver/socket/Client;->generation:J

    add-long v9, v9, v16

    iput-wide v9, v1, Lcom/txdriver/socket/Client;->generation:J

    :cond_2fd
    monitor-exit v3
    :try_end_2fe
    .catchall {:try_start_2f1 .. :try_end_2fe} :catchall_323

    .line 175
    iput v8, v1, Lcom/txdriver/socket/Client;->state:I

    .line 176
    if-eqz v6, :cond_307

    :try_start_302
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_305
    .catch Ljava/io/IOException; {:try_start_302 .. :try_end_305} :catch_306

    goto :goto_307

    :catch_306
    move-exception v0

    .line 177
    :cond_307
    :goto_307
    if-eqz v5, :cond_30e

    :try_start_309
    invoke-virtual {v5}, Ljava/nio/channels/Selector;->close()V
    :try_end_30c
    .catch Ljava/io/IOException; {:try_start_309 .. :try_end_30c} :catch_30d

    goto :goto_30e

    :catch_30d
    move-exception v0

    .line 178
    :cond_30e
    :goto_30e
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/txdriver/socket/Client;->channel:Ljava/nio/channels/SocketChannel;

    iput-object v3, v1, Lcom/txdriver/socket/Client;->selector:Ljava/nio/channels/Selector;

    invoke-direct/range {p0 .. p0}, Lcom/txdriver/socket/Client;->discardQueue()V

    iget-object v0, v1, Lcom/txdriver/socket/Client;->decoder:Lcom/txdriver/socket/FrameDecoder;

    invoke-interface {v0}, Lcom/txdriver/socket/FrameDecoder;->reset()V

    .line 179
    :try_start_31b
    iget-object v0, v1, Lcom/txdriver/socket/Client;->listener:Lcom/txdriver/socket/SocketClientListener;

    invoke-interface {v0, v1}, Lcom/txdriver/socket/SocketClientListener;->onDisconnected(Lcom/txdriver/socket/Client;)V
    :try_end_320
    .catch Ljava/lang/RuntimeException; {:try_start_31b .. :try_end_320} :catch_321

    goto :goto_322

    :catch_321
    move-exception v0

    .line 180
    :goto_322
    throw v2

    .line 174
    :catchall_323
    move-exception v0

    :try_start_324
    monitor-exit v3
    :try_end_325
    .catchall {:try_start_324 .. :try_end_325} :catchall_323

    throw v0

    .line 102
    :catchall_326
    move-exception v0

    goto :goto_32f

    .line 100
    :catch_328
    move-exception v0

    :try_start_329
    monitor-exit v8

    .line 95
    :goto_32a
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    goto/16 :goto_7

    .line 102
    :goto_32f
    monitor-exit v8
    :try_end_330
    .catchall {:try_start_329 .. :try_end_330} :catchall_326

    goto :goto_332

    :goto_331
    throw v0

    :goto_332
    goto :goto_331
.end method

.method public send(Lcom/txdriver/socket/Packet;)V
    .registers 2

    .line 68
    invoke-virtual {p0, p1}, Lcom/txdriver/socket/Client;->trySend(Lcom/txdriver/socket/Packet;)Z

    return-void
.end method

.method public setReconnectTimeout(J)V
    .registers 5

    .line 42
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0xfa

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/txdriver/socket/Client;->minimumDelay:J

    return-void
.end method

.method public trySend(Lcom/txdriver/socket/Packet;)Z
    .registers 7

    .line 71
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1}, Lcom/txdriver/socket/Packet;->toByteArray()[B

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/txdriver/socket/Client;->control:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_50

    .line 73
    :try_start_8
    iget-boolean v3, p0, Lcom/txdriver/socket/Client;->enabled:Z

    if-eqz v3, :cond_4b

    invoke-virtual {p0}, Lcom/txdriver/socket/Client;->isSocketConnected()Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_4b

    .line 74
    :cond_13
    array-length v3, v1

    if-eqz v3, :cond_45

    array-length v3, v1

    const v4, 0x8001

    if-gt v3, v4, :cond_45

    iget-object v3, p0, Lcom/txdriver/socket/Client;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    const/16 v4, 0x100

    if-ge v3, v4, :cond_45

    iget v3, p0, Lcom/txdriver/socket/Client;->queuedBytes:I

    array-length v4, v1

    add-int/2addr v3, v4

    const/high16 v4, 0x40000

    if-le v3, v4, :cond_2f

    goto :goto_45

    .line 77
    :cond_2f
    iget-object v3, p0, Lcom/txdriver/socket/Client;->queue:Ljava/util/ArrayDeque;

    new-instance v4, Lcom/txdriver/socket/Client$Frame;

    invoke-direct {v4, p1, v1}, Lcom/txdriver/socket/Client$Frame;-><init>(Lcom/txdriver/socket/Packet;[B)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget p1, p0, Lcom/txdriver/socket/Client;->queuedBytes:I

    array-length v1, v1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/txdriver/socket/Client;->queuedBytes:I

    .line 78
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_4d

    .line 79
    :try_start_40
    invoke-direct {p0}, Lcom/txdriver/socket/Client;->wake()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_50

    const/4 p1, 0x1

    return p1

    .line 75
    :cond_45
    :goto_45
    :try_start_45
    const-string p1, "\u041e\u0447\u0435\u0440\u0435\u0434\u044c \u043e\u0442\u043f\u0440\u0430\u0432\u043a\u0438 \u0437\u0430\u043f\u043e\u043b\u043d\u0435\u043d\u0430"

    iput-object p1, p0, Lcom/txdriver/socket/Client;->failure:Ljava/lang/String;

    monitor-exit v2

    return v0

    .line 73
    :cond_4b
    :goto_4b
    monitor-exit v2

    return v0

    .line 78
    :catchall_4d
    move-exception p1

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw p1
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_50} :catch_50

    .line 80
    :catch_50
    move-exception p1

    const-string p1, "\u041e\u0448\u0438\u0431\u043a\u0430 \u043f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0438 \u043f\u0430\u043a\u0435\u0442\u0430"

    iput-object p1, p0, Lcom/txdriver/socket/Client;->failure:Ljava/lang/String;

    return v0
.end method
