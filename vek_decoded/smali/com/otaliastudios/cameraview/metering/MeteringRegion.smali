.class Lcom/otaliastudios/cameraview/metering/MeteringRegion;
.super Ljava/lang/Object;
.source "MeteringRegion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/otaliastudios/cameraview/metering/MeteringRegion;",
        ">;"
    }
.end annotation


# static fields
.field static final MAX_WEIGHT:I = 0x3e8


# instance fields
.field final mRegion:Landroid/graphics/RectF;

.field final mWeight:I


# direct methods
.method constructor <init>(Landroid/graphics/RectF;I)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->mRegion:Landroid/graphics/RectF;

    .line 19
    iput p2, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->mWeight:I

    return-void
.end method

.method private updateRect(Landroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 2

    .line 47
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 48
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 49
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 50
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method


# virtual methods
.method clip(Landroid/graphics/RectF;)Lcom/otaliastudios/cameraview/metering/MeteringRegion;
    .locals 5

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 62
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->mRegion:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    .line 63
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->mRegion:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 64
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->mRegion:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    .line 65
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->mRegion:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 66
    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 62
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 68
    new-instance p1, Lcom/otaliastudios/cameraview/metering/MeteringRegion;

    iget v1, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->mWeight:I

    invoke-direct {p1, v0, v1}, Lcom/otaliastudios/cameraview/metering/MeteringRegion;-><init>(Landroid/graphics/RectF;I)V

    return-object p1
.end method

.method clip(Lcom/otaliastudios/cameraview/size/Size;)Lcom/otaliastudios/cameraview/metering/MeteringRegion;
    .locals 3

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->clip(Landroid/graphics/RectF;)Lcom/otaliastudios/cameraview/metering/MeteringRegion;

    move-result-object p1

    return-object p1
.end method

.method public compareTo(Lcom/otaliastudios/cameraview/metering/MeteringRegion;)I
    .locals 1

    .line 74
    iget v0, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->mWeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p1, p1, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->mWeight:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lcom/otaliastudios/cameraview/metering/MeteringRegion;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->compareTo(Lcom/otaliastudios/cameraview/metering/MeteringRegion;)I

    move-result p1

    return p1
.end method

.method transform(Lcom/otaliastudios/cameraview/metering/MeteringTransform;)Lcom/otaliastudios/cameraview/metering/MeteringRegion;
    .locals 4

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const v2, -0x800001

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 26
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 28
    iget-object v2, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->mRegion:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->mRegion:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 29
    invoke-interface {p1, v1}, Lcom/otaliastudios/cameraview/metering/MeteringTransform;->transformMeteringPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 30
    invoke-direct {p0, v0, v1}, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->updateRect(Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 32
    iget-object v2, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->mRegion:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->mRegion:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 33
    invoke-interface {p1, v1}, Lcom/otaliastudios/cameraview/metering/MeteringTransform;->transformMeteringPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 34
    invoke-direct {p0, v0, v1}, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->updateRect(Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 36
    iget-object v2, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->mRegion:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->mRegion:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 37
    invoke-interface {p1, v1}, Lcom/otaliastudios/cameraview/metering/MeteringTransform;->transformMeteringPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 38
    invoke-direct {p0, v0, v1}, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->updateRect(Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 40
    iget-object v2, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->mRegion:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->mRegion:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 41
    invoke-interface {p1, v1}, Lcom/otaliastudios/cameraview/metering/MeteringTransform;->transformMeteringPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 42
    invoke-direct {p0, v0, p1}, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->updateRect(Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 43
    new-instance p1, Lcom/otaliastudios/cameraview/metering/MeteringRegion;

    iget v1, p0, Lcom/otaliastudios/cameraview/metering/MeteringRegion;->mWeight:I

    invoke-direct {p1, v0, v1}, Lcom/otaliastudios/cameraview/metering/MeteringRegion;-><init>(Landroid/graphics/RectF;I)V

    return-object p1
.end method
