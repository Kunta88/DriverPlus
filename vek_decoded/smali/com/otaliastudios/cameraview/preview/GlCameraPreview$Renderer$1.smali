.class Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer$1;
.super Ljava/lang/Object;
.source "GlCameraPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$textureId:I


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;I)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer$1;->this$1:Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;

    iput p2, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer$1;->val$textureId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer$1;->this$1:Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$400(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;

    .line 156
    iget v2, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer$1;->val$textureId:I

    invoke-interface {v1, v2}, Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;->onRendererTextureCreated(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
