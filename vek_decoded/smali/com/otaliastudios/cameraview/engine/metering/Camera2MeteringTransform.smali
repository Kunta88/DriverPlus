.class public Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;
.super Ljava/lang/Object;
.source "Camera2MeteringTransform.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/metering/MeteringTransform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/otaliastudios/cameraview/metering/MeteringTransform<",
        "Landroid/hardware/camera2/params/MeteringRectangle;",
        ">;"
    }
.end annotation


# static fields
.field protected static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field protected static final TAG:Ljava/lang/String; = "Camera2MeteringTransform"


# instance fields
.field private final angles:Lcom/otaliastudios/cameraview/engine/offset/Angles;

.field private final builder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private final characteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final previewIsCropping:Z

.field private final previewSize:Lcom/otaliastudios/cameraview/size/Size;

.field private final previewStreamSize:Lcom/otaliastudios/cameraview/size/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/cameraview/engine/offset/Angles;Lcom/otaliastudios/cameraview/size/Size;Lcom/otaliastudios/cameraview/size/Size;ZLandroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;->angles:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    .line 42
    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;->previewSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 43
    iput-object p3, p0, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;->previewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 44
    iput-boolean p4, p0, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;->previewIsCropping:Z

    .line 45
    iput-object p5, p0, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 46
    iput-object p6, p0, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-void
.end method

.method private applyActiveArrayCoordinates(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/PointF;)Lcom/otaliastudios/cameraview/size/Size;
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 185
    iget v1, p2, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    :goto_0
    add-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/PointF;->x:F

    .line 186
    iget v1, p2, Landroid/graphics/PointF;->y:F

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    :goto_1
    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/PointF;->y:F

    .line 188
    iget-object p2, p0, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    if-nez p2, :cond_2

    .line 190
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v0

    .line 191
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 193
    :cond_2
    new-instance p1, Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-direct {p1, v0, p2}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    return-object p1
.end method

.method private applyCropRegionCoordinates(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/PointF;)Lcom/otaliastudios/cameraview/size/Size;
    .locals 5

    .line 168
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;->builder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    :goto_0
    if-nez v0, :cond_1

    .line 171
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 174
    :goto_1
    iget v2, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p2, Landroid/graphics/PointF;->x:F

    .line 175
    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result p1

    sub-int p1, v0, p1

    int-to-float p1, p1

    div-float/2addr p1, v4

    add-float/2addr v2, p1

    iput v2, p2, Landroid/graphics/PointF;->y:F

    .line 176
    new-instance p1, Lcom/otaliastudios/cameraview/size/Size;

    invoke-direct {p1, v1, v0}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    return-object p1
.end method

