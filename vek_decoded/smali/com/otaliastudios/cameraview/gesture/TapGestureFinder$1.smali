.class Lcom/otaliastudios/cameraview/gesture/TapGestureFinder$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TapGestureFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;-><init>(Lcom/otaliastudios/cameraview/gesture/GestureFinder$Controller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder$1;->this$0:Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 39
    iget-object p1, p0, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder$1;->this$0:Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;->access$002(Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;Z)Z

    .line 40
    iget-object p1, p0, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder$1;->this$0:Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;

    sget-object v0, Lcom/otaliastudios/cameraview/gesture/Gesture;->LONG_TAP:Lcom/otaliastudios/cameraview/gesture/Gesture;

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;->setGesture(Lcom/otaliastudios/cameraview/gesture/Gesture;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 24
    iget-object p1, p0, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder$1;->this$0:Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;->access$002(Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;Z)Z

    .line 25
    iget-object p1, p0, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder$1;->this$0:Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;

    sget-object v1, Lcom/otaliastudios/cameraview/gesture/Gesture;->TAP:Lcom/otaliastudios/cameraview/gesture/Gesture;

    invoke-virtual {p1, v1}, Lcom/otaliastudios/cameraview/gesture/TapGestureFinder;->setGesture(Lcom/otaliastudios/cameraview/gesture/Gesture;)V

    return v0
.end method
