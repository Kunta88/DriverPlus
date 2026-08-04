.class public Lcom/txdriver/json/osrm/Leg;
.super Ljava/lang/Object;
.source "Leg.java"


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

.field private steps:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "steps"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private summary:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "summary"
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

    iput-object v0, p0, Lcom/txdriver/json/osrm/Leg;->steps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDistance()Ljava/lang/Double;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/txdriver/json/osrm/Leg;->distance:Ljava/lang/Double;

    return-object v0
.end method

.method public getDuration()Ljava/lang/Double;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/txdriver/json/osrm/Leg;->duration:Ljava/lang/Double;

    return-object v0
.end method

.method public getSteps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/txdriver/json/osrm/Leg;->steps:Ljava/util/List;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/txdriver/json/osrm/Leg;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public setDistance(Ljava/lang/Double;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/txdriver/json/osrm/Leg;->distance:Ljava/lang/Double;

    return-void
.end method

.method public setDuration(Ljava/lang/Double;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/txdriver/json/osrm/Leg;->duration:Ljava/lang/Double;

    return-void
.end method

.method public setSteps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/txdriver/json/osrm/Leg;->steps:Ljava/util/List;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/txdriver/json/osrm/Leg;->summary:Ljava/lang/String;

    return-void
.end method
