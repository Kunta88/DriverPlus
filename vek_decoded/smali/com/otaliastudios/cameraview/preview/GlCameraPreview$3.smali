.class Lcom/otaliastudios/cameraview/preview/GlCameraPreview$3;
.super Ljava/lang/Object;
.source "GlCameraPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->setFilter(Lcom/otaliastudios/cameraview/filter/Filter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

.field final synthetic val$filter:Lcom/otaliastudios/cameraview/filter/Filter;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;Lcom/otaliastudios/cameraview/filter/Filter;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$3;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$3;->val$filter:Lcom/otaliastudios/cameraview/filter/Filter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$3;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$200(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$3;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$200(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$3;->val$filter:Lcom/otaliastudios/cameraview/filter/Filter;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->setFilter(Lcom/otaliastudios/cameraview/filter/Filter;)V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$3;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$400(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;

    .line 355
    iget-object v2, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$3;->val$filter:Lcom/otaliastudios/cameraview/filter/Filter;

    invoke-interface {v1, v2}, Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;->onRendererFilterChanged(Lcom/otaliastudios/cameraview/filter/Filter;)V

    goto :goto_0

    :cond_1
    return-void
.end method
