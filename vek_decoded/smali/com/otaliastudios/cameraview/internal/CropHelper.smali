.class public Lcom/otaliastudios/cameraview/internal/CropHelper;
.super Ljava/lang/Object;
.source "CropHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeCrop(Lcom/otaliastudios/cameraview/size/Size;Lcom/otaliastudios/cameraview/size/AspectRatio;)Landroid/graphics/Rect;
    .locals 5

    .line 18
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v0

    .line 19
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v1

    const v2, 0x3a03126f    # 5.0E-4f

    .line 20
    invoke-virtual {p1, p0, v2}, Lcom/otaliastudios/cameraview/size/AspectRatio;->matches(Lcom/otaliastudios/cameraview/size/Size;F)Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 21
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    .line 25
    :cond_0
    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->of(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result p0

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float p0, p0, v3

    if-lez p0, :cond_1

    int-to-float p0, v1

    .line 29
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result p1

    mul-float p0, p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p1, v0

    div-float/2addr p1, v4

    .line 31
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    move v0, p0

    move v2, p1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    int-to-float p0, v0

    .line 34
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result p1

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    sub-int/2addr v1, p0

    int-to-float p1, v1

    div-float/2addr p1, v4

    .line 35
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    move v1, p0

    .line 38
    :goto_0
    new-instance p0, Landroid/graphics/Rect;

    add-int/2addr v0, v2

    add-int/2addr v1, p1

    invoke-direct {p0, v2, p1, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method
