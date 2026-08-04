.class public Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;
.super Lcom/otaliastudios/cameraview/gesture/GestureFinder;
.source "PinchGestureFinder.java"


# static fields
.field private static final ADD_SENSITIVITY:F = 2.0f


# instance fields
.field private mDetector:Landroid/view/ScaleGestureDetector;

.field private mFactor:F

.field private mNotify:Z


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;)V
    .locals 2

    const/4 v0, 0x2

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/gesture/GestureFinder;-><init>(Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;I)V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->mFactor:F

    .line 21
    sget-object v0, Lcom/otaliastudios/cameraview/gesture/Gesture;->PINCH:Lcom/otaliastudios/cameraview/gesture/Gesture;

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->setGesture(Lcom/otaliastudios/cameraview/gesture/Gesture;)V

    .line 22
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-interface {p1}, Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder$1;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder$1;-><init>(Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->mDetector:Landroid/view/ScaleGestureDetector;

    .line 32
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    .line 33
    iget-object p1, p0, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->mDetector:Landroid/view/ScaleGestureDetector;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->mNotify:Z

    return p1
.end method

.method static synthetic access$102(Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;F)F
    .locals 0

    .line 11
    iput p1, p0, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->mFactor:F

    return p1
.end method


# virtual methods
.method protected getFactor()F
    .locals 1

    .line 81
    iget v0, p0, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->mFactor:F

    return v0
.end method

.method public getValue(FFF)F
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->getFactor()F

    move-result v0

    sub-float/2addr p3, p2

    mul-float v0, v0, p3

    add-float/2addr p1, v0

    return p1
.end method

.method protected handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 43
    iput-boolean v1, p0, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->mNotify:Z

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 50
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->mNotify:Z

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->getPoint(I)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 52
    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->getPoint(I)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 54
    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->getPoint(I)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 55
    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->getPoint(I)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    :cond_1
    return v1
.end method
