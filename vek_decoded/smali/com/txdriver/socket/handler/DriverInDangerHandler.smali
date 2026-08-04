.class public Lcom/txdriver/socket/handler/DriverInDangerHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "DriverInDangerHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/DriverInDangerData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DriverInDangerHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 21
    const-class v0, Lcom/txdriver/socket/data/DriverInDangerData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method

.method private sendBroadcast(Landroid/content/Context;I)V
    .locals 1

    .line 39
    new-instance v0, Lcom/txdriver/socket/handler/DriverInDangerHandler$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/txdriver/socket/handler/DriverInDangerHandler$1;-><init>(Lcom/txdriver/socket/handler/DriverInDangerHandler;ILandroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/DriverInDangerHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startDialogActivity(Landroid/content/Context;Lcom/txdriver/socket/data/DriverInDangerData;)V
    .locals 1

    .line 34
    new-instance p1, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;

    iget-object v0, p0, Lcom/txdriver/socket/handler/DriverInDangerHandler;->app:Lcom/txdriver/App;

    invoke-direct {p1, v0, p2}, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;-><init>(Lcom/txdriver/App;Lcom/txdriver/socket/data/DriverInDangerData;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/DriverInDangerHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/DriverInDangerData;)V
    .locals 2

    .line 26
    iget v0, p1, Lcom/txdriver/socket/data/DriverInDangerData;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/txdriver/socket/handler/DriverInDangerHandler;->app:Lcom/txdriver/App;

    invoke-direct {p0, v0, p1}, Lcom/txdriver/socket/handler/DriverInDangerHandler;->startDialogActivity(Landroid/content/Context;Lcom/txdriver/socket/data/DriverInDangerData;)V

    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/txdriver/socket/handler/DriverInDangerHandler;->app:Lcom/txdriver/App;

    iget p1, p1, Lcom/txdriver/socket/data/DriverInDangerData;->driverId:I

    invoke-direct {p0, v0, p1}, Lcom/txdriver/socket/handler/DriverInDangerHandler;->sendBroadcast(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/txdriver/socket/data/DriverInDangerData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/DriverInDangerHandler;->handle(Lcom/txdriver/socket/data/DriverInDangerData;)V

    return-void
.end method
