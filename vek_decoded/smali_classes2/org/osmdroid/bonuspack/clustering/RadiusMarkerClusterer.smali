.class public Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;
.super Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;
.source "RadiusMarkerClusterer.java"


# instance fields
.field public mAnchorU:F

.field public mAnchorV:F

.field private mClonedMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/views/overlay/Marker;",
            ">;"
        }
    .end annotation
.end field

.field protected mMaxClusteringZoomLevel:I

.field protected mRadiusInMeters:D

.field protected mRadiusInPixels:I

.field public mTextAnchorU:F

.field public mTextAnchorV:F

.field protected mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 47
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;-><init>()V

    const/16 v0, 0x11

    .line 35
    iput v0, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mMaxClusteringZoomLevel:I

    const/16 v0, 0x64

    .line 36
    iput v0, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mRadiusInPixels:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 42
    iput v0, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mAnchorU:F

    iput v0, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mAnchorV:F

    .line 44
    iput v0, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mTextAnchorU:F

    iput v0, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mTextAnchorV:F

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 49
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v0, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41700000    # 15.0f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 51
    iget-object v0, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 52
    iget-object v0, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 53
    iget-object v0, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/osmdroid/bonuspack/R$drawable;->marker_cluster:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 55
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->setIcon(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private convertRadiusToMeters(Lorg/osmdroid/views/MapView;)V
    .locals 5

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p1, v0}, Lorg/osmdroid/views/MapView;->getIntrinsicScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 153
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 154
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    .line 156
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getDiagonalLengthInMeters()D

    move-result-wide v3

    mul-int v1, v1, v1

    mul-int v2, v2, v2

    add-int/2addr v1, v2

    int-to-double v0, v1

    .line 159
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v3, v0

    .line 162
    iget p1, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mRadiusInPixels:I

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    iput-wide v0, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mRadiusInMeters:D

    return-void
.end method

.method private createCluster(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Lorg/osmdroid/bonuspack/clustering/StaticCluster;
    .locals 7

    .line 91
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Marker;->getPosition()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    .line 93
    new-instance v1, Lorg/osmdroid/bonuspack/clustering/StaticCluster;

    invoke-direct {v1, v0}, Lorg/osmdroid/bonuspack/clustering/StaticCluster;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    .line 94
    invoke-virtual {v1, p1}, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->add(Lorg/osmdroid/views/overlay/Marker;)Z

    .line 96
    iget-object v2, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mClonedMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result p1

    iget p2, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mMaxClusteringZoomLevel:I

    if-le p1, p2, :cond_0

    return-object v1

    .line 103
    :cond_0
    iget-object p1, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mClonedMarkers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 104
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/osmdroid/views/overlay/Marker;

    .line 106
    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/Marker;->getPosition()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v2

    int-to-double v2, v2

    .line 107
    iget-wide v4, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mRadiusInMeters:D

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_1

    .line 108
    invoke-virtual {v1, p2}, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->add(Lorg/osmdroid/views/overlay/Marker;)Z

    .line 109
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public buildClusterMarker(Lorg/osmdroid/bonuspack/clustering/StaticCluster;Lorg/osmdroid/views/MapView;)Lorg/osmdroid/views/overlay/Marker;
    .locals 7

    .line 117
    new-instance v0, Lorg/osmdroid/views/overlay/Marker;

    invoke-direct {v0, p2}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 118
    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->getPosition()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    const/4 v1, 0x0

    .line 119
    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;)V

    .line 120
    iget v2, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mAnchorU:F

    iget v3, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mAnchorV:F

    invoke-virtual {v0, v2, v3}, Lorg/osmdroid/views/overlay/Marker;->setAnchor(FF)V

    .line 122
    iget-object v2, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mClusterIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mClusterIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mClusterIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 123
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    iget-object v4, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mClusterIcon:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->getSize()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 126
    iget-object v1, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v4, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 127
    iget v4, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mTextAnchorU:F

    .line 128
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v4, v5

    iget v5, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mTextAnchorV:F

    .line 129
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v5, v5, v6

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v5, v1

    iget-object v1, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mTextPaint:Landroid/graphics/Paint;

    .line 127
    invoke-virtual {v3, p1, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 131
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p1, p2, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/Marker;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public clusterer(Lorg/osmdroid/views/MapView;)Ljava/util/ArrayList;
    .locals 3
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

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-direct {p0, p1}, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->convertRadiusToMeters(Lorg/osmdroid/views/MapView;)V

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mItems:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mClonedMarkers:Ljava/util/ArrayList;

    .line 82
    :goto_0
    iget-object v1, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mClonedMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    iget-object v1, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mClonedMarkers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Marker;

    .line 84
    invoke-direct {p0, v1, p1}, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->createCluster(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Lorg/osmdroid/bonuspack/clustering/StaticCluster;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mTextPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public renderer(Ljava/util/ArrayList;Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;)V
    .locals 2
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

    .line 137
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/osmdroid/bonuspack/clustering/StaticCluster;

    .line 138
    invoke-virtual {p2}, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->getSize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p2, v0}, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->getItem(I)Lorg/osmdroid/views/overlay/Marker;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->setMarker(Lorg/osmdroid/views/overlay/Marker;)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->buildClusterMarker(Lorg/osmdroid/bonuspack/clustering/StaticCluster;Lorg/osmdroid/views/MapView;)Lorg/osmdroid/views/overlay/Marker;

    move-result-object v0

    .line 144
    invoke-virtual {p2, v0}, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->setMarker(Lorg/osmdroid/views/overlay/Marker;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setMaxClusteringZoomLevel(I)V
    .locals 0

    .line 72
    iput p1, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mMaxClusteringZoomLevel:I

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .line 66
    iput p1, p0, Lorg/osmdroid/bonuspack/clustering/RadiusMarkerClusterer;->mRadiusInPixels:I

    return-void
.end method
