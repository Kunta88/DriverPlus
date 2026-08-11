.class Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer$2;
.super Ljava/lang/Object;
.source "GlCameraPreview.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer$2;->this$1:Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 166
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer$2;->this$1:Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;

    iget-object p1, p1, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method
