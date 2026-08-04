.class public Lcom/txdriver/socket/handler/DriverLocationHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "DriverLocationHandler.java"


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/packet/ServerPacket;)V
    .locals 3

    .line 21
    iget-object p1, p0, Lcom/txdriver/socket/handler/DriverLocationHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/txdriver/socket/handler/DriverLocationHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v0

    new-instance v1, Lcom/txdriver/socket/packet/DriverLocationPacket;

    iget-object v2, p0, Lcom/txdriver/socket/handler/DriverLocationHandler;->app:Lcom/txdriver/App;

    invoke-direct {v1, v2, p1}, Lcom/txdriver/socket/packet/DriverLocationPacket;-><init>(Lcom/txdriver/App;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    :cond_0
    return-void
.end method

.method public handle(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
