.class public Lcom/txdriver/socket/Client;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/socket/Client$Connection;
    }
.end annotation


# static fields
.field public static final STATE_CONNECTED:I = 0x4

.field public static final STATE_CONNECTING:I = 0x3

.field public static final STATE_DISCONNECTED:I = 0x2

.field private static final STATE_OPEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Client"

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private IP:Ljava/lang/String;

.field private PORT:I

.field private conn:Ljava/lang/Thread;

.field private frameDecoder:Lcom/txdriver/socket/FrameDecoder;

.field private lastConnTime:J

.field private listener:Lcom/txdriver/socket/SocketClientListener;

.field private readBuffer:Ljava/nio/ByteBuffer;

.field private reconnectTimeout:J

.field private requestQueen:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/txdriver/socket/Packet;",
            ">;"
        }
    .end annotation
.end field

.field private selector:Ljava/nio/channels/Selector;

.field private socketChannel:Ljava/nio/channels/SocketChannel;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/txdriver/socket/Client;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/socket/SocketClientListener;Lcom/txdriver/socket/FrameDecoder;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/txdriver/socket/Client;->state:I

    const/16 v0, 0x400

    .line 22
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/socket/Client;->readBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/txdriver/socket/Client;->conn:Ljava/lang/Thread;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/socket/Client;->requestQueen:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lcom/txdriver/socket/Client;->lastConnTime:J

    const-wide/16 v0, 0x1388

    .line 31
    iput-wide v0, p0, Lcom/txdriver/socket/Client;->reconnectTimeout:J

    .line 34
    iput-object p1, p0, Lcom/txdriver/socket/Client;->listener:Lcom/txdriver/socket/SocketClientListener;

    .line 35
    iput-object p2, p0, Lcom/txdriver/socket/Client;->frameDecoder:Lcom/txdriver/socket/FrameDecoder;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/socket/Client;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/txdriver/socket/Client;->state:I

    return p0
.end method

.method static synthetic access$002(Lcom/txdriver/socket/Client;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/txdriver/socket/Client;->state:I

    return p1
.end method

.method static synthetic access$100(Lcom/txdriver/socket/Client;)Ljava/lang/Thread;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/txdriver/socket/Client;->conn:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$1000()Ljava/lang/Object;
    .locals 1

    .line 13
    sget-object v0, Lcom/txdriver/socket/Client;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/txdriver/socket/Client;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/txdriver/socket/Client;->conn:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/txdriver/socket/Client;)Ljava/util/ArrayList;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/txdriver/socket/Client;->requestQueen:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/txdriver/socket/Client;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/txdriver/socket/Client;->readBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/txdriver/socket/Client;)Lcom/txdriver/socket/FrameDecoder;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/txdriver/socket/Client;->frameDecoder:Lcom/txdriver/socket/FrameDecoder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/txdriver/socket/Client;)Lcom/txdriver/socket/SocketClientListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/txdriver/socket/Client;->listener:Lcom/txdriver/socket/SocketClientListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/txdriver/socket/Client;)J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/txdriver/socket/Client;->lastConnTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/txdriver/socket/Client;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/txdriver/socket/Client;->lastConnTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/txdriver/socket/Client;)J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/txdriver/socket/Client;->reconnectTimeout:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/txdriver/socket/Client;)Ljava/nio/channels/Selector;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/txdriver/socket/Client;->selector:Ljava/nio/channels/Selector;

    return-object p0
.end method

.method static synthetic access$602(Lcom/txdriver/socket/Client;Ljava/nio/channels/Selector;)Ljava/nio/channels/Selector;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/txdriver/socket/Client;->selector:Ljava/nio/channels/Selector;

    return-object p1
.end method

.method static synthetic access$700(Lcom/txdriver/socket/Client;)Ljava/nio/channels/SocketChannel;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/txdriver/socket/Client;->socketChannel:Ljava/nio/channels/SocketChannel;

    return-object p0
.end method

.method static synthetic access$702(Lcom/txdriver/socket/Client;Ljava/nio/channels/SocketChannel;)Ljava/nio/channels/SocketChannel;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/txdriver/socket/Client;->socketChannel:Ljava/nio/channels/SocketChannel;

    return-object p1
.end method

.method static synthetic access$800(Lcom/txdriver/socket/Client;)Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/txdriver/socket/Client;->IP:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/txdriver/socket/Client;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/txdriver/socket/Client;->PORT:I

    return p0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 77
    :try_start_0
    iget v0, p0, Lcom/txdriver/socket/Client;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 78
    iput v1, p0, Lcom/txdriver/socket/Client;->state:I

    .line 79
    sget-object v0, Lcom/txdriver/socket/Client;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 80
    :try_start_1
    iget-object v1, p0, Lcom/txdriver/socket/Client;->requestQueen:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 81
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    :try_start_2
    iget-object v0, p0, Lcom/txdriver/socket/Client;->frameDecoder:Lcom/txdriver/socket/FrameDecoder;

    invoke-interface {v0}, Lcom/txdriver/socket/FrameDecoder;->reset()V

    .line 83
    iget-object v0, p0, Lcom/txdriver/socket/Client;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    const/4 v0, 0x0

    .line 87
    :try_start_3
    iget-object v1, p0, Lcom/txdriver/socket/Client;->conn:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/txdriver/socket/Client;->conn:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 89
    iget-object v1, p0, Lcom/txdriver/socket/Client;->conn:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    :cond_1
    :goto_0
    :try_start_4
    iput-object v0, p0, Lcom/txdriver/socket/Client;->conn:Ljava/lang/Thread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 92
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 94
    :goto_1
    :try_start_6
    iput-object v0, p0, Lcom/txdriver/socket/Client;->conn:Ljava/lang/Thread;

    .line 95
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception v1

    .line 81
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 97
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public isSocketConnected()Z
    .locals 2

    .line 55
    iget v0, p0, Lcom/txdriver/socket/Client;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public open(Ljava/lang/String;I)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/txdriver/socket/Client;->IP:Ljava/lang/String;

    .line 60
    iput p2, p0, Lcom/txdriver/socket/Client;->PORT:I

    .line 61
    invoke-virtual {p0}, Lcom/txdriver/socket/Client;->reconn()V

    return-void
.end method

.method public declared-synchronized reconn()V
    .locals 2

    monitor-enter p0

    .line 65
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/txdriver/socket/Client$1;

    invoke-direct {v1, p0}, Lcom/txdriver/socket/Client$1;-><init>(Lcom/txdriver/socket/Client;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public send(Lcom/txdriver/socket/Packet;)V
    .locals 2

    .line 43
    iget v0, p0, Lcom/txdriver/socket/Client;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 46
    :cond_0
    sget-object v0, Lcom/txdriver/socket/Client;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/txdriver/socket/Client;->requestQueen:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    iget-object p1, p0, Lcom/txdriver/socket/Client;->selector:Ljava/nio/channels/Selector;

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setReconnectTimeout(J)V
    .locals 0

    .line 39
    iput-wide p1, p0, Lcom/txdriver/socket/Client;->reconnectTimeout:J

    return-void
.end method
