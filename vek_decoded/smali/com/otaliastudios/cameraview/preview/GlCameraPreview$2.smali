.class Lcom/otaliastudios/cameraview/preview/GlCameraPreview$2;
.super Ljava/lang/Object;
.source "GlCameraPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->addRendererFrameCallback(Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

.field final synthetic val$callback:Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$2;->val$callback:Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$400(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$2;->val$callback:Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$200(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$200(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->getTexture()Lcom/otaliastudios/opengl/texture/GlTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/texture/GlTexture;->getId()I

    move-result v0

    .line 301
    iget-object v1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$2;->val$callback:Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;

    invoke-interface {v1, v0}, Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;->onRendererTextureCreated(I)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$2;->val$callback:Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$2;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$100(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Lcom/otaliastudios/cameraview/filter/Filter;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;->onRendererFilterChanged(Lcom/otaliastudios/cameraview/filter/Filter;)V

    return-void
.end method
