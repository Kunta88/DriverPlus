.class Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1;
.super Ljava/lang/Object;
.source "GlCameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->onCreateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

.field final synthetic val$glView:Landroid/opengl/GLSurfaceView;

.field final synthetic val$renderer:Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;Landroid/opengl/GLSurfaceView;Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1;->val$glView:Landroid/opengl/GLSurfaceView;

    iput-object p3, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1;->val$renderer:Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->dispatchOnSurfaceDestroyed()V

    .line 98
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1;->val$glView:Landroid/opengl/GLSurfaceView;

    new-instance v0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1$1;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1$1;-><init>(Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1;)V

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 104
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$002(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;Z)Z

    return-void
.end method
