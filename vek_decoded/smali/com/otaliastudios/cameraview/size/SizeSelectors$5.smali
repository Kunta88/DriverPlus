.class final Lcom/otaliastudios/cameraview/size/SizeSelectors$5;
.super Ljava/lang/Object;
.source "SizeSelectors.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/size/SizeSelectors;->aspectRatio(Lcom/otaliastudios/cameraview/size/AspectRatio;F)Lcom/otaliastudios/cameraview/size/SizeSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$delta:F

.field final synthetic val$desired:F


# direct methods
.method constructor <init>(FF)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/otaliastudios/cameraview/size/SizeSelectors$5;->val$desired:F

    iput p2, p0, Lcom/otaliastudios/cameraview/size/SizeSelectors$5;->val$delta:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accepts(Lcom/otaliastudios/cameraview/size/Size;)Z
    .locals 3

    .line 120
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->of(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object p1

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result p1

    .line 121
    iget v0, p0, Lcom/otaliastudios/cameraview/size/SizeSelectors$5;->val$desired:F

    iget v1, p0, Lcom/otaliastudios/cameraview/size/SizeSelectors$5;->val$delta:F

    sub-float v2, v0, v1

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    add-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
