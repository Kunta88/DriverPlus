.class public Lcom/txdriver/socket/handler/OpenSessionHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "OpenSessionHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/OpenSessionData;",
        ">;"
    }
.end annotation


# static fields
.field private static final RESULT_OK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OpenSessionHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 24
    const-class v0, Lcom/txdriver/socket/data/OpenSessionData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/OpenSessionData;)V
    .locals 4

    .line 29
    iget v0, p1, Lcom/txdriver/socket/data/OpenSessionData;->autoType:I

    invoke-static {v0}, Lcom/txdriver/db/CarType;->getById(I)Lcom/txdriver/db/CarType;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/txdriver/socket/handler/OpenSessionHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/txdriver/db/CarType;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/txdriver/preferences/Preferences;->setCarType(J)V

    .line 31
    iget-byte v0, p1, Lcom/txdriver/socket/data/OpenSessionData;->result:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 32
    iget-object p1, p0, Lcom/txdriver/socket/handler/OpenSessionHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/txdriver/preferences/Preferences;->setSessionOpened(Z)V

    .line 33
    iget-object p1, p0, Lcom/txdriver/socket/handler/OpenSessionHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 35
    iget-object v0, p0, Lcom/txdriver/socket/handler/OpenSessionHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v0

    new-instance v1, Lcom/txdriver/socket/packet/DriverLocationPacket;

    iget-object v2, p0, Lcom/txdriver/socket/handler/OpenSessionHandler;->app:Lcom/txdriver/App;

    invoke-direct {v1, v2, p1}, Lcom/txdriver/socket/packet/DriverLocationPacket;-><init>(Lcom/txdriver/App;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    goto :goto_1

    .line 37
    :cond_1
    iget-object v0, p1, Lcom/txdriver/socket/data/OpenSessionData;->error:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/txdriver/socket/handler/OpenSessionHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setSessionOpened(Z)V

    .line 39
    iget-object v0, p0, Lcom/txdriver/socket/handler/OpenSessionHandler;->app:Lcom/txdriver/App;

    iget-object p1, p1, Lcom/txdriver/socket/data/OpenSessionData;->error:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 41
    :cond_2
    iget-object p1, p0, Lcom/txdriver/socket/handler/OpenSessionHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/txdriver/preferences/Preferences;->setSessionOpened(Z)V

    .line 42
    iget-object p1, p0, Lcom/txdriver/socket/handler/OpenSessionHandler;->app:Lcom/txdriver/App;

    const v0, 0x7f100264

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/OpenSessionHandler;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/txdriver/socket/data/OpenSessionData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/OpenSessionHandler;->handle(Lcom/txdriver/socket/data/OpenSessionData;)V

    return-void
.end method
