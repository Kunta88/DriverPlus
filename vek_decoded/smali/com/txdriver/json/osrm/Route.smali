.class public Lcom/txdriver/json/osrm/Route;
.super Ljava/lang/Object;
.source "Route.java"


# instance fields
.field private distance:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "distance"
    .end annotation
.end field

.field private duration:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private geometry:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "geometry"
    .end annotation
.end field

.field private legs:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "legs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/json/osrm/Leg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/json/osrm/Route;->legs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDistance()Ljava/lang/Double;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/txdriver/json/osrm/Route;->distance:Ljava/lang/Double;

    return-object v0
.end method

.method public getDuration()Ljava/lang/Double;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/txdriver/json/osrm/Route;->duration:Ljava/lang/Double;

    return-object v0
.end method

.method public getGeometry()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/txdriver/json/osrm/Route;->geometry:Ljava/lang/String;

    return-object v0
.end method

.method public getLegs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/json/osrm/Leg;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/txdriver/json/osrm/Route;->legs:Ljava/util/List;

    return-object v0
.end method

.method public setDistance(Ljava/lang/Double;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/txdriver/json/osrm/Route;->distance:Ljava/lang/Double;

    return-void
.end method

.method public setDuration(Ljava/lang/Double;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/txdriver/json/osrm/Route;->duration:Ljava/lang/Double;

    return-void
.end method

.method public setGeometry(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/txdriver/json/osrm/Route;->geometry:Ljava/lang/String;

    return-void
.end method

.method public setLegs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/json/osrm/Leg;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/txdriver/json/osrm/Route;->legs:Ljava/util/List;

    return-void
.end method
