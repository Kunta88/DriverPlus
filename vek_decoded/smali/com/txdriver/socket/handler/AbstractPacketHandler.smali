.class public abstract Lcom/txdriver/socket/handler/AbstractPacketHandler;
.super Ljava/lang/Object;
.source "AbstractPacketHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field app:Lcom/txdriver/App;

.field private dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private messagePack:Lorg/msgpack/MessagePack;

.field private template:Lorg/msgpack/template/Template;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/msgpack/template/Template<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lorg/msgpack/MessagePack;

    invoke-direct {v0}, Lorg/msgpack/MessagePack;-><init>()V

    iput-object v0, p0, Lcom/txdriver/socket/handler/AbstractPacketHandler;->messagePack:Lorg/msgpack/MessagePack;

    .line 29
    iput-object p1, p0, Lcom/txdriver/socket/handler/AbstractPacketHandler;->app:Lcom/txdriver/App;

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/socket/handler/AbstractPacketHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/App;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;)V

    .line 25
    iput-object p2, p0, Lcom/txdriver/socket/handler/AbstractPacketHandler;->dataClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;Lorg/msgpack/template/Template;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/App;",
            "Lorg/msgpack/template/Template<",
            "TT;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;)V

    .line 35
    iput-object p2, p0, Lcom/txdriver/socket/handler/AbstractPacketHandler;->template:Lorg/msgpack/template/Template;

    return-void
.end method


# virtual methods
.method getString(I)Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/txdriver/socket/handler/AbstractPacketHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0, p1}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handle(Lcom/txdriver/socket/packet/ServerPacket;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/txdriver/socket/handler/AbstractPacketHandler;->dataClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/txdriver/socket/handler/AbstractPacketHandler;->template:Lorg/msgpack/template/Template;

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/txdriver/socket/packet/ServerPacket;->getBody()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/AbstractPacketHandler;->handle(Ljava/lang/Object;)V

    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/txdriver/socket/handler/AbstractPacketHandler;->dataClass:Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/txdriver/socket/handler/AbstractPacketHandler;->messagePack:Lorg/msgpack/MessagePack;

    invoke-virtual {p1}, Lcom/txdriver/socket/packet/ServerPacket;->getBody()[B

    move-result-object p1

    iget-object v1, p0, Lcom/txdriver/socket/handler/AbstractPacketHandler;->dataClass:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lorg/msgpack/MessagePack;->read([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/txdriver/socket/handler/AbstractPacketHandler;->messagePack:Lorg/msgpack/MessagePack;

    invoke-virtual {p1}, Lcom/txdriver/socket/packet/ServerPacket;->getBody()[B

    move-result-object p1

    iget-object v1, p0, Lcom/txdriver/socket/handler/AbstractPacketHandler;->template:Lorg/msgpack/template/Template;

    invoke-virtual {v0, p1, v1}, Lorg/msgpack/MessagePack;->read([BLorg/msgpack/template/Template;)Ljava/lang/Object;

    move-result-object p1

    .line 53
    :goto_0
    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/AbstractPacketHandler;->handle(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 55
    iget-object v0, p0, Lcom/txdriver/socket/handler/AbstractPacketHandler;->TAG:Ljava/lang/String;

    const-string v1, "handle"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public abstract handle(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 68
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
