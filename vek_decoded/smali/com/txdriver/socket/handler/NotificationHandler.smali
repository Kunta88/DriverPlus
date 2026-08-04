.class public Lcom/txdriver/socket/handler/NotificationHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "NotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/NotificationData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 20
    const-class v0, Lcom/txdriver/socket/data/NotificationData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method

.method private notifyDriver(Lcom/txdriver/socket/data/NotificationData;)V
    .locals 4

    .line 29
    new-instance v0, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;

    iget-object v1, p0, Lcom/txdriver/socket/handler/NotificationHandler;->app:Lcom/txdriver/App;

    iget-object v2, p1, Lcom/txdriver/socket/data/NotificationData;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/txdriver/socket/data/NotificationData;->message:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/txdriver/ui/activity/NotificationActivity$NotificationActivityRunner;-><init>(Lcom/txdriver/App;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/NotificationHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/NotificationData;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/NotificationHandler;->notifyDriver(Lcom/txdriver/socket/data/NotificationData;)V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/txdriver/socket/data/NotificationData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/NotificationHandler;->handle(Lcom/txdriver/socket/data/NotificationData;)V

    return-void
.end method
