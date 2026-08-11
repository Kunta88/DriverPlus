.class public abstract Lcom/otaliastudios/cameraview/gesture/GestureFinder;
.super Ljava/lang/Object;
.source "GestureFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;
    }
.end annotation


# static fields
.field private static final GRANULARITY:I = 0x32


# instance fields
.field private mActive:Z

.field private mController:Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;

.field private mPoints:[Landroid/graphics/PointF;

.field mType:Lcom/otaliastudios/cameraview/gesture/Gesture;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;I)V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->mController:Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;

    .line 33
    new-array p1, p2, [Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->mPoints:[Landroid/graphics/PointF;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    .line 35
    iget-object v0, p0, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->mPoints:[Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static capValue(FFFF)F
    .locals 1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    move p1, p2

    :cond_0
    cmpl-float v0, p1, p3

    if-lez v0, :cond_1

    move p1, p3

    :cond_1
    sub-float/2addr p3, p2

    const/high16 p2, 0x42480000    # 50.0f

    div-float/2addr p3, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p3, p2

    sub-float p2, p0, p3

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_2

    add-float/2addr p3, p0

    cmpg-float p2, p1, p3

    if-gtz p2, :cond_2

    return p0

    :cond_2
    return p1
.end method


# virtual methods
.method public final computeValue(FFF)F
    .locals 1

    .line 137
    invoke-virtual {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->getValue(FFF)F

    move-result v0

    invoke-static {p1, v0, p2, p3}, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->capValue(FFFF)F

    move-result p1

    return p1
.end method

.method protected getController()Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->mController:Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;

    return-object v0
.end method

.method public final getGesture()Lcom/otaliastudios/cameraview/gesture/Gesture;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->mType:Lcom/otaliastudios/cameraview/gesture/Gesture;

    return-object v0
.end method

.method protected final getPoint(I)Landroid/graphics/PointF;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->mPoints:[Landroid/graphics/PointF;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getPoints()[Landroid/graphics/PointF;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->mPoints:[Landroid/graphics/PointF;

    return-object v0
.end method

.method protected abstract getValue(FFF)F
.end method

.method protected abstract handleTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public isActive()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->mActive:Z

    return v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->mActive:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setActive(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->mActive:Z

    return-void
.end method

.method protected final setGesture(Lcom/otaliastudios/cameraview/gesture/Gesture;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/otaliastudios/cameraview/gesture/GestureFinder;->mType:Lcom/otaliastudios/cameraview/gesture/Gesture;

    return-void
.end method
