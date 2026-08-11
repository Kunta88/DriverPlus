.class Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;
.super Ljava/lang/Object;
.source "SnapshotGlPictureRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->onRendererFrame(Landroid/graphics/SurfaceTexture;IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;

.field final synthetic val$eglContext:Landroid/opengl/EGLContext;

.field final synthetic val$rotation:I

.field final synthetic val$scaleX:F

.field final synthetic val$scaleY:F

.field final synthetic val$surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;Landroid/graphics/SurfaceTexture;IFFLandroid/opengl/EGLContext;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->this$0:Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->val$surfaceTexture:Landroid/graphics/SurfaceTexture;

    iput p3, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->val$rotation:I

    iput p4, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->val$scaleX:F

    iput p5, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->val$scaleY:F

    iput-object p6, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->val$eglContext:Landroid/opengl/EGLContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 139
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->this$0:Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->val$surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->val$rotation:I

    iget v3, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->val$scaleX:F

    iget v4, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->val$scaleY:F

    iget-object v5, p0, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder$2;->val$eglContext:Landroid/opengl/EGLContext;

    invoke-virtual/range {v0 .. v5}, Lcom/otaliastudios/cameraview/picture/SnapshotGlPictureRecorder;->takeFrame(Landroid/graphics/SurfaceTexture;IFFLandroid/opengl/EGLContext;)V

    return-void
.end method
