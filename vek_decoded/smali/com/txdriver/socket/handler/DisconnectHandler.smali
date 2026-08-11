.class public Lcom/txdriver/socket/handler/DisconnectHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "DisconnectHandler.java"


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/packet/ServerPacket;)V
    .locals 0

    .line 19
    iget-object p1, p0, Lcom/txdriver/socket/handler/DisconnectHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/socket/Client;->close()V

    .line 20
    new-instance p1, Lcom/txdriver/socket/handler/DisconnectHandler$1;

    invoke-direct {p1, p0}, Lcom/txdriver/socket/handler/DisconnectHandler$1;-><init>(Lcom/txdriver/socket/handler/DisconnectHandler;)V

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/DisconnectHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handle(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
