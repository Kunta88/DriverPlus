.class public Lcom/txdriver/socket/handler/ParkingUpdateHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "ParkingUpdateHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/ParkingUpdateData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ParkingUpdateHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 23
    const-class v0, Lcom/txdriver/socket/data/ParkingUpdateData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method

.method private addDriver(Lcom/txdriver/socket/data/ParkingUpdateData;Lcom/txdriver/db/Parking;)V
    .locals 1

    .line 69
    iget v0, p1, Lcom/txdriver/socket/data/ParkingUpdateData;->position:I

    if-ltz v0, :cond_0

    .line 70
    iget v0, p1, Lcom/txdriver/socket/data/ParkingUpdateData;->driverId:I

    iget p1, p1, Lcom/txdriver/socket/data/ParkingUpdateData;->position:I

    invoke-virtual {p2, v0, p1}, Lcom/txdriver/db/Parking;->addDriver(II)I

    goto :goto_0

    .line 72
    :cond_0
    iget p1, p1, Lcom/txdriver/socket/data/ParkingUpdateData;->driverId:I

    invoke-virtual {p2, p1}, Lcom/txdriver/db/Parking;->addDriver(I)I

    :goto_0
    return-void
.end method

.method private static deleteDriver(Lcom/txdriver/socket/data/ParkingUpdateData;Lcom/txdriver/db/Parking;)V
    .locals 0

    .line 77
    iget p0, p0, Lcom/txdriver/socket/data/ParkingUpdateData;->driverId:I

    invoke-virtual {p1, p0}, Lcom/txdriver/db/Parking;->getDriver(I)Lcom/txdriver/db/DriverParking;

    move-result-object p0

    .line 78
    invoke-static {p0}, Lcom/txdriver/db/DriverParking;->deleteDriver(Lcom/txdriver/db/DriverParking;)V

    return-void
.end method

.method private updateQueues(Lcom/txdriver/socket/data/ParkingUpdateData;)V
    .locals 5

    .line 32
    iget v0, p1, Lcom/txdriver/socket/data/ParkingUpdateData;->parkingId:I

    invoke-static {v0}, Lcom/txdriver/db/Parking;->getByParkingId(I)Lcom/txdriver/db/Parking;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 34
    iget-object v1, p0, Lcom/txdriver/socket/handler/ParkingUpdateHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->getLogin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 35
    invoke-virtual {v0}, Lcom/txdriver/db/Parking;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/txdriver/db/DriverParking;->getDriverPosition(IJ)I

    move-result v2

    .line 36
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->beginTransaction()V

    .line 38
    :try_start_0
    iget v3, p1, Lcom/txdriver/socket/data/ParkingUpdateData;->driverId:I

    if-ltz v3, :cond_0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/ParkingUpdateHandler;->addDriver(Lcom/txdriver/socket/data/ParkingUpdateData;Lcom/txdriver/db/Parking;)V

    .line 40
    invoke-static {}, Lcom/txdriver/db/DriverParking;->notifyChanged()V

    goto :goto_0

    .line 42
    :cond_0
    iget v3, p1, Lcom/txdriver/socket/data/ParkingUpdateData;->driverId:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p1, Lcom/txdriver/socket/data/ParkingUpdateData;->driverId:I

    .line 43
    invoke-static {p1, v0}, Lcom/txdriver/socket/handler/ParkingUpdateHandler;->deleteDriver(Lcom/txdriver/socket/data/ParkingUpdateData;Lcom/txdriver/db/Parking;)V

    .line 45
    :goto_0
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 47
    :try_start_1
    sget-object v3, Lcom/txdriver/socket/handler/ParkingUpdateHandler;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :goto_1
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V

    .line 51
    invoke-virtual {v0}, Lcom/txdriver/db/Parking;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/txdriver/db/DriverParking;->getDriverPosition(IJ)I

    move-result p1

    const/4 v1, -0x1

    if-le v2, v1, :cond_1

    if-nez p1, :cond_1

    if-eq v2, p1, :cond_1

    .line 53
    new-instance p1, Lcom/txdriver/notification/SoundManager;

    iget-object v1, p0, Lcom/txdriver/socket/handler/ParkingUpdateHandler;->app:Lcom/txdriver/App;

    invoke-direct {p1, v1}, Lcom/txdriver/notification/SoundManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/txdriver/notification/SoundManager;->playFirstOnParking()V

    .line 54
    new-instance p1, Lcom/txdriver/socket/handler/ParkingUpdateHandler$1;

    invoke-direct {p1, p0, v0}, Lcom/txdriver/socket/handler/ParkingUpdateHandler$1;-><init>(Lcom/txdriver/socket/handler/ParkingUpdateHandler;Lcom/txdriver/db/Parking;)V

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/ParkingUpdateHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/txdriver/socket/handler/ParkingUpdateHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->isNotifyParkingMoving()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 63
    new-instance p1, Lcom/txdriver/notification/SoundManager;

    iget-object v0, p0, Lcom/txdriver/socket/handler/ParkingUpdateHandler;->app:Lcom/txdriver/App;

    invoke-direct {p1, v0}, Lcom/txdriver/notification/SoundManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/txdriver/notification/SoundManager;->playParkingMovingSound()V

    goto :goto_3

    .line 49
    :goto_2
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V

    .line 50
    throw p1

    :cond_2
    :goto_3
    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/ParkingUpdateData;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/ParkingUpdateHandler;->updateQueues(Lcom/txdriver/socket/data/ParkingUpdateData;)V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/txdriver/socket/data/ParkingUpdateData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/ParkingUpdateHandler;->handle(Lcom/txdriver/socket/data/ParkingUpdateData;)V

    return-void
.end method
