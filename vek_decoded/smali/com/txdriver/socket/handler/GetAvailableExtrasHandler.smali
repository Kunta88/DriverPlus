.class public Lcom/txdriver/socket/handler/GetAvailableExtrasHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "GetAvailableExtrasHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/ExtrasList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 9
    const-class v0, Lcom/txdriver/socket/data/ExtrasList;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/ExtrasList;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 15
    iget-object v0, p0, Lcom/txdriver/socket/handler/GetAvailableExtrasHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/txdriver/socket/SocketEvents$GetExtrasEvent;

    invoke-direct {v1, p1}, Lcom/txdriver/socket/SocketEvents$GetExtrasEvent;-><init>(Lcom/txdriver/socket/data/ExtrasList;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p1, Lcom/txdriver/socket/data/ExtrasList;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/GetAvailableExtrasHandler;->handle(Lcom/txdriver/socket/data/ExtrasList;)V

    return-void
.end method
