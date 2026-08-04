.class public Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;
.super Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;
.source "GridMarkerClusterer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public mAnchorU:F

.field public mAnchorV:F

.field protected mGridSize:I

.field public mTextAnchorU:F

.field public mTextAnchorV:F

.field protected mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/clustering/MarkerClusterer;-><init>()V

    const/16 v0, 0x32

    .line 34
    iput v0, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mGridSize:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 38
    iput v0, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mAnchorU:F

    iput v0, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mAnchorV:F

    .line 40
    iput v0, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mTextAnchorU:F

    iput v0, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mTextAnchorV:F

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 45
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v0, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 47
    iget-object v0, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 48
    iget-object v0, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 49
    iget-object v0, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public buildClusterMarker(Lorg/osmdroid/bonuspack/clustering/StaticCluster;Lorg/osmdroid/views/MapView;)Lorg/osmdroid/views/overlay/Marker;
    .locals 7

    .line 107
    new-instance v0, Lorg/osmdroid/views/overlay/Marker;

    invoke-direct {v0, p2}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 108
    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->getPosition()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    const/4 v1, 0x0

    .line 109
    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;)V

    .line 110
    iget v2, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mAnchorU:F

    iget v3, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mAnchorV:F

    invoke-virtual {v0, v2, v3}, Lorg/osmdroid/views/overlay/Marker;->setAnchor(FF)V

    .line 111
    iget-object v2, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mClusterIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mClusterIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mClusterIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 112
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 113
    iget-object v4, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mClusterIcon:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 114
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

    .line 115
    iget-object v1, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v4, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 116
    iget v4, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mTextAnchorU:F

    .line 117
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v4, v5

    iget v5, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mTextAnchorV:F

    .line 118
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v5, v5, v6

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v5, v1

    iget-object v1, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mTextPaint:Landroid/graphics/Paint;

    .line 116
    invoke-virtual {v3, p1, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 120
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
    .locals 14
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

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, v0}, Lorg/osmdroid/views/MapView;->getIntrinsicScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v1

    .line 68
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v3

    .line 73
    iget p1, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mGridSize:I

    int-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v5

    int-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    .line 74
    iget p1, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mGridSize:I

    int-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v5

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    int-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v5

    const-wide v5, 0x4076800000000000L    # 360.0

    div-double/2addr v5, v3

    double-to-int p1, v5

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    new-instance v5, Landroidx/collection/LongSparseArray;

    invoke-direct {v5}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 82
    iget-object v6, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/osmdroid/views/overlay/Marker;

    .line 84
    invoke-virtual {v7}, Lorg/osmdroid/views/overlay/Marker;->getPosition()Lorg/osmdroid/util/GeoPoint;

    move-result-object v8

    invoke-virtual {v8}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    div-double/2addr v8, v3

    double-to-long v8, v8

    .line 85
    invoke-virtual {v7}, Lorg/osmdroid/views/overlay/Marker;->getPosition()Lorg/osmdroid/util/GeoPoint;

    move-result-object v10

    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v10

    div-double/2addr v10, v1

    double-to-long v10, v10

    int-to-long v12, p1

    mul-long v12, v12, v8

    add-long/2addr v12, v10

    .line 87
    invoke-virtual {v5, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/osmdroid/bonuspack/clustering/StaticCluster;

    if-nez v8, :cond_0

    .line 91
    new-instance v8, Lorg/osmdroid/bonuspack/clustering/StaticCluster;

    invoke-virtual {v7}, Lorg/osmdroid/views/overlay/Marker;->getPosition()Lorg/osmdroid/util/GeoPoint;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/osmdroid/bonuspack/clustering/StaticCluster;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    .line 92
    invoke-virtual {v5, v12, v13, v8}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 93
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    invoke-virtual {v8, v7}, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->add(Lorg/osmdroid/views/overlay/Marker;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mTextPaint:Landroid/graphics/Paint;

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

    .line 126
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/osmdroid/bonuspack/clustering/StaticCluster;

    .line 127
    invoke-virtual {p2}, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->getSize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p2, v0}, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->getItem(I)Lorg/osmdroid/views/overlay/Marker;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->setMarker(Lorg/osmdroid/views/overlay/Marker;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->buildClusterMarker(Lorg/osmdroid/bonuspack/clustering/StaticCluster;Lorg/osmdroid/views/MapView;)Lorg/osmdroid/views/overlay/Marker;

    move-result-object v0

    .line 133
    invoke-virtual {p2, v0}, Lorg/osmdroid/bonuspack/clustering/StaticCluster;->setMarker(Lorg/osmdroid/views/overlay/Marker;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGridSize(I)V
    .locals 0

    .line 59
    iput p1, p0, Lorg/osmdroid/bonuspack/clustering/GridMarkerClusterer;->mGridSize:I

    return-void
.end method
