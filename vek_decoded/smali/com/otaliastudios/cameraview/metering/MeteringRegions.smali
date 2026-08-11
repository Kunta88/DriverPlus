.class public Lcom/otaliastudios/cameraview/metering/MeteringRegions;
.super Ljava/lang/Object;
.source "MeteringRegions.java"


# static fields
.field private static final BLUR_FACTOR_SIZE:F = 1.5f

.field static final BLUR_FACTOR_WEIGHT:F = 0.1f

.field private static final POINT_AREA:F = 0.05f


# instance fields
.field final mRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/cameraview/metering/MeteringRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/otaliastudios/cameraview/metering/MeteringRegion;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->mRegions:Ljava/util/List;

    return-void
.end method

.method private static expand(Landroid/graphics/PointF;FF)Landroid/graphics/RectF;
    .locals 4

    .line 104
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    sub-float/2addr v1, p1

    iget v3, p0, Landroid/graphics/PointF;->y:F

    div-float/2addr p2, v2

    sub-float/2addr v3, p2

    iget v2, p0, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, p1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, p2

    invoke-direct {v0, v1, v3, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static fromArea(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/RectF;)Lcom/otaliastudios/cameraview/metering/MeteringRegions;
    .locals 1

    const/16 v0, 0x3e8

    .line 68
    invoke-static {p0, p1, v0}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->fromArea(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/RectF;I)Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    move-result-object p0

    return-object p0
.end method

.method public static fromArea(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/RectF;I)Lcom/otaliastudios/cameraview/metering/MeteringRegions;
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-static {p0, p1, p2, v0}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->fromArea(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/RectF;IZ)Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    move-result-object p0

    return-object p0
.end method

.method public static fromArea(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/RectF;IZ)Lcom/otaliastudios/cameraview/metering/MeteringRegions;
    .locals 5

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 85
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 86
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 87
    new-instance v4, Lcom/otaliastudios/cameraview/metering/MeteringRegion;

    invoke-direct {v4, p1, p2}, Lcom/otaliastudios/cameraview/metering/MeteringRegion;-><init>(Landroid/graphics/RectF;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    const/high16 p1, 0x3fc00000    # 1.5f

    mul-float v2, v2, p1

    mul-float v3, v3, p1

    .line 89
    invoke-static {v1, v2, v3}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->expand(Landroid/graphics/PointF;FF)Landroid/graphics/RectF;

    move-result-object p1

    .line 92
    new-instance p3, Lcom/otaliastudios/cameraview/metering/MeteringRegion;

    const v1, 0x3dcccccd    # 0.1f

    int-to-float p2, p2

    mul-float p2, p2, v1

    .line 93
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-direct {p3, p1, p2}, Lcom/otaliastudios/cameraview/metering/MeteringRegion;-><init>(Landroid/graphics/RectF;I)V

    .line 92
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/otaliastudios/cameraview/metering/MeteringRegion;

    .line 97
    invoke-virtual {p3, p0}, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->clip(Lcom/otaliastudios/cameraview/size/Size;)Lcom/otaliastudios/cameraview/metering/MeteringRegion;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_1
    new-instance p0, Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static fromPoint(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/PointF;)Lcom/otaliastudios/cameraview/metering/MeteringRegions;
    .locals 1

    const/16 v0, 0x3e8

    .line 52
    invoke-static {p0, p1, v0}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->fromPoint(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/PointF;I)Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    move-result-object p0

    return-object p0
.end method

.method public static fromPoint(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/PointF;I)Lcom/otaliastudios/cameraview/metering/MeteringRegions;
    .locals 3

    .line 59
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3d4ccccd    # 0.05f

    mul-float v0, v0, v1

    .line 60
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    .line 61
    invoke-static {p1, v0, v2}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->expand(Landroid/graphics/PointF;FF)Landroid/graphics/RectF;

    move-result-object p1

    const/4 v0, 0x1

    .line 62
    invoke-static {p0, p1, p2, v0}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->fromArea(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/RectF;IZ)Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get(ILcom/otaliastudios/cameraview/metering/MeteringTransform;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/otaliastudios/cameraview/metering/MeteringTransform<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->mRegions:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 42
    iget-object v1, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->mRegions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/otaliastudios/cameraview/metering/MeteringRegion;

    .line 43
    iget-object v3, v2, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->mRegion:Landroid/graphics/RectF;

    iget v2, v2, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->mWeight:I

    invoke-interface {p2, v3, v2}, Lcom/otaliastudios/cameraview/metering/MeteringTransform;->transformMeteringRegion(Landroid/graphics/RectF;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    .line 46
    invoke-interface {v0, p2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lcom/otaliastudios/cameraview/metering/MeteringTransform;)Lcom/otaliastudios/cameraview/metering/MeteringRegions;
    .locals 3

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegions;->mRegions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/otaliastudios/cameraview/metering/MeteringRegion;

    .line 33
    invoke-virtual {v2, p1}, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->transform(Lcom/otaliastudios/cameraview/metering/MeteringTransform;)Lcom/otaliastudios/cameraview/metering/MeteringRegion;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Lcom/otaliastudios/cameraview/metering/MeteringRegions;

    invoke-direct {p1, v0}, Lcom/otaliastudios/cameraview/metering/MeteringRegions;-><init>(Ljava/util/List;)V

    return-object p1
.end method
