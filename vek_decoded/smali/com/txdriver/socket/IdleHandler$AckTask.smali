.class Lcom/txdriver/socket/IdleHandler$AckTask;
.super Ljava/lang/Object;
.source "IdleHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/socket/IdleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AckTask"
.end annotation


# instance fields
.field private client:Lcom/txdriver/socket/Client;


# direct methods
.method private constructor <init>(Lcom/txdriver/socket/Client;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/txdriver/socket/IdleHandler$AckTask;->client:Lcom/txdriver/socket/Client;

    return-void
.end method

.method synthetic constructor <init>(Lcom/txdriver/socket/Client;Lcom/txdriver/socket/IdleHandler$1;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/txdriver/socket/IdleHandler$AckTask;-><init>(Lcom/txdriver/socket/Client;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/txdriver/socket/IdleHandler$AckTask;->client:Lcom/txdriver/socket/Client;

    new-instance v1, Lcom/txdriver/socket/packet/AckPacket;

    invoke-direct {v1}, Lcom/txdriver/socket/packet/AckPacket;-><init>()V

    invoke-virtual {v0, v1}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    return-void
.end method
