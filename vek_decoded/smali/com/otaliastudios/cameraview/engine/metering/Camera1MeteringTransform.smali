.class public Lcom/otaliastudios/cameraview/engine/metering/Camera1MeteringTransform;
.super Ljava/lang/Object;
.source "Camera1MeteringTransform.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/metering/MeteringTransform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/otaliastudios/cameraview/metering/MeteringTransform<",
        "Landroid/hardware/Camera$Area;",
        ">;"
    }
.end annotation


# static fields
.field protected static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field protected static final TAG:Ljava/lang/String; = "Camera1MeteringTransform"


# instance fields
.field private final displayToSensor:I

.field private final previewSize:Lcom/otaliastudios/cameraview/size/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/otaliastudios/cameraview/engine/metering/Camera1MeteringTransform;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/engine/metering/Camera1MeteringTransform;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/offset/Angles;Lcom/otaliastudios/cameraview/size/Size;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Axis;->ABSOLUTE:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    invoke-virtual {p1, v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->offset(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I

    move-result p1

    neg-int p1, p1

    iput p1, p0, Lcom/otaliastudios/cameraview/engine/metering/Camera1MeteringTransform;->displayToSensor:I

    .line 27
    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/metering/Camera1MeteringTransform;->previewSize:Lcom/otaliastudios/cameraview/size/Size;

    return-void
.end method


# virtual methods
.method public transformMeteringPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 9

    .line 34
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 35
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/otaliastudios/cameraview/engine/metering/Camera1MeteringTransform;->previewSize:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    mul-float v1, v1, v2

    const/high16 v3, -0x3b860000    # -1000.0f

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 36
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/metering/Camera1MeteringTransform;->previewSize:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    mul-float p1, p1, v2

    add-float/2addr p1, v3

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 40
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 41
    iget v1, p0, Lcom/otaliastudios/cameraview/engine/metering/Camera1MeteringTransform;->displayToSensor:I

    int-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    const-wide v3, 0x4066800000000000L    # 180.0

    div-double/2addr v1, v3

    .line 42
    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-double v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    iget v5, v0, Landroid/graphics/PointF;->y:F

    float-to-double v5, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    sub-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, p1, Landroid/graphics/PointF;->x:F

    .line 43
    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-double v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    iget v5, v0, Landroid/graphics/PointF;->y:F

    float-to-double v5, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v1

    add-double/2addr v3, v5

    double-to-float v1, v3

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 44
    sget-object v1, Lcom/otaliastudios/cameraview/engine/metering/Camera1MeteringTransform;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "scaled:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v3, "rotated:"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    return-object p1
.end method

.method public transformMeteringRegion(Landroid/graphics/RectF;I)Landroid/hardware/Camera$Area;
    .locals 1

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 52
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 53
    new-instance p1, Landroid/hardware/Camera$Area;

    invoke-direct {p1, v0, p2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    return-object p1
.end method

.method public bridge synthetic transformMeteringRegion(Landroid/graphics/RectF;I)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/metering/Camera1MeteringTransform;->transformMeteringRegion(Landroid/graphics/RectF;I)Landroid/hardware/Camera$Area;

    move-result-object p1

    return-object p1
.end method
