.class public Lru/yandex/core/KDSurfaceView;
.super Landroid/opengl/GLSurfaceView;


# instance fields
.field barSize:I

.field private coreGestureRecognizer:J

.field displayHeight:I

.field displayWidth:I

.field private eventProxy:Lru/yandex/core/MotionEventProxy;

.field private gestureConfig:I

.field height:I

.field public isContext:Z

.field public isContextLost:Z

.field public isRedrawRequired:Z

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lru/yandex/core/KDSurfaceView;->coreGestureRecognizer:J

    invoke-static {}, Lru/yandex/core/MotionEventProxy;->create()Lru/yandex/core/MotionEventProxy;

    move-result-object p1

    iput-object p1, p0, Lru/yandex/core/KDSurfaceView;->eventProxy:Lru/yandex/core/MotionEventProxy;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lru/yandex/core/KDSurfaceView;->isRedrawRequired:Z

    iput-boolean p1, p0, Lru/yandex/core/KDSurfaceView;->isContext:Z

    iput-boolean p1, p0, Lru/yandex/core/KDSurfaceView;->isContextLost:Z

    invoke-direct {p0}, Lru/yandex/core/KDSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lru/yandex/core/KDSurfaceView;->coreGestureRecognizer:J

    invoke-static {}, Lru/yandex/core/MotionEventProxy;->create()Lru/yandex/core/MotionEventProxy;

    move-result-object p1

    iput-object p1, p0, Lru/yandex/core/KDSurfaceView;->eventProxy:Lru/yandex/core/MotionEventProxy;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lru/yandex/core/KDSurfaceView;->isRedrawRequired:Z

    iput-boolean p1, p0, Lru/yandex/core/KDSurfaceView;->isContext:Z

    iput-boolean p1, p0, Lru/yandex/core/KDSurfaceView;->isContextLost:Z

    invoke-direct {p0}, Lru/yandex/core/KDSurfaceView;->init()V

    return-void
.end method

.method public static synthetic access$000(J)V
    .locals 0

    invoke-static {p0, p1}, Lru/yandex/core/KDSurfaceView;->shutdownGestureRecognizers(J)V

    return-void
.end method