.method private applyPreviewCropping(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/PointF;)Lcom/otaliastudios/cameraview/size/Size;
    .locals 8

    .line 99
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;->previewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 101
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v1

    .line 102
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v2

    .line 103
    invoke-static {v0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->of(Lcom/otaliastudios/cameraview/size/Size;)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v0

    .line 104
    invoke-static {p1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->of(Lcom/otaliastudios/cameraview/size/Size;)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v3

    .line 105
    iget-boolean v4, p0, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;->previewIsCropping:Z

    if-eqz v4, :cond_1

    .line 106
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v4

    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v0

    .line 110
    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v1

    div-float/2addr v0, v1

    .line 111
    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v0, v7

    mul-float v3, v3, v4

    div-float/2addr v3, v6

    add-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/PointF;->x:F

    .line 112
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v2

    .line 117
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v0

    div-float/2addr v2, v0

    .line 118
    iget v0, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v2, v7

    mul-float v3, v3, v4

    div-float/2addr v3, v6

    add-float/2addr v0, v3

    iput v0, p2, Landroid/graphics/PointF;->y:F

    .line 119
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 122
    :cond_1
    :goto_0
    new-instance p1, Lcom/otaliastudios/cameraview/size/Size;

    invoke-direct {p1, v1, v2}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    return-object p1
.end method

.method private applyPreviewScale(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/PointF;)Lcom/otaliastudios/cameraview/size/Size;
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;->previewStreamSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 130
    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    iput v1, p2, Landroid/graphics/PointF;->x:F

    .line 131
    iget v1, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v2, p1

    mul-float v1, v1, v2

    iput v1, p2, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method private applyPreviewToSensorRotation(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/PointF;)Lcom/otaliastudios/cameraview/size/Size;
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;->angles:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    sget-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v3, Lcom/otaliastudios/cameraview/engine/offset/Axis;->ABSOLUTE:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    invoke-virtual {v0, v1, v2, v3}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->offset(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I

    move-result v0

    .line 141
    rem-int/lit16 v1, v0, 0xb4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 142
    :goto_0
    iget v2, p2, Landroid/graphics/PointF;->x:F

    .line 143
    iget v3, p2, Landroid/graphics/PointF;->y:F

    if-nez v0, :cond_1

    .line 145
    iput v2, p2, Landroid/graphics/PointF;->x:F

    .line 146
    iput v3, p2, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_1
    const/16 v4, 0x5a

    if-ne v0, v4, :cond_2

    .line 148
    iput v3, p2, Landroid/graphics/PointF;->x:F

    .line 149
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v2

    iput v0, p2, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_2
    const/16 v4, 0xb4

    if-ne v0, v4, :cond_3

    .line 151
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v2

    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 152
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v3

    iput v0, p2, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_3
    const/16 v4, 0x10e

    if-ne v0, v4, :cond_5

    .line 154
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v3

    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 155
    iput v2, p2, Landroid/graphics/PointF;->y:F

    :goto_1
    if-eqz v1, :cond_4

    .line 159
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->flip()Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p1

    :cond_4
    return-object p1

    .line 157
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected angle "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public transformMeteringPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 11

    .line 63
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 64
    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;->previewSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 68
    invoke-direct {p0, v1, v0}, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;->applyPreviewCropping(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/PointF;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v1

    .line 72
    invoke-direct {p0, v1, v0}, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;->applyPreviewScale(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/PointF;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v1

    .line 76
    invoke-direct {p0, v1, v0}, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;->applyPreviewToSensorRotation(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/PointF;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v1

    .line 80
    invoke-direct {p0, v1, v0}, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;->applyCropRegionCoordinates(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/PointF;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v1

    .line 83
    invoke-direct {p0, v1, v0}, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;->applyActiveArrayCoordinates(Lcom/otaliastudios/cameraview/size/Size;Landroid/graphics/PointF;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object v1

    .line 84
    sget-object v2, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "input:"

    aput-object v6, v4, v5

    const/4 v7, 0x1

    aput-object p1, v4, v7

    const-string v8, "output (before clipping):"

    const/4 v9, 0x2

    aput-object v8, v4, v9

    const/4 v8, 0x3

    aput-object v0, v4, v8

    invoke-virtual {v2, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    iget v4, v0, Landroid/graphics/PointF;->x:F

    const/4 v10, 0x0

    cmpg-float v4, v4, v10

    if-gez v4, :cond_0

    iput v10, v0, Landroid/graphics/PointF;->x:F

    .line 88
    :cond_0
    iget v4, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v4, v4, v10

    if-gez v4, :cond_1

    iput v10, v0, Landroid/graphics/PointF;->y:F

    .line 89
    :cond_1
    iget v4, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v4, v4, v10

    if-lez v4, :cond_2

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Landroid/graphics/PointF;->x:F

    .line 90
    :cond_2
    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v4, v4, v10

    if-lez v4, :cond_3

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_3
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v6, v1, v5

    aput-object p1, v1, v7

    const-string p1, "output (after clipping):"

    aput-object p1, v1, v9

    aput-object v0, v1, v8

    .line 91
    invoke-virtual {v2, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    return-object v0
.end method

.method public transformMeteringRegion(Landroid/graphics/RectF;I)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 1

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 53
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 54
    new-instance p1, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {p1, v0, p2}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    return-object p1
.end method

.method public bridge synthetic transformMeteringRegion(Landroid/graphics/RectF;I)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/metering/Camera2MeteringTransform;->transformMeteringRegion(Landroid/graphics/RectF;I)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    return-object p1
.end method
