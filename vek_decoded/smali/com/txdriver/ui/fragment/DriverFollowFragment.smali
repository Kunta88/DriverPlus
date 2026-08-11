.class public Lcom/txdriver/ui/fragment/DriverFollowFragment;
.super Lcom/txdriver/ui/fragment/MapFragment;
.source "DriverFollowFragment.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/ui/fragment/MapFragment;",
        "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
        "Lcom/txdriver/json/LatLng;",
        ">;"
    }
.end annotation


# static fields
.field public static final DRIVER_IN_DANGER_ARG:Ljava/lang/String; = "driver_in_danger_arg"


# instance fields
.field private app:Lcom/txdriver/App;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDriverInDangerData:Lcom/txdriver/socket/data/DriverInDangerData;

.field private mTimer:Ljava/util/Timer;

.field private request:Lcom/txdriver/http/request/DriverLocationRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/MapFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/DriverFollowFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/DriverFollowFragment;->requestDriverLocation()V

    return-void
.end method

.method public static newInstance(Lcom/txdriver/socket/data/DriverInDangerData;)Lcom/txdriver/ui/fragment/DriverFollowFragment;
    .locals 3

    .line 35
    new-instance v0, Lcom/txdriver/ui/fragment/DriverFollowFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/DriverFollowFragment;-><init>()V

    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "driver_in_danger_arg"

    .line 37
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/DriverFollowFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private requestDriverLocation()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverFollowFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v0

    new-instance v1, Lcom/txdriver/socket/packet/GetDriverLocationPacket;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/DriverFollowFragment;->mDriverInDangerData:Lcom/txdriver/socket/data/DriverInDangerData;

    iget v2, v2, Lcom/txdriver/socket/data/DriverInDangerData;->driverId:I

    invoke-direct {v1, v2}, Lcom/txdriver/socket/packet/GetDriverLocationPacket;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    .line 67
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverFollowFragment;->request:Lcom/txdriver/http/request/DriverLocationRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/DriverLocationRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 70
    :cond_0
    new-instance v0, Lcom/txdriver/http/request/DriverLocationRequest;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/DriverFollowFragment;->app:Lcom/txdriver/App;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/DriverFollowFragment;->mDriverInDangerData:Lcom/txdriver/socket/data/DriverInDangerData;

    iget v2, v2, Lcom/txdriver/socket/data/DriverInDangerData;->driverId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/txdriver/http/request/DriverLocationRequest;-><init>(Lcom/txdriver/App;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/DriverFollowFragment;->request:Lcom/txdriver/http/request/DriverLocationRequest;

    .line 71
    invoke-virtual {v0, p0}, Lcom/txdriver/http/request/DriverLocationRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 72
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverFollowFragment;->request:Lcom/txdriver/http/request/DriverLocationRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/DriverLocationRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private showObject(Lcom/txdriver/json/LatLng;)V
    .locals 8

    .line 104
    iget-wide v0, p1, Lcom/txdriver/json/LatLng;->lat:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p1, Lcom/txdriver/json/LatLng;->lng:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/DriverFollowFragment;->getMap()Lcom/txdriver/ui/fragment/map/Map;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/ui/fragment/map/Map;->clearOverlayItems()V

    .line 106
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/DriverFollowFragment;->getMap()Lcom/txdriver/ui/fragment/map/Map;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/fragment/map/Item;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/txdriver/ui/fragment/DriverFollowFragment;->mDriverInDangerData:Lcom/txdriver/socket/data/DriverInDangerData;

    iget-object v4, v4, Lcom/txdriver/socket/data/DriverInDangerData;->driverName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/txdriver/ui/fragment/DriverFollowFragment;->mDriverInDangerData:Lcom/txdriver/socket/data/DriverInDangerData;

    iget-object v4, v4, Lcom/txdriver/socket/data/DriverInDangerData;->driverCar:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "%s\n%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/txdriver/ui/fragment/map/Point;

    iget-wide v4, p1, Lcom/txdriver/json/LatLng;->lat:D

    iget-wide v6, p1, Lcom/txdriver/json/LatLng;->lng:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/txdriver/ui/fragment/map/Point;-><init>(DD)V

    iget-object p1, p0, Lcom/txdriver/ui/fragment/DriverFollowFragment;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v2, v3, p1}, Lcom/txdriver/ui/fragment/map/Item;-><init>(Ljava/lang/String;Lcom/txdriver/ui/fragment/map/Point;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/map/Map;->addOverlayItem(Lcom/txdriver/ui/fragment/map/Item;)V

    .line 110
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/DriverFollowFragment;->getMap()Lcom/txdriver/ui/fragment/map/Map;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/map/Map;->setZoomToSpanAllItems()V

    :cond_0
    return-void
.end method

.method private startReceiveDriverLocation()V
    .locals 6

    .line 56
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/DriverFollowFragment;->mTimer:Ljava/util/Timer;

    .line 57
    new-instance v1, Lcom/txdriver/ui/fragment/DriverFollowFragment$1;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/fragment/DriverFollowFragment$1;-><init>(Lcom/txdriver/ui/fragment/DriverFollowFragment;)V

    const/16 v2, 0xa

    .line 62
    invoke-static {v2}, Lcom/txdriver/utils/TimeUtils;->secondsToMilliseconds(I)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v2, 0x0

    .line 57
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private stopReceiveLocation()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverFollowFragment;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/MapFragment;->onAttach(Landroid/app/Activity;)V

    .line 93
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/txdriver/App;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/DriverFollowFragment;->app:Lcom/txdriver/App;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/MapFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/DriverFollowFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "driver_in_danger_arg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/txdriver/socket/data/DriverInDangerData;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/DriverFollowFragment;->mDriverInDangerData:Lcom/txdriver/socket/data/DriverInDangerData;

    .line 46
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/DriverFollowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f08009c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/DriverFollowFragment;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/LatLng;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 99
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/DriverFollowFragment;->showObject(Lcom/txdriver/json/LatLng;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/txdriver/json/LatLng;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/DriverFollowFragment;->onResponse(Lcom/txdriver/json/LatLng;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 51
    invoke-super {p0}, Lcom/txdriver/ui/fragment/MapFragment;->onStart()V

    .line 52
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/DriverFollowFragment;->startReceiveDriverLocation()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 77
    invoke-super {p0}, Lcom/txdriver/ui/fragment/MapFragment;->onStop()V

    .line 78
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverFollowFragment;->request:Lcom/txdriver/http/request/DriverLocationRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/DriverLocationRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/DriverFollowFragment;->stopReceiveLocation()V

    return-void
.end method
