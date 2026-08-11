.class public Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;
.super Lcom/otaliastudios/cameraview/gesture/GestureFinder;
.source "TapGestureFinder.java"


# instance fields
.field private mDetector:Landroid/view/GestureDetector;

.field private mNotify:Z


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;)V
    .locals 3

    const/4 v0, 0x1

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/gesture/GestureFinder;-><init>(Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;I)V

    .line 19
    new-instance v1, Landroid/view/GestureDetector;

    invoke-interface {p1}, Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder$1;

    invoke-direct {v2, p0}, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder$1;-><init>(Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;->mDetector:Landroid/view/GestureDetector;

    .line 44
    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;->mNotify:Z

    return p1
.end method


# virtual methods
.method public getValue(FFF)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 53
    iput-boolean v1, p0, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;->mNotify:Z

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 60
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;->mNotify:Z

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;->getPoint(I)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 62
    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;->getPoint(I)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
