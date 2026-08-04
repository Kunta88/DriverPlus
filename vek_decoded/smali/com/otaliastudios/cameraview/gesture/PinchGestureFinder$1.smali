.class Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "PinchGestureFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;-><init>(Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder$1;->this$0:Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder$1;->this$0:Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->access$002(Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;Z)Z

    .line 27
    iget-object v0, p0, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder$1;->this$0:Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr p1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float p1, p1, v2

    invoke-static {v0, p1}, Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;->access$102(Lcom/otaliastudios/cameraview/gesture/PinchGestureFinder;F)F

    return v1
.end method
