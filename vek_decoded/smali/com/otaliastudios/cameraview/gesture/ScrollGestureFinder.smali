.class public Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;
.super Lcom/otaliastudios/cameraview/gesture/GestureFinder;
.source "ScrollGestureFinder.java"


# static fields
.field private static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field private static final TAG:Ljava/lang/String; = "ScrollGestureFinder"


# instance fields
.field private mDetector:Landroid/view/GestureDetector;

.field private mFactor:F

.field private mNotify:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;)V
    .locals 3

    const/4 v0, 0x2

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/gesture/GestureFinder;-><init>(Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;I)V

    .line 24
    new-instance v0, Landroid/view/GestureDetector;

    invoke-interface {p1}, Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder$1;

    invoke-direct {v2, p0, p1}, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder$1;-><init>(Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->mDetector:Landroid/view/GestureDetector;

    const/4 p1, 0x0

    .line 54
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method static synthetic access$000()Lcom/otaliastudios/cameraview/CameraLogger;
    .locals 1

    .line 13
    sget-object v0, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;)F
    .locals 0

    .line 13
    iget p0, p0, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->mFactor:F

    return p0
.end method

.method static synthetic access$102(Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;F)F
    .locals 0

    .line 13
    iput p1, p0, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->mFactor:F

    return p1
.end method

.method static synthetic access$202(Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->mNotify:Z

    return p1
.end method


# virtual methods
.method protected getFactor()F
    .locals 1

    .line 87
    iget v0, p0, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->mFactor:F

    return v0
.end method

.method public getValue(FFF)F
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->getFactor()F

    move-result v0

    sub-float/2addr p3, p2

    mul-float v0, v0, p3

    const/high16 p2, 0x40000000    # 2.0f

    mul-float v0, v0, p2

    add-float/2addr p1, v0

    return p1
.end method

.method protected handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 63
    iput-boolean v1, p0, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->mNotify:Z

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 70
    iget-boolean p1, p0, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->mNotify:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Notifying a gesture of type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->getGesture()Lcom/otaliastudios/cameraview/gesture/Gesture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/gesture/Gesture;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    :cond_1
    iget-boolean p1, p0, Lcom/otaliastudios/cameraview/gesture/ScrollGestureFinder;->mNotify:Z

    return p1
.end method
