.class public Lcom/txdriver/location/LocationSender;
.super Ljava/lang/Object;
.source "LocationSender.java"

# interfaces
.implements Lcom/txdriver/location/LocationManager$LocationChangeListener;


# static fields
.field private static final MAX_QUEUE_SIZE:I = 0x32

.field private static final MAX_TIME:I = 0xf

.field private static final MIN_DISTANCE:I = 0xa

.field private static final MIN_TIME:I = 0x5


# instance fields
.field private app:Lcom/txdriver/App;

.field private lastLocation:Landroid/location/Location;

.field private packetQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/txdriver/socket/packet/DriverLocationPacket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/location/LocationSender;->packetQueue:Ljava/util/LinkedList;

    .line 24
    iput-object p1, p0, Lcom/txdriver/location/LocationSender;->app:Lcom/txdriver/App;

    return-void
.end method

.method private sendLocation(Landroid/location/Location;)V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/txdriver/location/LocationSender;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->isSessionOpened()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/txdriver/location/LocationSender;->packetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    .line 41
    iget-object v0, p0, Lcom/txdriver/location/LocationSender;->packetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/txdriver/location/LocationSender;->packetQueue:Ljava/util/LinkedList;

    new-instance v1, Lcom/txdriver/socket/packet/DriverLocationPacket;

    iget-object v2, p0, Lcom/txdriver/location/LocationSender;->app:Lcom/txdriver/App;

    invoke-direct {v1, v2, p1}, Lcom/txdriver/socket/packet/DriverLocationPacket;-><init>(Lcom/txdriver/App;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object p1, p0, Lcom/txdriver/location/LocationSender;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/socket/Client;->isSocketConnected()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 48
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/txdriver/location/LocationSender;->packetQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 49
    iget-object p1, p0, Lcom/txdriver/location/LocationSender;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/socket/Client;->isSocketConnected()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 52
    :cond_3
    iget-object p1, p0, Lcom/txdriver/location/LocationSender;->packetQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/socket/Packet;

    .line 53
    iget-object v0, p0, Lcom/txdriver/location/LocationSender;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/txdriver/location/LocationSender;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/socket/Client;->isSocketConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    .line 30
    :goto_0
    iget-object v1, p0, Lcom/txdriver/location/LocationSender;->lastLocation:Landroid/location/Location;

    if-eqz v1, :cond_1

    invoke-static {p1, v1}, Lcom/txdriver/location/LocationUtils;->getTime(Landroid/location/Location;Landroid/location/Location;)F

    move-result v1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/txdriver/location/LocationSender;->lastLocation:Landroid/location/Location;

    invoke-static {p1, v0}, Lcom/txdriver/location/LocationUtils;->getDistance(Landroid/location/Location;Landroid/location/Location;)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 31
    :cond_1
    invoke-direct {p0, p1}, Lcom/txdriver/location/LocationSender;->sendLocation(Landroid/location/Location;)V

    .line 32
    iput-object p1, p0, Lcom/txdriver/location/LocationSender;->lastLocation:Landroid/location/Location;

    :cond_2
    return-void
.end method
