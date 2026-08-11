.class public abstract Lcom/otaliastudios/opengl/core/GlViewportAware;
.super Ljava/lang/Object;
.source "GlViewportAware.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlViewportAware.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlViewportAware.kt\ncom/otaliastudios/opengl/core/GlViewportAware\n+ 2 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n*L\n1#1,34:1\n108#2:35\n*E\n*S KotlinDebug\n*F\n+ 1 GlViewportAware.kt\ncom/otaliastudios/opengl/core/GlViewportAware\n*L\n30#1:35\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0004J\u0008\u0010\u0011\u001a\u00020\u0010H\u0014J\u0016\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@DX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@DX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/core/GlViewportAware;",
        "",
        "()V",
        "viewportArray",
        "",
        "<set-?>",
        "",
        "viewportHeight",
        "getViewportHeight",
        "()I",
        "setViewportHeight",
        "(I)V",
        "viewportWidth",
        "getViewportWidth",
        "setViewportWidth",
        "ensureViewportSize",
        "",
        "onViewportSizeChanged",
        "setViewportSize",
        "width",
        "height",
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
.field private final viewportArray:[I

.field private viewportHeight:I

.field private viewportWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 8
    iput-object v0, p0, Lcom/otaliastudios/opengl/core/GlViewportAware;->viewportArray:[I

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/otaliastudios/opengl/core/GlViewportAware;->viewportWidth:I

    .line 13
    iput v0, p0, Lcom/otaliastudios/opengl/core/GlViewportAware;->viewportHeight:I

    return-void
.end method


# virtual methods
.method protected final ensureViewportSize()V
    .locals 3

    .line 29
    iget v0, p0, Lcom/otaliastudios/opengl/core/GlViewportAware;->viewportHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/otaliastudios/opengl/core/GlViewportAware;->viewportWidth:I

    if-ne v0, v1, :cond_1

    .line 30
    :cond_0
    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_VIEWPORT()I

    move-result v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    iget-object v1, p0, Lcom/otaliastudios/opengl/core/GlViewportAware;->viewportArray:[I

    const/4 v2, 0x0

    .line 35
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 31
    iget-object v0, p0, Lcom/otaliastudios/opengl/core/GlViewportAware;->viewportArray:[I

    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x3

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/otaliastudios/opengl/core/GlViewportAware;->setViewportSize(II)V

    :cond_1
    return-void
.end method

.method public final getViewportHeight()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/otaliastudios/opengl/core/GlViewportAware;->viewportHeight:I

    return v0
.end method

.method public final getViewportWidth()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/otaliastudios/opengl/core/GlViewportAware;->viewportWidth:I

    return v0
.end method

.method protected onViewportSizeChanged()V
    .locals 0

    return-void
.end method

.method protected final setViewportHeight(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/otaliastudios/opengl/core/GlViewportAware;->viewportHeight:I

    return-void
.end method

.method public final setViewportSize(II)V
    .locals 1

    .line 17
    iget v0, p0, Lcom/otaliastudios/opengl/core/GlViewportAware;->viewportWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/otaliastudios/opengl/core/GlViewportAware;->viewportHeight:I

    if-eq p2, v0, :cond_1

    .line 18
    :cond_0
    iput p1, p0, Lcom/otaliastudios/opengl/core/GlViewportAware;->viewportWidth:I

    .line 19
    iput p2, p0, Lcom/otaliastudios/opengl/core/GlViewportAware;->viewportHeight:I

    .line 20
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/core/GlViewportAware;->onViewportSizeChanged()V

    :cond_1
    return-void
.end method

.method protected final setViewportWidth(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/otaliastudios/opengl/core/GlViewportAware;->viewportWidth:I

    return-void
.end method
