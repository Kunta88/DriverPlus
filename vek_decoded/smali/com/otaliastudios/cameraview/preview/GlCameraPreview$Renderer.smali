.class public Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;
.super Ljava/lang/Object;
.source "GlCameraPreview.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/preview/GlCameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Renderer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    .line 201
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$300(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Landroid/graphics/SurfaceTexture;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iget p1, p1, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mInputStreamWidth:I

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iget p1, p1, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mInputStreamHeight:I

    if-gtz p1, :cond_1

    goto/16 :goto_1

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$200(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->getTextureTransform()[F

    move-result-object p1

    .line 210
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$300(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 211
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$300(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 216
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iget v0, v0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mDrawRotation:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    .line 217
    invoke-static {p1, v7, v0, v0, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iget v0, v0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mDrawRotation:I

    int-to-float v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/high16 v0, -0x41000000    # -0.5f

    .line 219
    invoke-static {p1, v7, v0, v0, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->isCropping()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iget v0, v0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mCropScaleX:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 229
    iget-object v3, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iget v3, v3, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mCropScaleY:F

    sub-float v3, v1, v3

    div-float/2addr v3, v2

    .line 230
    invoke-static {p1, v7, v0, v3, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 231
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iget v0, v0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mCropScaleX:F

    iget-object v2, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iget v2, v2, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mCropScaleY:F

    invoke-static {p1, v7, v0, v2, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 234
    :cond_3
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$200(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    move-result-object p1

    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$300(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->draw(J)V

    .line 235
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$400(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;

    .line 236
    iget-object v1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {v1}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$300(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iget v2, v2, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mDrawRotation:I

    iget-object v3, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iget v3, v3, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mCropScaleX:F

    iget-object v4, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iget v4, v4, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mCropScaleY:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;->onRendererFrame(Landroid/graphics/SurfaceTexture;IFF)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 189
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$100(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Lcom/otaliastudios/cameraview/filter/Filter;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/otaliastudios/cameraview/filter/Filter;->setSize(II)V

    .line 190
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$000(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-virtual {p1, p2, p3}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->dispatchOnSurfaceAvailable(II)V

    .line 192
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$002(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;Z)Z

    goto :goto_0

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iget p1, p1, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mOutputSurfaceWidth:I

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    iget p1, p1, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mOutputSurfaceHeight:I

    if-eq p3, p1, :cond_2

    .line 194
    :cond_1
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-virtual {p1, p2, p3}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->dispatchOnSurfaceSizeChanged(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    .line 145
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$100(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Lcom/otaliastudios/cameraview/filter/Filter;

    move-result-object p1

    if-nez p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    new-instance p2, Lcom/otaliastudios/cameraview/filter/NoFilter;

    invoke-direct {p2}, Lcom/otaliastudios/cameraview/filter/NoFilter;-><init>()V

    invoke-static {p1, p2}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$102(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;Lcom/otaliastudios/cameraview/filter/Filter;)Lcom/otaliastudios/cameraview/filter/Filter;

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    new-instance p2, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    invoke-direct {p2}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;-><init>()V

    invoke-static {p1, p2}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$202(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;)Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    .line 149
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$200(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    move-result-object p1

    iget-object p2, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {p2}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$100(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Lcom/otaliastudios/cameraview/filter/Filter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->setFilter(Lcom/otaliastudios/cameraview/filter/Filter;)V

    .line 150
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$200(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->getTexture()Lcom/otaliastudios/opengl/texture/GlTexture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/texture/GlTexture;->getId()I

    move-result p1

    .line 151
    iget-object p2, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {p2, v0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$302(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 152
    iget-object p2, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-virtual {p2}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->getView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/opengl/GLSurfaceView;

    new-instance v0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer$1;

    invoke-direct {v0, p0, p1}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer$1;-><init>(Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;I)V

    invoke-virtual {p2, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 163
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$300(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Landroid/graphics/SurfaceTexture;

    move-result-object p1

    new-instance p2, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer$2;

    invoke-direct {p2, p0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer$2;-><init>(Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;)V

    invoke-virtual {p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$300(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$300(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 176
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$300(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 177
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$302(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$200(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$200(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->release()V

    .line 181
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->this$0:Lcom/otaliastudios/cameraview/preview/GlCameraPreview;

    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->access$202(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;)Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    :cond_1
    return-void
.end method
