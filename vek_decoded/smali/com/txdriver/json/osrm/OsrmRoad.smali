.class public Lcom/txdriver/json/osrm/OsrmRoad;
.super Ljava/lang/Object;
.source "OsrmRoad.java"


# instance fields
.field private code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field private routes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "routes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/json/osrm/Route;",
            ">;"
        }
    .end annotation
.end field

.field private waypoints:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "waypoints"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/json/osrm/Waypoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/json/osrm/OsrmRoad;->routes:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/json/osrm/OsrmRoad;->waypoints:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/txdriver/json/osrm/OsrmRoad;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/json/osrm/Route;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/txdriver/json/osrm/OsrmRoad;->routes:Ljava/util/List;

    return-object v0
.end method

.method public getWaypoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/json/osrm/Waypoint;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/txdriver/json/osrm/OsrmRoad;->waypoints:Ljava/util/List;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/txdriver/json/osrm/OsrmRoad;->code:Ljava/lang/String;

    return-void
.end method

.method public setRoutes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/json/osrm/Route;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/txdriver/json/osrm/OsrmRoad;->routes:Ljava/util/List;

    return-void
.end method

.method public setWaypoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/json/osrm/Waypoint;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/txdriver/json/osrm/OsrmRoad;->waypoints:Ljava/util/List;

    return-void
.end method