.method private dispatchGesture(Landroid/view/MotionEvent;Lru/yandex/l;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-wide v2, v0, Lru/yandex/core/KDSurfaceView;->coreGestureRecognizer:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget v2, v0, Lru/yandex/core/KDSurfaceView;->gestureConfig:I

    invoke-static {v2}, Lru/yandex/core/KDSurfaceView;->initGestureRecognizers(I)J

    move-result-wide v2

    iput-wide v2, v0, Lru/yandex/core/KDSurfaceView;->coreGestureRecognizer:J

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v3, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1

    const/4 v4, 0x6

    if-eq v2, v4, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    iget-wide v4, v0, Lru/yandex/core/KDSurfaceView;->coreGestureRecognizer:J

    iget-object v6, v1, Lru/yandex/l;->a:[F

    iget-object v7, v1, Lru/yandex/l;->b:[F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-static/range {v4 .. v9}, Lru/yandex/core/KDSurfaceView;->touchesMoved(J[F[FJ)V

    return v3

    :cond_2
    iget-wide v10, v0, Lru/yandex/core/KDSurfaceView;->coreGestureRecognizer:J

    iget-object v12, v1, Lru/yandex/l;->a:[F

    iget-object v13, v1, Lru/yandex/l;->b:[F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    invoke-static/range {v10 .. v15}, Lru/yandex/core/KDSurfaceView;->touchesCancelled(J[F[FJ)V

    return v3

    :cond_3
    iget-object v2, v0, Lru/yandex/core/KDSurfaceView;->eventProxy:Lru/yandex/core/MotionEventProxy;

    move-object/from16 v4, p1

    iput-object v4, v2, Lru/yandex/core/MotionEventProxy;->ev:Landroid/view/MotionEvent;

    iget-wide v5, v0, Lru/yandex/core/KDSurfaceView;->coreGestureRecognizer:J

    iget-object v2, v1, Lru/yandex/l;->a:[F

    iget-object v7, v1, Lru/yandex/l;->b:[F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    move-wide v4, v5

    move-object v6, v2

    invoke-static/range {v4 .. v9}, Lru/yandex/core/KDSurfaceView;->touchesMoved(J[F[FJ)V

    return v3

    :cond_4
    move-object/from16 v4, p1

    iget-wide v10, v0, Lru/yandex/core/KDSurfaceView;->coreGestureRecognizer:J

    iget-object v12, v1, Lru/yandex/l;->a:[F

    iget-object v13, v1, Lru/yandex/l;->b:[F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    invoke-static/range {v10 .. v15}, Lru/yandex/core/KDSurfaceView;->touchesEnded(J[F[FJ)V

    return v3

    :cond_5
    move-object/from16 v4, p1

    iget-wide v5, v0, Lru/yandex/core/KDSurfaceView;->coreGestureRecognizer:J

    iget-object v2, v1, Lru/yandex/l;->a:[F

    iget-object v7, v1, Lru/yandex/l;->b:[F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    move-wide v4, v5

    move-object v6, v2

    invoke-static/range {v4 .. v9}, Lru/yandex/core/KDSurfaceView;->touchesBegan(J[F[FJ)V

    return v3
.end method

.method private doDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    invoke-direct {p0, p1}, Lru/yandex/core/KDSurfaceView;->prepareForCore(Landroid/view/MotionEvent;)Lru/yandex/l;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v5, 0x4003

    const/16 v6, 0x39

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v1, :cond_0

    new-array v1, v7, [I

    aput v6, v1, v8

    aput v5, v1, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    aput v10, v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    aput v10, v1, v3

    aput v9, v1, v2

    invoke-static {v1}, Lru/yandex/core/CoreApplication;->sendEvent([I)V

    :cond_0
    invoke-direct {p0, p1, v0}, Lru/yandex/core/KDSurfaceView;->dispatchGesture(Landroid/view/MotionEvent;Lru/yandex/l;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v9, :cond_1

    new-array v1, v7, [I

    aput v6, v1, v8

    aput v5, v1, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    aput v5, v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    aput p1, v1, v3

    aput v8, v1, v2

    invoke-static {v1}, Lru/yandex/core/CoreApplication;->sendEvent([I)V

    :cond_1
    return v0
.end method

.method private init()V
    .locals 6

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Lru/yandex/core/CoreApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lru/yandex/core/KDSurfaceView;->displayWidth:I

    iput v1, p0, Lru/yandex/core/KDSurfaceView;->width:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lru/yandex/core/KDSurfaceView;->displayHeight:I

    iput v1, p0, Lru/yandex/core/KDSurfaceView;->height:I

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/lit8 v0, v0, 0x19

    div-int/lit16 v0, v0, 0xa0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lru/yandex/core/KDSurfaceView;->barSize:I

    new-instance v0, Lru/yandex/j;

    invoke-direct {v0, p0}, Lru/yandex/j;-><init>(Lru/yandex/core/KDSurfaceView;)V

    invoke-virtual {p0, v0}, Lru/yandex/core/KDSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lru/yandex/core/KDSurfaceView;->setRenderMode(I)V

    sget v1, Lru/yandex/core/CoreApplication;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    :try_start_0
    const-class v1, Landroid/opengl/GLSurfaceView;

    const-string v2, "setPreserveEGLContextOnPause"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static native initGestureRecognizers(I)J
.end method

.method private prepareForCore(Landroid/view/MotionEvent;)Lru/yandex/l;
    .locals 4

    iget-object v0, p0, Lru/yandex/core/KDSurfaceView;->eventProxy:Lru/yandex/core/MotionEventProxy;

    iput-object p1, v0, Lru/yandex/core/MotionEventProxy;->ev:Landroid/view/MotionEvent;

    iget-object p1, p0, Lru/yandex/core/KDSurfaceView;->eventProxy:Lru/yandex/core/MotionEventProxy;

    invoke-virtual {p1}, Lru/yandex/core/MotionEventProxy;->getPointerCount()I

    move-result p1

    new-instance v0, Lru/yandex/l;

    new-array v1, p1, [F

    new-array v2, p1, [F

    invoke-direct {v0, v1, v2}, Lru/yandex/l;-><init>([F[F)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, v0, Lru/yandex/l;->a:[F

    iget-object v3, p0, Lru/yandex/core/KDSurfaceView;->eventProxy:Lru/yandex/core/MotionEventProxy;

    invoke-virtual {v3, v1}, Lru/yandex/core/MotionEventProxy;->getX(I)F

    move-result v3

    aput v3, v2, v1

    iget-object v2, v0, Lru/yandex/l;->b:[F

    iget-object v3, p0, Lru/yandex/core/KDSurfaceView;->eventProxy:Lru/yandex/core/MotionEventProxy;

    invoke-virtual {v3, v1}, Lru/yandex/core/MotionEventProxy;->getY(I)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static native shutdownGestureRecognizers(J)V
.end method

.method private static native touchesBegan(J[F[FJ)V
.end method

.method private static native touchesCancelled(J[F[FJ)V
.end method

.method private static native touchesEnded(J[F[FJ)V
.end method

.method private static native touchesMoved(J[F[FJ)V
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lru/yandex/core/KDSurfaceView;->doDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected finalize()V
    .locals 6

    iget-wide v0, p0, Lru/yandex/core/KDSurfaceView;->coreGestureRecognizer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Lru/yandex/core/CoreApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lru/yandex/k;

    iget-wide v4, p0, Lru/yandex/core/KDSurfaceView;->coreGestureRecognizer:J

    invoke-direct {v1, v4, v5}, Lru/yandex/k;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-wide v2, p0, Lru/yandex/core/KDSurfaceView;->coreGestureRecognizer:J

    :cond_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    return-void
.end method

.method kdGFXChangeLoaderYAN(Z)V
    .locals 0

    return-void
.end method

.method kdGFXEnterLoaderYAN()V
    .locals 0

    return-void
.end method

.method kdGFXInitLoaderYAN()V
    .locals 0

    return-void
.end method

.method kdGFXLeaveLoaderYAN()V
    .locals 0

    return-void
.end method

.method kdGFXQueryMainContextYAN(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    return p1

    :pswitch_0
    iget p1, p0, Lru/yandex/core/KDSurfaceView;->barSize:I

    return p1

    :pswitch_1
    iget p1, p0, Lru/yandex/core/KDSurfaceView;->displayHeight:I

    return p1

    :pswitch_2
    iget p1, p0, Lru/yandex/core/KDSurfaceView;->displayWidth:I

    return p1

    :pswitch_3
    const/4 p1, 0x0

    return p1

    :pswitch_4
    iget p1, p0, Lru/yandex/core/KDSurfaceView;->height:I

    return p1

    :pswitch_5
    iget p1, p0, Lru/yandex/core/KDSurfaceView;->width:I

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method kdGFXRequestRedraw()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lru/yandex/core/KDSurfaceView;->isContext:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/core/KDSurfaceView;->isRedrawRequired:Z

    invoke-virtual {p0}, Lru/yandex/core/KDSurfaceView;->requestRender()V

    iget-boolean v1, p0, Lru/yandex/core/KDSurfaceView;->isContextLost:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-array v0, v0, [I

    const/16 v1, 0x6a

    aput v1, v0, v2

    invoke-static {v0}, Lru/yandex/core/CoreApplication;->sendEvent([I)V

    iput-boolean v2, p0, Lru/yandex/core/KDSurfaceView;->isContextLost:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const-wide/16 v0, 0x64

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iput-boolean v2, p0, Lru/yandex/core/KDSurfaceView;->isRedrawRequired:Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method kdGFXShutdownLoaderYAN()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lru/yandex/core/KDSurfaceView;->isContext:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    iput p1, p0, Lru/yandex/core/KDSurfaceView;->width:I

    iput p2, p0, Lru/yandex/core/KDSurfaceView;->height:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 p2, 0x0

    const/16 p3, 0x30

    aput p3, p1, p2

    invoke-static {p1}, Lru/yandex/core/CoreApplication;->sendEvent([I)V

    return-void
.end method

.method setupGestureRecognizers(I)V
    .locals 0

    iput p1, p0, Lru/yandex/core/KDSurfaceView;->gestureConfig:I

    return-void
.end method
