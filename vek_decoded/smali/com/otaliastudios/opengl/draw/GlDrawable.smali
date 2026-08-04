.class public abstract Lcom/otaliastudios/opengl/draw/GlDrawable;
.super Lcom/otaliastudios/opengl/core/GlViewportAware;
.source "GlDrawable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH&J\u0008\u0010\u001b\u001a\u00020\u001aH\u0004J\u0008\u0010\u001c\u001a\u00020\u001aH\u0016R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u00060\u000cj\u0002`\rX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0006R\u0014\u0010\u0015\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0006R\u0014\u0010\u0017\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0006\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/draw/GlDrawable;",
        "Lcom/otaliastudios/opengl/core/GlViewportAware;",
        "()V",
        "coordsPerVertex",
        "",
        "getCoordsPerVertex",
        "()I",
        "modelMatrix",
        "",
        "getModelMatrix",
        "()[F",
        "vertexArray",
        "Ljava/nio/FloatBuffer;",
        "Lcom/otaliastudios/opengl/types/FloatBuffer;",
        "getVertexArray",
        "()Ljava/nio/FloatBuffer;",
        "setVertexArray",
        "(Ljava/nio/FloatBuffer;)V",
        "<set-?>",
        "vertexArrayVersion",
        "getVertexArrayVersion",
        "vertexCount",
        "getVertexCount",
        "vertexStride",
        "getVertexStride",
        "draw",
        "",
        "notifyVertexArrayChange",
        "release",
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
.field private final modelMatrix:[F

.field private vertexArrayVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/otaliastudios/opengl/core/GlViewportAware;-><init>()V

    .line 16
    sget-object v0, Lcom/otaliastudios/opengl/core/Egloo;->IDENTITY_MATRIX:[F

    invoke-static {v0}, Lcom/otaliastudios/opengl/internal/MiscKt;->matrixClone([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/opengl/draw/GlDrawable;->modelMatrix:[F

    return-void
.end method


# virtual methods
.method public abstract draw()V
.end method

.method public abstract getCoordsPerVertex()I
.end method

.method public final getModelMatrix()[F
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/otaliastudios/opengl/draw/GlDrawable;->modelMatrix:[F

    return-object v0
.end method

.method public abstract getVertexArray()Ljava/nio/FloatBuffer;
.end method

.method public final getVertexArrayVersion()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/otaliastudios/opengl/draw/GlDrawable;->vertexArrayVersion:I

    return v0
.end method

.method public getVertexCount()I
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getCoordsPerVertex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public getVertexStride()I
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getCoordsPerVertex()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected final notifyVertexArrayChange()V
    .locals 1

    .line 53
    iget v0, p0, Lcom/otaliastudios/opengl/draw/GlDrawable;->vertexArrayVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/otaliastudios/opengl/draw/GlDrawable;->vertexArrayVersion:I

    return-void
.end method

.method public release()V
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v0

    check-cast v0, Ljava/nio/Buffer;

    invoke-static {v0}, Lcom/otaliastudios/opengl/types/BuffersKt;->dispose(Ljava/nio/Buffer;)V

    return-void
.end method

.method public abstract setVertexArray(Ljava/nio/FloatBuffer;)V
.end method
