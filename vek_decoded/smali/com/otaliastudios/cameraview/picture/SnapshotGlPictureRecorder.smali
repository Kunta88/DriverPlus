.class public Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;
.super Lcom/otaliastudios/cameraview/picture/SnapshotPictureRecorder;
.source "SnapshotGlPictureRecorder.java"


# instance fields
.field private mHasOverlay:Z

.field private mOutputRatio:Lcom/otaliastudios/cameraview/size/AspectRatio;

.field private mOverlay:Lcom/otaliastudios/cameraview/overlay/Overlay;

.field private mOverlayDrawer:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

.field private mPreview:Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;

.field private mTextureDrawer:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/picture/PictureRecorder$PictureResultListener;Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;Lcom/otaliastudios/cameraview/size/AspectRatio;Lcom/otaliastudios/cameraview/overlay/Overlay;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/cameraview/picture/SnapshotPictureRecorder;-><init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/picture/PictureRecorder$PictureResultListener;)V

    .line 71
    iput-object p3, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mPreview:Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;

    .line 72
    iput-object p4, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mOutputRatio:Lcom/otaliastudios/cameraview/size/AspectRatio;

    .line 73
    iput-object p5, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mOverlay:Lcom/otaliastudios/cameraview/overlay/Overlay;

    if-eqz p5, :cond_0

    .line 74
    sget-object p1, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;->PICTURE_SNAPSHOT:Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    invoke-interface {p5, p1}, Lcom/otaliastudios/cameraview/overlay/Overlay;->drawsOn(Lcom/otaliastudios/cameraview/overlay/Overlay$Target;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mHasOverlay:Z

    return-void
.end method

.method static synthetic access$000(Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;)Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mPreview:Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;

    return-object p0
.end method


# virtual methods
.method protected dispatchResult()V
    .locals 1

    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mOutputRatio:Lcom/otaliastudios/cameraview/size/AspectRatio;

    .line 235
    invoke-super {p0}, Lcom/otaliastudios/cameraview/picture/SnapshotPictureRecorder;->dispatchResult()V

    return-void
.end method

.method protected onRendererFilterChanged(Lcom/otaliastudios/cameraview/filter/Filter;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mTextureDrawer:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    invoke-interface {p1}, Lcom/otaliastudios/cameraview/filter/Filter;->copy()Lcom/otaliastudios/cameraview/filter/Filter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->setFilter(Lcom/otaliastudios/cameraview/filter/Filter;)V

    return-void
.end method

.method protected onRendererFrame(Landroid/graphics/SurfaceTexture;IFF)V
    .locals 8

    .line 135
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v6

    .line 136
    new-instance v7, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;-><init>(Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;Landroid/graphics/SurfaceTexture;IFFLandroid/opengl/EGLContext;)V

    invoke-static {v7}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onRendererTextureCreated(I)V
    .locals 3

    .line 109
    new-instance v0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    invoke-direct {v0, p1}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;-><init>(I)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mTextureDrawer:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    .line 111
    iget-object p1, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget-object p1, p1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mOutputRatio:Lcom/otaliastudios/cameraview/size/AspectRatio;

    invoke-static {p1, v0}, Lcom/otaliastudios/cameraview/internal/CropHelper;->computeCrop(Lcom/otaliastudios/cameraview/size/Size;Lcom/otaliastudios/cameraview/size/AspectRatio;)Landroid/graphics/Rect;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    new-instance v1, Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    iput-object v1, v0, Lcom/otaliastudios/cameraview/PictureResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    .line 113
    iget-boolean p1, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mHasOverlay:Z

    if-eqz p1, :cond_0

    .line 114
    new-instance p1, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mOverlay:Lcom/otaliastudios/cameraview/overlay/Overlay;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget-object v1, v1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    invoke-direct {p1, v0, v1}, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;-><init>(Lcom/otaliastudios/cameraview/overlay/Overlay;Lcom/otaliastudios/cameraview/size/Size;)V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mOverlayDrawer:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    :cond_0
    return-void
.end method

.method public take()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mPreview:Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;

    new-instance v1, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$1;

    invoke-direct {v1, p0}, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$1;-><init>(Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;)V

    invoke-interface {v0, v1}, Lcom/otaliastudios/cameraview/preview/RendererCameraPreview;->addRendererFrameCallback(Lcom/otaliastudios/cameraview/preview/RendererFrameCallback;)V

    return-void
.end method

.method protected takeFrame(Landroid/graphics/SurfaceTexture;IFFLandroid/opengl/EGLContext;)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    .line 180
    new-instance v3, Landroid/graphics/SurfaceTexture;

    const/16 v4, 0x270f

    invoke-direct {v3, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 181
    iget-object v4, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget-object v4, v4, Lcom/otaliastudios/cameraview/PictureResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v4

    iget-object v5, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget-object v5, v5, Lcom/otaliastudios/cameraview/PictureResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    invoke-virtual {v5}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 184
    new-instance v4, Lcom/otaliastudios/opengl/core/EglCore;

    const/4 v5, 0x1

    move-object/from16 v6, p5

    invoke-direct {v4, v6, v5}, Lcom/otaliastudios/opengl/core/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    .line 185
    new-instance v6, Lcom/otaliastudios/opengl/surface/EglWindowSurface;

    invoke-direct {v6, v4, v3}, Lcom/otaliastudios/opengl/surface/EglWindowSurface;-><init>(Lcom/otaliastudios/opengl/core/EglCore;Landroid/graphics/SurfaceTexture;)V

    .line 186
    invoke-virtual {v6}, Lcom/otaliastudios/opengl/surface/EglSurface;->makeCurrent()V

    .line 187
    iget-object v7, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mTextureDrawer:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    invoke-virtual {v7}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->getTextureTransform()[F

    move-result-object v7

    move-object/from16 v14, p1

    .line 190
    invoke-virtual {v14, v7}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v8, v15, v1

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float v10, v15, v2

    div-float/2addr v10, v9

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 193
    invoke-static {v7, v13, v8, v10, v12}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 194
    invoke-static {v7, v13, v1, v2, v15}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 198
    invoke-static {v7, v13, v1, v1, v12}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 199
    iget-object v2, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget v2, v2, Lcom/otaliastudios/cameraview/PictureResult$Stub;->rotation:I

    add-int v2, p2, v2

    int-to-float v10, v2

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    move-object v8, v7

    const/4 v5, 0x0

    move v12, v2

    const/4 v2, 0x0

    move/from16 v13, v16

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/high16 v8, -0x40800000    # -1.0f

    .line 200
    invoke-static {v7, v2, v15, v8, v15}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/high16 v9, -0x41000000    # -0.5f

    .line 201
    invoke-static {v7, v2, v9, v9, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 204
    iget-boolean v7, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mHasOverlay:Z

    if-eqz v7, :cond_0

    .line 206
    iget-object v7, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mOverlayDrawer:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    sget-object v10, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;->PICTURE_SNAPSHOT:Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    invoke-virtual {v7, v10}, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->draw(Lcom/otaliastudios/cameraview/overlay/Overlay$Target;)V

    .line 209
    iget-object v7, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mOverlayDrawer:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    invoke-virtual {v7}, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->getTransform()[F

    move-result-object v7

    invoke-static {v7, v2, v1, v1, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 210
    iget-object v1, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mOverlayDrawer:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->getTransform()[F

    move-result-object v17

    const/16 v18, 0x0

    iget-object v1, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget v1, v1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->rotation:I

    int-to-float v1, v1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v19, v1

    invoke-static/range {v17 .. v22}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 211
    iget-object v1, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mOverlayDrawer:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->getTransform()[F

    move-result-object v1

    invoke-static {v1, v2, v15, v8, v15}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 212
    iget-object v1, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mOverlayDrawer:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->getTransform()[F

    move-result-object v1

    invoke-static {v1, v2, v9, v9, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 214
    :cond_0
    iget-object v1, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iput v2, v1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->rotation:I

    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    .line 218
    sget-object v1, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v9, "takeFrame:"

    aput-object v9, v5, v2

    const-string v2, "timestampUs:"

    const/4 v9, 0x1

    aput-object v2, v5, v9

    const/4 v2, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v2

    invoke-virtual {v1, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 219
    iget-object v1, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mTextureDrawer:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    invoke-virtual {v1, v7, v8}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->draw(J)V

    .line 220
    iget-boolean v1, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mHasOverlay:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mOverlayDrawer:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    invoke-virtual {v1, v7, v8}, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->render(J)V

    .line 221
    :cond_1
    iget-object v1, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6, v2}, Lcom/otaliastudios/opengl/surface/EglSurface;->toByteArray(Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/otaliastudios/cameraview/PictureResult$Stub;->data:[B

    .line 224
    invoke-virtual {v6}, Lcom/otaliastudios/opengl/surface/EglSurface;->release()V

    .line 225
    iget-object v1, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mTextureDrawer:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->release()V

    .line 226
    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->release()V

    .line 227
    iget-boolean v1, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mHasOverlay:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->mOverlayDrawer:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->release()V

    .line 228
    :cond_2
    invoke-virtual {v4}, Lcom/otaliastudios/opengl/core/EglCore;->release()V

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->dispatchResult()V

    return-void
.end method
