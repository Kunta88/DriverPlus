.class public Lcom/txdriver/socket/handler/DeleteDriverFromAllParkingsHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "DeleteDriverFromAllParkingsHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 23
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/Integer;)V
    .locals 6

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    iget-object v1, p0, Lcom/txdriver/socket/handler/DeleteDriverFromAllParkingsHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->getLogin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 31
    invoke-static {v1}, Lcom/txdriver/db/Driver;->getParkingsQuery(I)Lcom/activeandroid/query/From;

    move-result-object v2

    invoke-virtual {v2}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v2

    .line 32
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/txdriver/db/DriverParking;

    .line 33
    iget-object v5, v4, Lcom/txdriver/db/DriverParking;->parking:Lcom/txdriver/db/Parking;

    iget v4, v4, Lcom/txdriver/db/DriverParking;->position:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/txdriver/db/DriverParking;->deleteDriver(I)V

    .line 36
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/db/DriverParking;

    .line 37
    iget-object v3, v2, Lcom/txdriver/db/DriverParking;->parking:Lcom/txdriver/db/Parking;

    invoke-virtual {v3}, Lcom/txdriver/db/Parking;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/txdriver/db/DriverParking;->getDriverPosition(IJ)I

    move-result v3

    .line 38
    iget-object v4, v2, Lcom/txdriver/db/DriverParking;->parking:Lcom/txdriver/db/Parking;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_1

    if-nez v3, :cond_1

    if-eq v4, v3, :cond_1

    .line 40
    new-instance v3, Lcom/txdriver/notification/SoundManager;

    iget-object v4, p0, Lcom/txdriver/socket/handler/DeleteDriverFromAllParkingsHandler;->app:Lcom/txdriver/App;

    invoke-direct {v3, v4}, Lcom/txdriver/notification/SoundManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/txdriver/notification/SoundManager;->playFirstOnParking()V

    .line 41
    new-instance v3, Lcom/txdriver/socket/handler/DeleteDriverFromAllParkingsHandler$1;

    invoke-direct {v3, p0, v2}, Lcom/txdriver/socket/handler/DeleteDriverFromAllParkingsHandler$1;-><init>(Lcom/txdriver/socket/handler/DeleteDriverFromAllParkingsHandler;Lcom/txdriver/db/DriverParking;)V

    invoke-virtual {p0, v3}, Lcom/txdriver/socket/handler/DeleteDriverFromAllParkingsHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 50
    :cond_2
    iget-object p1, p0, Lcom/txdriver/socket/handler/DeleteDriverFromAllParkingsHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->isNotifyParkingMoving()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 51
    new-instance p1, Lcom/txdriver/notification/SoundManager;

    iget-object v0, p0, Lcom/txdriver/socket/handler/DeleteDriverFromAllParkingsHandler;->app:Lcom/txdriver/App;

    invoke-direct {p1, v0}, Lcom/txdriver/notification/SoundManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/txdriver/notification/SoundManager;->playParkingMovingSound()V

    :cond_3
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/DeleteDriverFromAllParkingsHandler;->handle(Ljava/lang/Integer;)V

    return-void
.end method
