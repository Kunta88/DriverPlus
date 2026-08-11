.class public Lorg/osmdroid/bonuspack/clustering/StaticCluster;
.super Ljava/lang/Object;
.source "StaticCluster.java"


# instance fields
.field protected mCenter:Lorg/osmdroid/util/GeoPoint;

.field protected final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/views/overlay/Marker;",
            ">;"
        }
    .end annotation
.end field

.field protected mMarker:Lorg/osmdroid/views/overlay/Marker;


# direct methods
.method public constructor <init>(Lorg/osmdroid/util/GeoPoint;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->mItems:Ljava/util/ArrayList;

    .line 18
    iput-object p1, p0, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->mCenter:Lorg/osmdroid/util/GeoPoint;

    return-void
.end method


# virtual methods
.method public add(Lorg/osmdroid/views/overlay/Marker;)Z
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getItem(I)Lorg/osmdroid/views/overlay/Marker;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/views/overlay/Marker;

    return-object p1
.end method

.method public getMarker()Lorg/osmdroid/views/overlay/Marker;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->mMarker:Lorg/osmdroid/views/overlay/Marker;

    return-object v0
.end method

.method public getPosition()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->mCenter:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public setMarker(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->mMarker:Lorg/osmdroid/views/overlay/Marker;

    return-void
.end method

.method public setPosition(Lorg/osmdroid/util/GeoPoint;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->mCenter:Lorg/osmdroid/util/GeoPoint;

    return-void
.end method
