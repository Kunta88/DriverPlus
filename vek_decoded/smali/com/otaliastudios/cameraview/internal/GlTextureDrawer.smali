.class public Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;
.super Ljava/lang/Object;
.source "GlTextureDrawer.java"


# static fields
.field private static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field private static final TAG:Ljava/lang/String; = "GlTextureDrawer"

.field private static final TEXTURE_TARGET:I = 0x8d65

.field private static final TEXTURE_UNIT:I = 0x84c0


# instance fields
.field private mFilter:Lcom/otaliastudios/cameraview/filter/Filter;

.field private mPendingFilter:Lcom/otaliastudios/cameraview/filter/Filter;

.field private mProgramHandle:I

.field private final mTexture:Lcom/otaliastudios/opengl/texture/GlTexture;

.field private mTextureTransform:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 35
    new-instance v0, Lcom/otaliastudios/opengl/texture/GlTexture;

    const v1, 0x84c0

    const v2, 0x8d65

    invoke-direct {v0, v1, v2}, Lcom/otaliastudios/opengl/texture/GlTexture;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;-><init>(Lcom/otaliastudios/opengl/texture/GlTexture;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 40
    new-instance v0, Lcom/otaliastudios/opengl/texture/GlTexture;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v1, 0x84c0

    const v2, 0x8d65

    invoke-direct {v0, v1, v2, p1}, Lcom/otaliastudios/opengl/texture/GlTexture;-><init>(IILjava/lang/Integer;)V

    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;-><init>(Lcom/otaliastudios/opengl/texture/GlTexture;)V

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/opengl/texture/GlTexture;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/otaliastudios/opengl/core/Egloo;->IDENTITY_MATRIX:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mTextureTransform:[F

    .line 28
    new-instance v0, Lcom/otaliastudios/cameraview/filter/NoFilter;

    invoke-direct {v0}, Lcom/otaliastudios/cameraview/filter/NoFilter;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mPendingFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mProgramHandle:I

    .line 45
    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mTexture:Lcom/otaliastudios/opengl/texture/GlTexture;

    return-void
.end method


# virtual methods
.method public draw(J)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mPendingFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->release()V

    .line 69
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mPendingFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mPendingFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    .line 74
    :cond_0
    iget v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mProgramHandle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    .line 76
    invoke-interface {v0}, Lcom/otaliastudios/cameraview/filter/Filter;->getVertexShader()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    .line 77
    invoke-interface {v1}, Lcom/otaliastudios/cameraview/filter/Filter;->getFragmentShader()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v0, v1}, Lcom/otaliastudios/opengl/program/GlProgram;->create(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mProgramHandle:I

    .line 78
    iget-object v1, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    invoke-interface {v1, v0}, Lcom/otaliastudios/cameraview/filter/Filter;->onCreate(I)V

    const-string v0, "program creation"

    .line 79
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 82
    :cond_1
    iget v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v0, "glUseProgram(handle)"

    .line 83
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mTexture:Lcom/otaliastudios/opengl/texture/GlTexture;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/texture/GlTexture;->bind()V

    .line 85
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mTextureTransform:[F

    invoke-interface {v0, p1, p2, v1}, Lcom/otaliastudios/cameraview/filter/Filter;->draw(J[F)V

    .line 86
    iget-object p1, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mTexture:Lcom/otaliastudios/opengl/texture/GlTexture;

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/texture/GlTexture;->unbind()V

    const/4 p1, 0x0

    .line 87
    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string p1, "glUseProgram(0)"

    .line 88
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public getTexture()Lcom/otaliastudios/opengl/texture/GlTexture;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mTexture:Lcom/otaliastudios/opengl/texture/GlTexture;

    return-object v0
.end method

.method public getTextureTransform()[F
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mTextureTransform:[F

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 92
    iget v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mProgramHandle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    invoke-interface {v0}, Lcom/otaliastudios/cameraview/filter/Filter;->onDestroy()V

    .line 94
    iget v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 95
    iput v1, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mProgramHandle:I

    return-void
.end method

.method public setFilter(Lcom/otaliastudios/cameraview/filter/Filter;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mPendingFilter:Lcom/otaliastudios/cameraview/filter/Filter;

    return-void
.end method

.method public setTextureTransform([F)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->mTextureTransform:[F

    return-void
.end method
