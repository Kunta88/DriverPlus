.class public final Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer;
.super Lcom/otaliastudios/opengl/buffer/GlBuffer;
.source "GlShaderStorageBuffer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlShaderStorageBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlShaderStorageBuffer.kt\ncom/otaliastudios/opengl/buffer/GlShaderStorageBuffer\n+ 2 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n*L\n1#1,37:1\n74#2:38\n*E\n*S KotlinDebug\n*F\n+ 1 GlShaderStorageBuffer.kt\ncom/otaliastudios/opengl/buffer/GlShaderStorageBuffer\n*L\n27#1:38\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003J\u001c\u0010\u000c\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00032\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer;",
        "Lcom/otaliastudios/opengl/buffer/GlBuffer;",
        "size",
        "",
        "usage",
        "(II)V",
        "getSize",
        "()I",
        "getUsage",
        "bind",
        "",
        "index",
        "use",
        "block",
        "Lkotlin/Function0;",
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
.field private final size:I

.field private final usage:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 13
    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_SHADER_STORAGE_BUFFER()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/otaliastudios/opengl/buffer/GlBuffer;-><init>(ILjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer;->size:I

    iput p2, p0, Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer;->usage:I

    .line 16
    new-instance p1, Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer$1;

    invoke-direct {p1, p0}, Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer$1;-><init>(Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, p1}, Lcom/otaliastudios/opengl/core/GlBindableKt;->use(Lcom/otaliastudios/opengl/core/GlBindable;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final bind(I)V
    .locals 2

    .line 27
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer;->getTarget()I

    move-result v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer;->getId()I

    move-result v1

    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    .line 38
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES30;->glBindBufferBase(III)V

    const-string p1, "glBindBufferBase"

    .line 28
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public final getSize()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer;->size:I

    return v0
.end method

.method public final getUsage()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer;->usage:I

    return v0
.end method

.method public final use(ILkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer;->bind(I)V

    .line 34
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 35
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer;->unbind()V

    return-void
.end method
