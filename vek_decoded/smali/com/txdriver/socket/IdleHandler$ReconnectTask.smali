.class Lcom/txdriver/socket/IdleHandler$ReconnectTask;
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
    name = "ReconnectTask"
.end annotation


# instance fields
.field private client:Lcom/txdriver/socket/Client;


# direct methods
.method private constructor <init>(Lcom/txdriver/socket/Client;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/txdriver/socket/IdleHandler$ReconnectTask;->client:Lcom/txdriver/socket/Client;

    return-void
.end method

.method synthetic constructor <init>(Lcom/txdriver/socket/Client;Lcom/txdriver/socket/IdleHandler$1;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/txdriver/socket/IdleHandler$ReconnectTask;-><init>(Lcom/txdriver/socket/Client;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/txdriver/socket/IdleHandler$ReconnectTask;->client:Lcom/txdriver/socket/Client;

    invoke-virtual {v0}, Lcom/txdriver/socket/Client;->reconn()V

    return-void
.end method
