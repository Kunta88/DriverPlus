.class public Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;
.super Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;
.source "TextureConfig.java"


# instance fields
.field public eglContext:Landroid/opengl/EGLContext;

.field public overlayDrawer:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

.field public overlayRotation:I

.field public overlayTarget:Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

.field public scaleX:F

.field public scaleY:F

.field public textureId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;-><init>()V

    return-void
.end method


# virtual methods
.method copy()Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;
    .locals 2

    .line 27
    new-instance v0, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;

    invoke-direct {v0}, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;-><init>()V

    .line 28
    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->copy(Lcom/otaliastudios/cameraview/video/encoding/VideoConfig;)V

    .line 29
    iget v1, p0, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->textureId:I

    iput v1, v0, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->textureId:I

    .line 30
    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->overlayDrawer:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    iput-object v1, v0, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->overlayDrawer:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    .line 31
    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->overlayTarget:Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    iput-object v1, v0, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->overlayTarget:Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    .line 32
    iget v1, p0, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->overlayRotation:I

    iput v1, v0, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->overlayRotation:I

    .line 33
    iget v1, p0, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->scaleX:F

    iput v1, v0, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->scaleX:F

    .line 34
    iget v1, p0, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->scaleY:F

    iput v1, v0, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->scaleY:F

    .line 35
    iget-object v1, p0, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->eglContext:Landroid/opengl/EGLContext;

    iput-object v1, v0, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->eglContext:Landroid/opengl/EGLContext;

    return-object v0
.end method

.method hasOverlay()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/TextureConfig;->overlayDrawer:Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
