.class public Lcom/txdriver/socket/handler/ParkingsQueuesHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "ParkingsQueuesHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Ljava/util/List<",
        "Lcom/txdriver/socket/data/ParkingQueueData;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ParkingsQueuesHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 24
    new-instance v0, Lcom/txdriver/socket/data/template/ParkingQueueTemplate;

    invoke-direct {v0}, Lcom/txdriver/socket/data/template/ParkingQueueTemplate;-><init>()V

    invoke-static {v0}, Lorg/msgpack/template/Templates;->tList(Lorg/msgpack/template/Template;)Lorg/msgpack/template/Template;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Lorg/msgpack/template/Template;)V

    return-void
.end method

.method private static saveQueues(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/ParkingQueueData;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/txdriver/db/DriverParking;->deleteAll()V

    .line 34
    invoke-static {}, Lcom/txdriver/db/Driver;->deleteAll()V

    .line 35
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/socket/data/ParkingQueueData;

    .line 36
    iget v1, v0, Lcom/txdriver/socket/data/ParkingQueueData;->parkingId:I

    invoke-static {v1}, Lcom/txdriver/db/Parking;->getByParkingId(I)Lcom/txdriver/db/Parking;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 38
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->beginTransaction()V

    .line 40
    :try_start_0
    iget-object v0, v0, Lcom/txdriver/socket/data/ParkingQueueData;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/txdriver/db/Parking;->addDriver(I)I

    goto :goto_1

    .line 43
    :cond_1
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V

    .line 46
    throw p0

    .line 49
    :cond_2
    invoke-static {}, Lcom/txdriver/db/DriverParking;->notifyChanged()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/ParkingsQueuesHandler;->handle(Ljava/util/List;)V

    return-void
.end method

.method public handle(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/ParkingQueueData;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-static {p1}, Lcom/txdriver/socket/handler/ParkingsQueuesHandler;->saveQueues(Ljava/util/List;)V

    return-void
.end method
