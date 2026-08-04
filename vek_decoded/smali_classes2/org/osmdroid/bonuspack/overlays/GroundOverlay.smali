.class public Lorg/osmdroid/bonuspack/overlays/GroundOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "GroundOverlay.java"


# static fields
.field public static final NO_DIMENSION:F = -1.0f


# instance fields
.field protected mBearing:F

.field protected mHeight:F

.field protected mImage:Landroid/graphics/drawable/Drawable;

.field protected mPosition:Lorg/osmdroid/util/GeoPoint;

.field protected mPositionPixels:Landroid/graphics/Point;

.field protected mSouthEastPixels:Landroid/graphics/Point;

.field protected mTransparency:F

.field protected mWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    .line 35
    iput v0, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mWidth:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 36
    iput v0, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mHeight:F

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mBearing:F

    .line 38
    iput v0, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mTransparency:F

    .line 39
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mPositionPixels:Landroid/graphics/Point;

    .line 40
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mSouthEastPixels:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 6

    if-eqz p3, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object p3, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mImage:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_1

    return-void

    .line 112
    :cond_1
    iget v0, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mHeight:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 113
    iget v0, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mWidth:F

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float v0, v0, p3

    iget-object p3, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr v0, p3

    iput v0, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mHeight:F

    .line 116
    :cond_2
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object p2

    .line 118
    iget-object p3, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mPosition:Lorg/osmdroid/util/GeoPoint;

    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mPositionPixels:Landroid/graphics/Point;

    invoke-virtual {p2, p3, v0}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 127
    iget-object p3, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mPosition:Lorg/osmdroid/util/GeoPoint;

    iget v0, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v2, v0

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p3, v2, v3, v0}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object p3

    .line 128
    iget v0, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mHeight:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    const/high16 v2, -0x3ccc0000    # -180.0f

    invoke-virtual {p3, v0, v1, v2}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object p3

    .line 129
    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mSouthEastPixels:Landroid/graphics/Point;

    invoke-virtual {p2, p3, v0}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 130
    iget-object p2, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mSouthEastPixels:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget-object p3, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mPositionPixels:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr p2, p3

    .line 131
    iget-object p3, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mSouthEastPixels:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mPositionPixels:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr p3, v0

    .line 132
    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mImage:Landroid/graphics/drawable/Drawable;

    neg-int v1, p2

    neg-int v2, p3

    invoke-virtual {v0, v1, v2, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 134
    iget-object p2, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mImage:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mTransparency:F

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p3, p3, v0

    float-to-int p3, p3

    rsub-int p3, p3, 0xff

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 136
    iget-object v1, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mImage:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mPositionPixels:Landroid/graphics/Point;

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget-object p2, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mPositionPixels:Landroid/graphics/Point;

    iget v3, p2, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    iget p2, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mBearing:F

    neg-float v5, p2

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZF)V

    return-void
.end method

.method public getBearing()F
    .locals 1

    .line 60
    iget v0, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mBearing:F

    return v0
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 18

    move-object/from16 v0, p0

    .line 96
    iget v1, v0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mHeight:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 97
    iget v2, v0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mWidth:F

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v2, v2, v1

    iget-object v1, v0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    iput v2, v0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mHeight:F

    .line 99
    :cond_0
    iget-object v1, v0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mPosition:Lorg/osmdroid/util/GeoPoint;

    iget v2, v0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mWidth:F

    float-to-double v2, v2

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    .line 100
    iget v2, v0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mHeight:F

    float-to-double v2, v2

    const/high16 v4, -0x3ccc0000    # -180.0f

    invoke-virtual {v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    .line 101
    iget-object v3, v0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mPosition:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v3}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v3, v3, v5

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v7

    sub-double v10, v3, v7

    .line 102
    iget-object v3, v0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mPosition:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v3}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v3

    mul-double v3, v3, v5

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v5

    sub-double v16, v3, v5

    .line 103
    new-instance v3, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v12

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v14

    move-object v9, v3

    invoke-direct/range {v9 .. v17}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v3
.end method

.method public getHeight()F
    .locals 1

    .line 78
    iget v0, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mHeight:F

    return v0
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mPosition:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->clone()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getTransparency()F
    .locals 1

    .line 90
    iget v0, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mTransparency:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 82
    iget v0, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mWidth:F

    return v0
.end method

.method public setBearing(F)V
    .locals 0

    .line 64
    iput p1, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mBearing:F

    return-void
.end method

.method public setDimensions(F)V
    .locals 0

    .line 68
    iput p1, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mWidth:F

    const/high16 p1, -0x40800000    # -1.0f

    .line 69
    iput p1, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mHeight:F

    return-void
.end method

.method public setDimensions(FF)V
    .locals 0

    .line 73
    iput p1, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mWidth:F

    .line 74
    iput p2, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mHeight:F

    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mImage:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setPosition(Lorg/osmdroid/util/GeoPoint;)V
    .locals 0

    .line 56
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->clone()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mPosition:Lorg/osmdroid/util/GeoPoint;

    return-void
.end method

.method public setTransparency(F)V
    .locals 0

    .line 86
    iput p1, p0, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->mTransparency:F

    return-void
.end method
