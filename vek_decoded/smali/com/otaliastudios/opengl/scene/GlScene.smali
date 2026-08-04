.class public Lcom/otaliastudios/opengl/scene/GlScene;
.super Lcom/otaliastudios/opengl/core/GlViewportAware;
.source "GlScene.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0016\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0007\u0010\u0002\u001a\u0004\u0008\u0008\u0010\tR\u0017\u0010\n\u001a\u00020\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u0002\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/scene/GlScene;",
        "Lcom/otaliastudios/opengl/core/GlViewportAware;",
        "()V",
        "modelViewMatrix",
        "",
        "modelViewProjectionMatrix",
        "projectionMatrix",
        "getProjectionMatrix$annotations",
        "getProjectionMatrix",
        "()[F",
        "viewMatrix",
        "getViewMatrix$annotations",
        "getViewMatrix",
        "computeModelViewProjectionMatrix",
        "",
        "drawable",
        "Lcom/otaliastudios/opengl/draw/GlDrawable;",
        "draw",
        "program",
        "Lcom/otaliastudios/opengl/program/GlProgram;",
        "egloo-metadata_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final modelViewMatrix:[F

.field private final modelViewProjectionMatrix:[F

.field private final projectionMatrix:[F

.field private final viewMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/otaliastudios/opengl/core/GlViewportAware;-><init>()V

    .line 23
    sget-object v0, Lcom/otaliastudios/opengl/core/Egloo;->IDENTITY_MATRIX:[F

    invoke-static {v0}, Lcom/otaliastudios/opengl/internal/MiscKt;->matrixClone([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/opengl/scene/GlScene;->projectionMatrix:[F

    .line 26
    sget-object v0, Lcom/otaliastudios/opengl/core/Egloo;->IDENTITY_MATRIX:[F

    invoke-static {v0}, Lcom/otaliastudios/opengl/internal/MiscKt;->matrixClone([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/opengl/scene/GlScene;->viewMatrix:[F

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 28
    iput-object v1, p0, Lcom/otaliastudios/opengl/scene/GlScene;->modelViewMatrix:[F

    new-array v0, v0, [F

    .line 29
    iput-object v0, p0, Lcom/otaliastudios/opengl/scene/GlScene;->modelViewProjectionMatrix:[F

    return-void
.end method

.method private final computeModelViewProjectionMatrix(Lcom/otaliastudios/opengl/draw/GlDrawable;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/otaliastudios/opengl/scene/GlScene;->modelViewMatrix:[F

    iget-object v1, p0, Lcom/otaliastudios/opengl/scene/GlScene;->viewMatrix:[F

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getModelMatrix()[F

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/otaliastudios/opengl/internal/MiscKt;->matrixMultiply([F[F[F)V

    .line 33
    iget-object p1, p0, Lcom/otaliastudios/opengl/scene/GlScene;->modelViewProjectionMatrix:[F

    iget-object v0, p0, Lcom/otaliastudios/opengl/scene/GlScene;->projectionMatrix:[F

    iget-object v1, p0, Lcom/otaliastudios/opengl/scene/GlScene;->modelViewMatrix:[F

    invoke-static {p1, v0, v1}, Lcom/otaliastudios/opengl/internal/MiscKt;->matrixMultiply([F[F[F)V

    return-void
.end method

.method public static synthetic getProjectionMatrix$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getViewMatrix$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final draw(Lcom/otaliastudios/opengl/program/GlProgram;Lcom/otaliastudios/opengl/draw/GlDrawable;)V
    .locals 2

    const-string v0, "program"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/scene/GlScene;->ensureViewportSize()V

    .line 38
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/scene/GlScene;->getViewportWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/otaliastudios/opengl/scene/GlScene;->getViewportHeight()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/otaliastudios/opengl/draw/GlDrawable;->setViewportSize(II)V

    .line 40
    invoke-direct {p0, p2}, Lcom/otaliastudios/opengl/scene/GlScene;->computeModelViewProjectionMatrix(Lcom/otaliastudios/opengl/draw/GlDrawable;)V

    .line 41
    iget-object v0, p0, Lcom/otaliastudios/opengl/scene/GlScene;->modelViewProjectionMatrix:[F

    invoke-virtual {p1, p2, v0}, Lcom/otaliastudios/opengl/program/GlProgram;->draw(Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V

    return-void
.end method

.method public final getProjectionMatrix()[F
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/otaliastudios/opengl/scene/GlScene;->projectionMatrix:[F

    return-object v0
.end method

.method public final getViewMatrix()[F
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/otaliastudios/opengl/scene/GlScene;->viewMatrix:[F

    return-object v0
.end method
