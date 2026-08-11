.class Lcom/otaliastudios/cameraview/video/Full2VideoRecorder$1;
.super Lcom/otaliastudios/cameraview/engine/action/BaseAction;
.source "Full2VideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder$1;->this$0:Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;

    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/otaliastudios/cameraview/engine/action/BaseAction;->onCaptureStarted(Lcom/otaliastudios/cameraview/engine/action/ActionHolder;Landroid/hardware/camera2/CaptureRequest;)V

    .line 49
    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/engine/action/ActionHolder;->getBuilder(Lcom/otaliastudios/cameraview/engine/action/Action;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 50
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_0

    if-nez p2, :cond_1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const p1, 0x7fffffff

    .line 52
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder$1;->setState(I)V

    :cond_1
    return-void
.end method
