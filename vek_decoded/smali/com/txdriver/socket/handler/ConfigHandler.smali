.class public Lcom/txdriver/socket/handler/ConfigHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "ConfigHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/ConfigData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 52
    const-class v0, Lcom/txdriver/socket/data/ConfigData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method

.method private static deleteOldOrderNotification(Lcom/txdriver/socket/data/ConfigData;)V
    .locals 0

    .line 239
    invoke-static {}, Lcom/txdriver/db/OrderNotification;->deleteAll()V

    return-void
.end method

.method private static saveCarExtras(Lcom/txdriver/socket/data/ConfigData;)V
    .locals 2

    .line 207
    invoke-static {}, Lcom/txdriver/db/CarExtra;->deleteAll()V

    .line 208
    iget-object p0, p0, Lcom/txdriver/socket/data/ConfigData;->carExtras:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/socket/data/ExtrasData;

    .line 209
    new-instance v1, Lcom/txdriver/db/CarExtra;

    invoke-direct {v1, v0}, Lcom/txdriver/db/CarExtra;-><init>(Lcom/txdriver/socket/data/ExtrasData;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/txdriver/db/CarExtra;->save(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static saveCarTypes(Lcom/txdriver/socket/data/ConfigData;)V
    .locals 3

    .line 158
    invoke-static {}, Lcom/txdriver/db/CarType;->deleteAll()V

    .line 159
    iget-object p0, p0, Lcom/txdriver/socket/data/ConfigData;->autoTypes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/socket/data/CarTypeData;

    .line 160
    new-instance v1, Lcom/txdriver/db/CarType;

    invoke-direct {v1}, Lcom/txdriver/db/CarType;-><init>()V

    .line 161
    iget v2, v0, Lcom/txdriver/socket/data/CarTypeData;->typeId:I

    iput v2, v1, Lcom/txdriver/db/CarType;->carTypeId:I

    .line 162
    iget-object v2, v0, Lcom/txdriver/socket/data/CarTypeData;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/txdriver/db/CarType;->name:Ljava/lang/String;

    .line 163
    iget-object v0, v0, Lcom/txdriver/socket/data/CarTypeData;->color:Ljava/lang/String;

    iput-object v0, v1, Lcom/txdriver/db/CarType;->color:Ljava/lang/String;

    .line 164
    invoke-virtual {v1}, Lcom/txdriver/db/CarType;->save()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private saveConfig(Lcom/txdriver/socket/data/ConfigData;)V
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getCurrentOrderId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 62
    iget-object p1, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/txdriver/preferences/Preferences;->setVersion(I)V

    return-void

    .line 65
    :cond_0
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/ConfigHandler;->savePreferences(Lcom/txdriver/socket/data/ConfigData;)V

    .line 66
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->beginTransaction()V

    .line 68
    :try_start_0
    invoke-static {p1}, Lcom/txdriver/socket/handler/ConfigHandler;->saveParkings(Lcom/txdriver/socket/data/ConfigData;)V

    .line 69
    invoke-static {p1}, Lcom/txdriver/socket/handler/ConfigHandler;->saveMessages(Lcom/txdriver/socket/data/ConfigData;)V

    .line 70
    invoke-static {p1}, Lcom/txdriver/socket/handler/ConfigHandler;->saveQuestions(Lcom/txdriver/socket/data/ConfigData;)V

    .line 71
    invoke-static {p1}, Lcom/txdriver/socket/handler/ConfigHandler;->saveRejectReasons(Lcom/txdriver/socket/data/ConfigData;)V

    .line 72
    invoke-static {p1}, Lcom/txdriver/socket/handler/ConfigHandler;->saveCarTypes(Lcom/txdriver/socket/data/ConfigData;)V

    .line 73
    invoke-static {p1}, Lcom/txdriver/socket/handler/ConfigHandler;->savePaymentTypes(Lcom/txdriver/socket/data/ConfigData;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/ConfigHandler;->saveOrderTabs(Lcom/txdriver/socket/data/ConfigData;)V

    .line 75
    invoke-static {p1}, Lcom/txdriver/socket/handler/ConfigHandler;->saveOrderTypes(Lcom/txdriver/socket/data/ConfigData;)V

    .line 76
    invoke-static {p1}, Lcom/txdriver/socket/handler/ConfigHandler;->saveDriverExtras(Lcom/txdriver/socket/data/ConfigData;)V

    .line 77
    invoke-static {p1}, Lcom/txdriver/socket/handler/ConfigHandler;->saveCarExtras(Lcom/txdriver/socket/data/ConfigData;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/ConfigHandler;->saveTaximeterConfig(Lcom/txdriver/socket/data/ConfigData;)V

    .line 79
    invoke-static {p1}, Lcom/txdriver/socket/handler/ConfigHandler;->saveWebApps(Lcom/txdriver/socket/data/ConfigData;)V

    .line 80
    invoke-static {p1}, Lcom/txdriver/socket/handler/ConfigHandler;->saveDeliveryTimes(Lcom/txdriver/socket/data/ConfigData;)V

    .line 81
    invoke-static {p1}, Lcom/txdriver/socket/handler/ConfigHandler;->deleteOldOrderNotification(Lcom/txdriver/socket/data/ConfigData;)V

    .line 82
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 84
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :goto_0
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V

    .line 89
    iget-object p1, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    new-instance v0, Lcom/txdriver/socket/packet/AddTariffPacket;

    invoke-direct {v0}, Lcom/txdriver/socket/packet/AddTariffPacket;-><init>()V

    invoke-virtual {p1, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    return-void

    .line 86
    :goto_1
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V

    .line 87
    throw p1
.end method

.method private static saveDeliveryTimes(Lcom/txdriver/socket/data/ConfigData;)V
    .locals 3

    .line 229
    invoke-static {}, Lcom/txdriver/db/DeliveryTime;->deleteAll()V

    .line 230
    iget-object v0, p0, Lcom/txdriver/socket/data/ConfigData;->deliveryTimes:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object p0, p0, Lcom/txdriver/socket/data/ConfigData;->deliveryTimes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/socket/data/DeliveryTimes;

    .line 234
    new-instance v1, Lcom/txdriver/db/DeliveryTime;

    iget v2, v0, Lcom/txdriver/socket/data/DeliveryTimes;->time:I

    iget-object v0, v0, Lcom/txdriver/socket/data/DeliveryTimes;->color:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/txdriver/db/DeliveryTime;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/txdriver/db/DeliveryTime;->save(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static saveDriverExtras(Lcom/txdriver/socket/data/ConfigData;)V
    .locals 2

    .line 200
    invoke-static {}, Lcom/txdriver/db/DriverExtra;->deleteAll()V

    .line 201
    iget-object p0, p0, Lcom/txdriver/socket/data/ConfigData;->driverExtras:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/socket/data/ExtrasData;

    .line 202
    new-instance v1, Lcom/txdriver/db/DriverExtra;

    invoke-direct {v1, v0}, Lcom/txdriver/db/DriverExtra;-><init>(Lcom/txdriver/socket/data/ExtrasData;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/txdriver/db/DriverExtra;->save(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static saveMessages(Lcom/txdriver/socket/data/ConfigData;)V
    .locals 2

    .line 129
    invoke-static {}, Lcom/txdriver/db/Message;->deleteAll()V

    .line 130
    iget-object p0, p0, Lcom/txdriver/socket/data/ConfigData;->messages:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/socket/data/MessageData;

    .line 131
    new-instance v1, Lcom/txdriver/db/Message;

    invoke-direct {v1, v0}, Lcom/txdriver/db/Message;-><init>(Lcom/txdriver/socket/data/MessageData;)V

    invoke-virtual {v1}, Lcom/txdriver/db/Message;->save()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private saveOrderTabs(Lcom/txdriver/socket/data/ConfigData;)V
    .locals 4

    .line 176
    invoke-static {}, Lcom/txdriver/db/OrderTab;->deleteAll()V

    .line 177
    iget-object p1, p1, Lcom/txdriver/socket/data/ConfigData;->tabs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/socket/data/OrderTabData;

    .line 178
    new-instance v1, Lcom/txdriver/db/OrderTab;

    invoke-direct {v1, v0}, Lcom/txdriver/db/OrderTab;-><init>(Lcom/txdriver/socket/data/OrderTabData;)V

    invoke-virtual {v1}, Lcom/txdriver/db/OrderTab;->save()V

    .line 179
    new-instance v1, Lcom/txdriver/filter/FilterPreferences;

    iget-object v2, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    iget v3, v0, Lcom/txdriver/socket/data/OrderTabData;->id:I

    invoke-direct {v1, v2, v3}, Lcom/txdriver/filter/FilterPreferences;-><init>(Lcom/txdriver/App;I)V

    .line 180
    iget-boolean v2, v0, Lcom/txdriver/socket/data/OrderTabData;->autoAccept:Z

    invoke-virtual {v1, v2}, Lcom/txdriver/filter/FilterPreferences;->setAutoAcceptFilterEnable(Z)V

    .line 181
    iget-boolean v2, v0, Lcom/txdriver/socket/data/OrderTabData;->radiusFilter:Z

    invoke-virtual {v1, v2}, Lcom/txdriver/filter/FilterPreferences;->setRadiusFilterEnable(Z)V

    .line 182
    iget-boolean v2, v0, Lcom/txdriver/socket/data/OrderTabData;->priceFilter:Z

    invoke-virtual {v1, v2}, Lcom/txdriver/filter/FilterPreferences;->setPriceFilterEnable(Z)V

    .line 183
    iget-boolean v0, v0, Lcom/txdriver/socket/data/OrderTabData;->destinationFilter:Z

    invoke-virtual {v1, v0}, Lcom/txdriver/filter/FilterPreferences;->setDestinationFilterEnable(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static saveOrderTypes(Lcom/txdriver/socket/data/ConfigData;)V
    .locals 5

    .line 188
    invoke-static {}, Lcom/txdriver/db/OrderType;->deleteAll()V

    .line 189
    iget-object p0, p0, Lcom/txdriver/socket/data/ConfigData;->orderTypes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/socket/data/OrderTypeData;

    .line 190
    new-instance v1, Lcom/txdriver/db/OrderType;

    invoke-direct {v1, v0}, Lcom/txdriver/db/OrderType;-><init>(Lcom/txdriver/socket/data/OrderTypeData;)V

    const/4 v2, 0x0

    .line 191
    invoke-virtual {v1, v2}, Lcom/txdriver/db/OrderType;->save(Z)V

    .line 192
    iget-object v0, v0, Lcom/txdriver/socket/data/OrderTypeData;->paymentTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 193
    invoke-static {v3}, Lcom/txdriver/db/PaymentType;->getPaymentType(I)Lcom/txdriver/db/PaymentType;

    move-result-object v3

    .line 194
    new-instance v4, Lcom/txdriver/db/OrderTypePaymentType;

    invoke-direct {v4, v1, v3}, Lcom/txdriver/db/OrderTypePaymentType;-><init>(Lcom/txdriver/db/OrderType;Lcom/txdriver/db/PaymentType;)V

    invoke-virtual {v4, v2}, Lcom/txdriver/db/OrderTypePaymentType;->save(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static saveParkings(Lcom/txdriver/socket/data/ConfigData;)V
    .locals 2

    .line 121
    invoke-static {}, Lcom/txdriver/db/DriverParking;->deleteAll()V

    .line 122
    invoke-static {}, Lcom/txdriver/db/Parking;->deleteAll()V

    .line 123
    iget-object p0, p0, Lcom/txdriver/socket/data/ConfigData;->parkings:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/socket/data/ParkingData;

    .line 124
    new-instance v1, Lcom/txdriver/db/Parking;

    invoke-direct {v1, v0}, Lcom/txdriver/db/Parking;-><init>(Lcom/txdriver/socket/data/ParkingData;)V

    invoke-virtual {v1}, Lcom/txdriver/db/Parking;->save()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static savePaymentTypes(Lcom/txdriver/socket/data/ConfigData;)V
    .locals 2

    .line 169
    invoke-static {}, Lcom/txdriver/db/PaymentType;->deleteAll()V

    .line 170
    iget-object p0, p0, Lcom/txdriver/socket/data/ConfigData;->paymentTypes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/socket/data/PaymentTypeData;

    .line 171
    new-instance v1, Lcom/txdriver/db/PaymentType;

    invoke-direct {v1, v0}, Lcom/txdriver/db/PaymentType;-><init>(Lcom/txdriver/socket/data/PaymentTypeData;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/txdriver/db/PaymentType;->save(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private savePreferences(Lcom/txdriver/socket/data/ConfigData;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget v1, p1, Lcom/txdriver/socket/data/ConfigData;->version:I

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setVersion(I)V

    .line 94
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget v1, p1, Lcom/txdriver/socket/data/ConfigData;->maxAllowedParks:I

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setMaxAllowedParks(I)V

    .line 95
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget v1, p1, Lcom/txdriver/socket/data/ConfigData;->applyOrderTimeout:I

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setApplyOrderTimeout(I)V

    .line 96
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget-boolean v1, p1, Lcom/txdriver/socket/data/ConfigData;->allowTakeBreak:Z

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setAllowTakeBreak(Z)V

    .line 97
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget-boolean v1, p1, Lcom/txdriver/socket/data/ConfigData;->taximeterEnabled:Z

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setTaximeterEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget-boolean v1, p1, Lcom/txdriver/socket/data/ConfigData;->taximeterEnabled:Z

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setPrefTaximeterEnabledConfig(Z)V

    .line 99
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget-object v1, p1, Lcom/txdriver/socket/data/ConfigData;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setTimeZone(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget-boolean v1, p1, Lcom/txdriver/socket/data/ConfigData;->showParkings:Z

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setShowParkings(Z)V

    .line 101
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget v1, p1, Lcom/txdriver/socket/data/ConfigData;->idleTimeout:I

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setIdleTimeout(I)V

    .line 102
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget v1, p1, Lcom/txdriver/socket/data/ConfigData;->arrivedStateDistance:I

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setArrivedStateDistance(I)V

    .line 103
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget v1, p1, Lcom/txdriver/socket/data/ConfigData;->doneStateDistance:I

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setDoneStateDistance(I)V

    .line 104
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget v1, p1, Lcom/txdriver/socket/data/ConfigData;->travelMinTime:I

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setTravelMinTime(I)V

    .line 105
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget-object v1, p1, Lcom/txdriver/socket/data/ConfigData;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setCurrency(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget-boolean v1, p1, Lcom/txdriver/socket/data/ConfigData;->archiveEnabled:Z

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setArchiveEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget-boolean v1, p1, Lcom/txdriver/socket/data/ConfigData;->finOperationsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setFinOperationsEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget-boolean v1, p1, Lcom/txdriver/socket/data/ConfigData;->ratingEnabled:Z

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setRatingEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget-boolean v1, p1, Lcom/txdriver/socket/data/ConfigData;->illegitimateOrder:Z

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setIllegitimateOrderEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget v1, p1, Lcom/txdriver/socket/data/ConfigData;->priceRound:F

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setRoundPrice(F)V

    .line 111
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget-boolean v1, p1, Lcom/txdriver/socket/data/ConfigData;->priceRoundUp:Z

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setRoundPriceUp(Z)V

    .line 112
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget-boolean v1, p1, Lcom/txdriver/socket/data/ConfigData;->driversOnMap:Z

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setShowDriversOnMap(Z)V

    .line 113
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget-boolean v1, p1, Lcom/txdriver/socket/data/ConfigData;->driverStore:Z

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setDriverStore(Z)V

    .line 114
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget-boolean v1, p1, Lcom/txdriver/socket/data/ConfigData;->driverStoreArchive:Z

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setDriverStoreArchive(Z)V

    .line 115
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget-object v1, p1, Lcom/txdriver/socket/data/ConfigData;->hereMapsAPIkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setHereMapsApiKey(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget-boolean v1, p1, Lcom/txdriver/socket/data/ConfigData;->driverRegistrationActive:Z

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setDriverRegistration(Z)V

    .line 117
    iget-object v0, p0, Lcom/txdriver/socket/handler/ConfigHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget-boolean p1, p1, Lcom/txdriver/socket/data/ConfigData;->driverPhotoControlActive:Z

    invoke-virtual {v0, p1}, Lcom/txdriver/preferences/Preferences;->setPhotoControl(Z)V

    return-void
.end method

.method private static saveQuestions(Lcom/txdriver/socket/data/ConfigData;)V
    .locals 4

    .line 136
    invoke-static {}, Lcom/txdriver/db/Answer;->deleteAll()V

    .line 137
    invoke-static {}, Lcom/txdriver/db/Question;->deleteAll()V

    .line 138
    iget-object p0, p0, Lcom/txdriver/socket/data/ConfigData;->questions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/socket/data/QuestionData;

    .line 139
    new-instance v1, Lcom/txdriver/db/Question;

    invoke-direct {v1, v0}, Lcom/txdriver/db/Question;-><init>(Lcom/txdriver/socket/data/QuestionData;)V

    .line 140
    invoke-virtual {v1}, Lcom/txdriver/db/Question;->save()V

    .line 141
    iget-object v0, v0, Lcom/txdriver/socket/data/QuestionData;->answers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/socket/data/AnswerData;

    .line 142
    new-instance v3, Lcom/txdriver/db/Answer;

    invoke-direct {v3, v2}, Lcom/txdriver/db/Answer;-><init>(Lcom/txdriver/socket/data/AnswerData;)V

    .line 143
    iput-object v1, v3, Lcom/txdriver/db/Answer;->question:Lcom/txdriver/db/Question;

    .line 144
    invoke-virtual {v3}, Lcom/txdriver/db/Answer;->save()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static saveRejectReasons(Lcom/txdriver/socket/data/ConfigData;)V
    .locals 2

    .line 150
    invoke-static {}, Lcom/txdriver/db/RejectReason;->deleteAll()V

    .line 151
    iget-object p0, p0, Lcom/txdriver/socket/data/ConfigData;->rejectReasons:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/socket/data/RejectReasonData;

    .line 152
    new-instance v1, Lcom/txdriver/db/RejectReason;

    invoke-direct {v1, v0}, Lcom/txdriver/db/RejectReason;-><init>(Lcom/txdriver/socket/data/RejectReasonData;)V

    .line 153
    invoke-virtual {v1}, Lcom/txdriver/db/RejectReason;->save()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private saveTariffs(Lcom/txdriver/socket/data/ConfigData;)V
    .locals 6

    .line 250
    invoke-static {}, Lcom/txdriver/db/TariffOrderType;->deleteAll()V

    .line 251
    invoke-static {}, Lcom/txdriver/db/Tariff;->deleteAll()V

    .line 252
    iget-object v0, p1, Lcom/txdriver/socket/data/ConfigData;->taximeterConfig:Lcom/txdriver/socket/data/TaximeterConfigData;

    iget-object v0, v0, Lcom/txdriver/socket/data/TaximeterConfigData;->tariffs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/socket/data/CommonTariffData;

    .line 253
    invoke-static {v1}, Lcom/txdriver/db/Tariff;->createTariff(Lcom/txdriver/socket/data/TariffData;)Lcom/txdriver/db/Tariff;

    move-result-object v1

    .line 254
    iget-object v2, p1, Lcom/txdriver/socket/data/ConfigData;->orderTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/socket/data/OrderTypeData;

    .line 255
    iget-object v4, v3, Lcom/txdriver/socket/data/OrderTypeData;->tariffs:Ljava/util/List;

    iget v5, v1, Lcom/txdriver/db/Tariff;->tariffId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 258
    :cond_1
    iget v3, v3, Lcom/txdriver/socket/data/OrderTypeData;->id:I

    invoke-static {v3}, Lcom/txdriver/db/OrderType;->getOrderType(I)Lcom/txdriver/db/OrderType;

    move-result-object v3

    .line 259
    new-instance v4, Lcom/txdriver/db/TariffOrderType;

    invoke-direct {v4, v1, v3}, Lcom/txdriver/db/TariffOrderType;-><init>(Lcom/txdriver/db/Tariff;Lcom/txdriver/db/OrderType;)V

    invoke-virtual {v4}, Lcom/txdriver/db/TariffOrderType;->save()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private saveTaximeterConfig(Lcom/txdriver/socket/data/ConfigData;)V
    .locals 1

    .line 214
    iget-object v0, p1, Lcom/txdriver/socket/data/ConfigData;->taximeterConfig:Lcom/txdriver/socket/data/TaximeterConfigData;

    invoke-static {v0}, Lcom/txdriver/socket/handler/ConfigHandler;->saveZones(Lcom/txdriver/socket/data/TaximeterConfigData;)V

    .line 215
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/ConfigHandler;->saveTariffs(Lcom/txdriver/socket/data/ConfigData;)V

    return-void
.end method

.method private static saveWebApps(Lcom/txdriver/socket/data/ConfigData;)V
    .locals 5

    .line 219
    invoke-static {}, Lcom/txdriver/db/WebApp;->deleteAll()V

    .line 220
    iget-object v0, p0, Lcom/txdriver/socket/data/ConfigData;->webApps:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object p0, p0, Lcom/txdriver/socket/data/ConfigData;->webApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/socket/data/WebAppData;

    .line 224
    new-instance v1, Lcom/txdriver/db/WebApp;

    iget v2, v0, Lcom/txdriver/socket/data/WebAppData;->id:I

    iget-object v3, v0, Lcom/txdriver/socket/data/WebAppData;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/txdriver/socket/data/WebAppData;->url:Ljava/lang/String;

    iget v0, v0, Lcom/txdriver/socket/data/WebAppData;->type:I

    invoke-static {v0}, Lcom/txdriver/db/WebApp$Type;->get(I)Lcom/txdriver/db/WebApp$Type;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/txdriver/db/WebApp;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/txdriver/db/WebApp$Type;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/txdriver/db/WebApp;->save(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static saveZones(Lcom/txdriver/socket/data/TaximeterConfigData;)V
    .locals 1

    .line 243
    invoke-static {}, Lcom/txdriver/db/Zone;->deleteAll()V

    .line 244
    iget-object p0, p0, Lcom/txdriver/socket/data/TaximeterConfigData;->zones:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/socket/data/ZoneData;

    .line 245
    invoke-static {v0}, Lcom/txdriver/db/Zone;->createZone(Lcom/txdriver/socket/data/ZoneData;)Lcom/txdriver/db/Zone;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/ConfigData;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/ConfigHandler;->saveConfig(Lcom/txdriver/socket/data/ConfigData;)V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Lcom/txdriver/socket/data/ConfigData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/ConfigHandler;->handle(Lcom/txdriver/socket/data/ConfigData;)V

    return-void
.end method
