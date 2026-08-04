.class public Lorg/osmdroid/views/Projection;
.super Ljava/lang/Object;
.source "Projection.java"

# interfaces
.implements Lorg/osmdroid/api/IProjection;
.implements Lorg/osmdroid/views/util/constants/MapViewConstants;


# instance fields
.field private final mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

.field private final mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

.field private final mMapViewHeight:I

.field private final mMapViewWidth:I

.field protected final mMultiTouchScale:F

.field protected final mOffsetX:I

.field protected final mOffsetY:I

.field private final mRotateAndScaleMatrix:Landroid/graphics/Matrix;

.field private final mRotateScalePoints:[F

.field private final mScreenRectProjection:Landroid/graphics/Rect;

.field private final mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

.field private final mZoomLevelProjection:I

.field private mapView:Lorg/osmdroid/views/MapView;


# direct methods
.method constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 11

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    .line 41
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 42
    iput-object v2, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    .line 52
    iput-object p1, p0, Lorg/osmdroid/views/Projection;->mapView:Lorg/osmdroid/views/MapView;

    const/4 v2, 0x0

    .line 53
    invoke-virtual {p1, v2}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)I

    move-result v3

    iput v3, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:I

    const/4 v3, 0x0

    .line 54
    invoke-virtual {p1, v3}, Lorg/osmdroid/views/MapView;->getScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    .line 55
    invoke-virtual {p1, v3}, Lorg/osmdroid/views/MapView;->getIntrinsicScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    .line 57
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v4

    iput v4, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    .line 58
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v5

    iput v5, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    .line 59
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v6

    neg-int v6, v6

    iput v6, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    .line 60
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v6

    neg-int v6, v6

    iput v6, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    .line 62
    iget-object v6, p1, Lorg/osmdroid/views/MapView;->mRotateScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 64
    iget p1, p1, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    iput p1, p0, Lorg/osmdroid/views/Projection;->mMultiTouchScale:F

    .line 66
    invoke-virtual {p0, v4, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object p1

    .line 67
    invoke-virtual {p0, v2, v5, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    .line 69
    new-instance v10, Lorg/osmdroid/util/BoundingBox;

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v2

    .line 70
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v6

    .line 71
    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v8

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object v10, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    return-void
.end method


# virtual methods
.method protected adjustForDateLine(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 131
    :goto_0
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 132
    iget p1, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    neg-int p2, p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->offset(II)V

    .line 133
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result p1

    invoke-static {p1}, Lorg/osmdroid/util/TileSystem;->MapSize(I)I

    move-result p1

    .line 134
    iget p2, p3, Landroid/graphics/Point;->x:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 135
    iget v0, p3, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 136
    iget v1, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    if-le p1, v1, :cond_1

    move v1, p1

    .line 137
    :cond_1
    iget v2, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le p2, v2, :cond_2

    .line 138
    iget v2, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, p1

    iput v2, p3, Landroid/graphics/Point;->x:I

    .line 140
    :cond_2
    iget v2, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le p2, v2, :cond_3

    .line 141
    iget p2, p3, Landroid/graphics/Point;->x:I

    add-int/2addr p2, p1

    iput p2, p3, Landroid/graphics/Point;->x:I

    .line 144
    :cond_3
    iget p2, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le v0, p2, :cond_4

    iget p2, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    div-int/lit8 p2, p2, 0x2

    if-ge p2, p1, :cond_4

    .line 145
    iget p2, p3, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, p1

    iput p2, p3, Landroid/graphics/Point;->y:I

    .line 147
    :cond_4
    iget p2, p3, Landroid/graphics/Point;->y:I

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-gt v0, p2, :cond_5

    iget p2, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    div-int/lit8 p2, p2, 0x2

    if-lt p2, p1, :cond_6

    .line 148
    :cond_5
    iget p2, p3, Landroid/graphics/Point;->y:I

    add-int/2addr p2, p1

    iput p2, p3, Landroid/graphics/Point;->y:I

    .line 150
    :cond_6
    iget p1, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->offset(II)V

    return-object p3
.end method

.method public detach()V
    .locals 1

    const/4 v0, 0x0

    .line 310
    iput-object v0, p0, Lorg/osmdroid/views/Projection;->mapView:Lorg/osmdroid/views/MapView;

    return-void
.end method

.method public fromPixels(II)Lorg/osmdroid/api/IGeoPoint;
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object p1

    return-object p1
.end method

.method public fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;
    .locals 1

    .line 111
    iget v0, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    sub-int/2addr p1, v0

    iget v0, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    sub-int/2addr p2, v0

    iget v0, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:I

    invoke-static {p1, p2, v0, p3}, Lorg/osmdroid/util/TileSystem;->PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    return-object p1
.end method

.method public fromPixelsRotationSensitive(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/Projection;->unrotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    .line 116
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    sub-int/2addr p2, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v0, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    sub-int/2addr p1, v0

    iget v0, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:I

    invoke-static {p2, p1, v0, p3}, Lorg/osmdroid/util/TileSystem;->PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    return-object p1
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    return-object v0
.end method

.method public getBoundingBoxE6()Lorg/osmdroid/util/BoundingBoxE6;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    new-instance v9, Lorg/osmdroid/util/BoundingBoxE6;

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v1

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    .line 85
    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v3

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v5

    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mBoundingBoxProjection:Lorg/osmdroid/util/BoundingBox;

    .line 86
    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/util/BoundingBoxE6;-><init>(DDDD)V

    return-object v9
.end method

.method public getIntrinsicScreenRect()Landroid/graphics/Rect;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mIntrinsicScreenRectProjection:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInvertedScaleRotateCanvasMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMapOrientation()F
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    return v0
.end method

.method public getNorthEast()Lorg/osmdroid/api/IGeoPoint;
    .locals 3

    .line 254
    iget v0, p0, Lorg/osmdroid/views/Projection;->mMapViewWidth:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getScreenRect()Landroid/graphics/Rect;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mScreenRectProjection:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSouthWest()Lorg/osmdroid/api/IGeoPoint;
    .locals 3

    .line 259
    iget v0, p0, Lorg/osmdroid/views/Projection;->mMapViewHeight:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getZoomLevel()I
    .locals 1

    .line 75
    iget v0, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:I

    return v0
.end method

.method public metersToEquatorPixels(F)F
    .locals 3

    .line 234
    iget v0, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:I

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DI)D

    move-result-wide v0

    double-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method public metersToPixels(F)F
    .locals 3

    .line 248
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    iget v2, p0, Lorg/osmdroid/views/Projection;->mZoomLevelProjection:I

    invoke-static {v0, v1, v2}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DI)D

    move-result-wide v0

    double-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method public rotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 2

    if-nez p3, :cond_0

    .line 294
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 296
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getMapOrientation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/osmdroid/views/Projection;->mMultiTouchScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    .line 297
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    int-to-float p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    int-to-float p1, p2

    const/4 p2, 0x1

    .line 298
    aput p1, v0, p2

    .line 299
    iget-object p1, p0, Lorg/osmdroid/views/Projection;->mRotateAndScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 300
    iget-object p1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    aget v0, p1, v1

    float-to-int v0, v0

    aget p1, p1, p2

    float-to-int p1, p1

    invoke-virtual {p3, v0, p1}, Landroid/graphics/Point;->set(II)V

    :goto_1
    return-object p3
.end method

.method public toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0

    if-eqz p3, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 227
    :goto_0
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 228
    iget p1, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    neg-int p1, p1

    iget p2, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    neg-int p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->offset(II)V

    return-object p3
.end method

.method public toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6

    .line 121
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    .line 122
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v4

    move-object v5, p2

    .line 121
    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    .line 124
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p2, v0, p1}, Lorg/osmdroid/views/Projection;->toPixelsFromMercator(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    .line 125
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p2, v0, p1}, Lorg/osmdroid/views/Projection;->adjustForDateLine(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public toPixelsFromMercator(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0

    if-eqz p3, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 220
    :goto_0
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 221
    iget p1, p0, Lorg/osmdroid/views/Projection;->mOffsetX:I

    iget p2, p0, Lorg/osmdroid/views/Projection;->mOffsetY:I

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->offset(II)V

    return-object p3
.end method

.method public toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 208
    :goto_0
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v0

    .line 209
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v1

    sub-int/2addr v0, v1

    .line 210
    iget v1, p1, Landroid/graphics/Point;->x:I

    shr-int/2addr v1, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    shr-int/2addr p1, v0

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Point;->set(II)V

    .line 212
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget v0, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0, p2}, Lorg/osmdroid/views/Projection;->toPixelsFromMercator(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    .line 213
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p2, v0, p1}, Lorg/osmdroid/views/Projection;->adjustForDateLine(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public toProjectedPixels(DDLandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6

    .line 192
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v4

    move-wide v0, p1

    move-wide v2, p3

    move-object v5, p5

    .line 191
    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public toProjectedPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 10

    int-to-double v0, p1

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 174
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v0, v2

    int-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, p1, v2

    .line 175
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v8

    move-object v9, p3

    .line 174
    invoke-static/range {v4 .. v9}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public toProjectedPixels(Lorg/osmdroid/util/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6

    .line 158
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/views/Projection;->toProjectedPixels(DDLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public unrotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 2

    if-nez p3, :cond_0

    .line 276
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 278
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/Projection;->getMapOrientation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/osmdroid/views/Projection;->mMultiTouchScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    .line 279
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    int-to-float p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    int-to-float p1, p2

    const/4 p2, 0x1

    .line 280
    aput p1, v0, p2

    .line 281
    iget-object p1, p0, Lorg/osmdroid/views/Projection;->mUnrotateAndScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 282
    iget-object p1, p0, Lorg/osmdroid/views/Projection;->mRotateScalePoints:[F

    aget v0, p1, v1

    float-to-int v0, v0

    aget p1, p1, p2

    float-to-int p1, p1

    invoke-virtual {p3, v0, p1}, Landroid/graphics/Point;->set(II)V

    :goto_1
    return-object p3
.end method
