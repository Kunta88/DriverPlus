.class public Lcom/txdriver/socket/packet/DriverLocationPacket;
.super Lcom/txdriver/socket/packet/ClientPacket;
.source "DriverLocationPacket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/packet/ClientPacket<",
        "Lcom/txdriver/socket/packet/DriverLocationPacket;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# static fields
.field public static final CODE:B = 0x13t


# instance fields
.field private accuracy:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x6
    .end annotation
.end field

.field private bearing:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x5
    .end annotation
.end field

.field public lat:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field public lng:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field public orderId:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field private provider:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x7
    .end annotation
.end field

.field public speed:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
    .end annotation
.end field

.field private tariffId:Ljava/lang/Integer;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x8
    .end annotation
.end field

.field private time:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/txdriver/App;Landroid/location/Location;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Lcom/txdriver/socket/packet/ClientPacket;-><init>()V

    .line 44
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/socket/packet/DriverLocationPacket;->lat:D

    .line 45
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/socket/packet/DriverLocationPacket;->lng:D

    .line 46
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/txdriver/utils/TimeUtils;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/socket/packet/DriverLocationPacket;->time:Ljava/lang/String;

    .line 47
    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v0

    iput v0, p0, Lcom/txdriver/socket/packet/DriverLocationPacket;->speed:F

    .line 48
    invoke-virtual {p2}, Landroid/location/Location;->getBearing()F

    move-result v0

    iput v0, p0, Lcom/txdriver/socket/packet/DriverLocationPacket;->bearing:F

    .line 49
    const-class v0, Lcom/txdriver/db/Order;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->getCurrentOrderId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/txdriver/db/Order;->load(Ljava/lang/Class;J)Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/txdriver/db/Order;

    if-eqz v0, :cond_0

    .line 50
    iget v0, v0, Lcom/txdriver/db/Order;->orderId:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/txdriver/socket/packet/DriverLocationPacket;->orderId:I

    .line 51
    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iput v0, p0, Lcom/txdriver/socket/packet/DriverLocationPacket;->accuracy:F

    .line 52
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    :goto_1
    iput p2, p0, Lcom/txdriver/socket/packet/DriverLocationPacket;->provider:I

    .line 53
    invoke-virtual {p1}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 54
    iget p1, p1, Lcom/txdriver/db/Tariff;->tariffId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput-object p1, p0, Lcom/txdriver/socket/packet/DriverLocationPacket;->tariffId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getCode()B
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method public getData()Lcom/txdriver/socket/packet/DriverLocationPacket;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/txdriver/socket/packet/DriverLocationPacket;->getData()Lcom/txdriver/socket/packet/DriverLocationPacket;

    move-result-object v0

    return-object v0
.end method
