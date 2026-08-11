.class public Lru/yandex/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field final synthetic a:Lru/yandex/core/KDSurfaceView;


# direct methods
.method public constructor <init>(Lru/yandex/core/KDSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/j;->a:Lru/yandex/core/KDSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    iget-object p1, p0, Lru/yandex/j;->a:Lru/yandex/core/KDSurfaceView;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lru/yandex/j;->a:Lru/yandex/core/KDSurfaceView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lru/yandex/core/KDSurfaceView;->isContext:Z

    iget-object v0, p0, Lru/yandex/j;->a:Lru/yandex/core/KDSurfaceView;

    iget-boolean v0, v0, Lru/yandex/core/KDSurfaceView;->isRedrawRequired:Z

    if-nez v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    invoke-static {}, Lru/yandex/core/CoreApplication;->registerCurrentThreadAsMain()V

    invoke-static {}, Lru/yandex/core/CoreApplication;->redraw()V

    invoke-static {}, Lru/yandex/core/CoreApplication;->unregisterCurrentThreadAsMain()V

    iget-object v0, p0, Lru/yandex/j;->a:Lru/yandex/core/KDSurfaceView;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    iget-object p1, p0, Lru/yandex/j;->a:Lru/yandex/core/KDSurfaceView;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lru/yandex/j;->a:Lru/yandex/core/KDSurfaceView;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lru/yandex/core/KDSurfaceView;->isContextLost:Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method
