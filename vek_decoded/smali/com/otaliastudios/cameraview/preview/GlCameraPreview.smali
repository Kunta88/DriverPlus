.class public Lcom/otaliastudios/cameraview/preview/GlCameraPreview;
.super Lcom/otaliastudios/cameraview/preview/CameraPreview;
.source "GlCameraPreview.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/preview/FilterCameraPreview;
.implements Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/otaliastudios/cameraview/preview/CameraPreview<",
        "Landroid/opengl/GLSurfaceView;",
        "Landroid/graphics/SurfaceTexture;",
        ">;",
        "Lcom/otaliastudios/cameraview/preview/FilterCameraPreview;",
        "Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;"
    }
.end annotation


# instance fields
.field mCropScaleX:F

.field mCropScaleY:F

.field private mCurrentFilter:Lcom/otaliastudios/cameraview/filter/Filter;

.field private mDispatched:Z

.field private mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mOutputTextureDrawer:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

.field private final mRendererFrameCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/cameraview/preview/CameraPreview;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 71
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mRendererFrameCallbacks:Ljava/util/Set;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 72
    iput p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mCropScaleX:F

    .line 73
    iput p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mCropScaleY:F

    return-void
.end method

.method static synthetic access$000(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mDispatched:Z

    return p0
.end method

.method static synthetic access$002(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mDispatched:Z

    return p1
.end method

.method static synthetic access$100(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Lcom/otaliastudios/cameraview/filter/Filter;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mCurrentFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;Lcom/otaliastudios/cameraview/filter/Filter;)Lcom/otaliastudios/cameraview/filter/Filter;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mCurrentFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mOutputTextureDrawer:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    return-object p0
.end method

.method static synthetic access$202(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;)Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mOutputTextureDrawer:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$302(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$400(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)Ljava/util/Set;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mRendererFrameCallbacks:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public addRendererFrameCallback(Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;)V
    .locals 2

    .line 295
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$2;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$2;-><init>(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected crop(Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;)V
    .locals 5

    .line 273
    iget v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mInputStreamWidth:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mInputStreamHeight:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mOutputSurfaceWidth:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mOutputSurfaceHeight:I

    if-lez v0, :cond_3

    .line 276
    iget v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mOutputSurfaceWidth:I

    iget v1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mOutputSurfaceHeight:I

    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->of(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v0

    .line 277
    iget v1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mInputStreamWidth:I

    iget v2, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mInputStreamHeight:I

    invoke-static {v1, v2}, Lcom/otaliastudios/cameraview/size/AspectRatio;->of(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v1

    .line 278
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v2

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v0

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v1

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const v2, 0x3f828f5c    # 1.02f

    cmpl-float v3, v1, v2

    if-gtz v3, :cond_2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 285
    :goto_2
    iput-boolean v2, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mCropping:Z

    div-float v1, v4, v1

    .line 286
    iput v1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mCropScaleX:F

    div-float/2addr v4, v0

    .line 287
    iput v4, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mCropScaleY:F

    .line 288
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_3
    if-eqz p1, :cond_4

    .line 290
    invoke-interface {p1}, Lcom/otaliastudios/cameraview/preview/CameraPreview$CropCallback;->onCrop()V

    :cond_4
    return-void
.end method

.method public getCurrentFilter()Lcom/otaliastudios/cameraview/filter/Filter;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mCurrentFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    return-object v0
.end method

.method public getOutput()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public bridge synthetic getOutput()Ljava/lang/Object;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->getOutput()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public getOutputClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/SurfaceTexture;",
            ">;"
        }
    .end annotation

    .line 244
    const-class v0, Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method protected getTextureId()I
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mOutputTextureDrawer:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->getTexture()Lcom/otaliastudios/opengl/texture/GlTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/texture/GlTexture;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method protected instantiateRenderer()Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;
    .locals 1

    .line 329
    new-instance v0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;-><init>(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;)V

    return-object v0
.end method

.method protected onCreateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/opengl/GLSurfaceView;
    .locals 5

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/otaliastudios/cameraview/R$layout;->cameraview_gl_view:I

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 86
    sget v0, Lcom/otaliastudios/cameraview/R$id;->gl_surface_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    .line 87
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->instantiateRenderer()Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;

    move-result-object v2

    const/4 v3, 0x2

    .line 88
    invoke-virtual {v0, v3}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 89
    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 90
    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 91
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    new-instance v4, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1;-><init>(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;Landroid/opengl/GLSurfaceView;Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;)V

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 107
    invoke-virtual {p2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 108
    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method protected bridge synthetic onCreateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->onCreateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/opengl/GLSurfaceView;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 132
    invoke-super {p0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->onDestroy()V

    .line 134
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mRendererFrameCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 126
    invoke-super {p0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->onPause()V

    .line 127
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/otaliastudios/cameraview/preview/CameraPreview;->onResume()V

    .line 121
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    return-void
.end method

.method public removeRendererFrameCallback(Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mRendererFrameCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFilter(Lcom/otaliastudios/cameraview/filter/Filter;)V
    .locals 2

    .line 343
    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mCurrentFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    .line 344
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mOutputSurfaceWidth:I

    iget v1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->mOutputSurfaceHeight:I

    invoke-interface {p1, v0, v1}, Lcom/otaliastudios/cameraview/filter/Filter;->setSize(II)V

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$3;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$3;-><init>(Lcom/otaliastudios/cameraview/preview/GlCameraPreview;Lcom/otaliastudios/cameraview/filter/Filter;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public supportsCropping()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
