.class public abstract Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "MarkerClusterer.java"


# static fields
.field protected static final FORCE_CLUSTERING:I = -0x1


# instance fields
.field protected mClusterIcon:Landroid/graphics/Bitmap;

.field protected mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/bonuspack/clustering/StaticCluster;",
            ">;"
        }
    .end annotation
.end field

.field protected mDescription:Ljava/lang/String;

.field protected mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/views/overlay/Marker;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastZoomLevel:I

.field protected mName:Ljava/lang/String;

.field protected mPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->mItems:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->mPoint:Landroid/graphics/Point;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->mClusters:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->mLastZoomLevel:I

    return-void
.end method


# virtual methods
.method public add(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract buildClusterMarker(Lorg/osmdroid/bonuspack/clustering/StaticCluster;Lorg/osmdroid/views/MapView;)Lorg/osmdroid/views/overlay/Marker;
.end method

.method public abstract clusterer(Lorg/osmdroid/views/MapView;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/views/MapView;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/bonuspack/clustering/StaticCluster;",
            ">;"
        }
    .end annotation
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 2

    .line 99
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v0

    .line 100
    iget v1, p0, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->mLastZoomLevel:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    invoke-virtual {p0, p2}, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->clusterer(Lorg/osmdroid/views/MapView;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->mClusters:Ljava/util/ArrayList;

    .line 102
    invoke-virtual {p0, v1, p1, p2}, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->renderer(Ljava/util/ArrayList;Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;)V

    .line 103
    iput v0, p0, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->mLastZoomLevel:I

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/bonuspack/clustering/StaticCluster;

    .line 107
    invoke-virtual {v1}, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->getMarker()Lorg/osmdroid/views/overlay/Marker;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lorg/osmdroid/views/overlay/Marker;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getItem(I)Lorg/osmdroid/views/overlay/Marker;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/views/overlay/Marker;

    return-object p1
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/views/overlay/Marker;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->mLastZoomLevel:I

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 2

    .line 145
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->reversedClusters()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/bonuspack/clustering/StaticCluster;

    .line 146
    invoke-virtual {v1}, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->getMarker()Lorg/osmdroid/views/overlay/Marker;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/osmdroid/views/overlay/Marker;->onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 2

    .line 137
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->reversedClusters()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/bonuspack/clustering/StaticCluster;

    .line 138
    invoke-virtual {v1}, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->getMarker()Lorg/osmdroid/views/overlay/Marker;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/osmdroid/views/overlay/Marker;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 2

    .line 153
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->reversedClusters()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/bonuspack/clustering/StaticCluster;

    .line 154
    invoke-virtual {v1}, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->getMarker()Lorg/osmdroid/views/overlay/Marker;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/osmdroid/views/overlay/Marker;->onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public abstract renderer(Ljava/util/ArrayList;Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/bonuspack/clustering/StaticCluster;",
            ">;",
            "Landroid/graphics/Canvas;",
            "Lorg/osmdroid/views/MapView;",
            ")V"
        }
    .end annotation
.end method

.method public reversedClusters()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/osmdroid/bonuspack/clustering/StaticCluster;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer$1;

    invoke-direct {v0, p0}, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer$1;-><init>(Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;)V

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->mClusterIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;->mName:Ljava/lang/String;

    return-void
.end method
