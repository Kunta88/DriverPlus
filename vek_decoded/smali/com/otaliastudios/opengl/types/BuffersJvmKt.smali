.class public final Lcom/otaliastudios/opengl/types/BuffersJvmKt;
.super Ljava/lang/Object;
.source "buffers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nbuffers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 buffers.kt\ncom/otaliastudios/opengl/types/BuffersJvmKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,21:1\n1#2:22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a\u0012\u0010\u0000\u001a\u00060\u0001j\u0002`\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0005\u001a\u00060\u0006j\u0002`\u00072\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0008\u001a\u00060\tj\u0002`\n2\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u000b\u001a\u00060\u000cj\u0002`\r2\u0006\u0010\u0003\u001a\u00020\u0004*\n\u0010\u000e\"\u00020\u000f2\u00020\u000f*\n\u0010\u0010\"\u00020\u00012\u00020\u0001*\n\u0010\u0011\"\u00020\u00062\u00020\u0006*\n\u0010\u0012\"\u00020\t2\u00020\t*\n\u0010\u0013\"\u00020\u000c2\u00020\u000c\u00a8\u0006\u0014"
    }
    d2 = {
        "byteBuffer",
        "Ljava/nio/ByteBuffer;",
        "Lcom/otaliastudios/opengl/types/ByteBuffer;",
        "size",
        "",
        "floatBuffer",
        "Ljava/nio/FloatBuffer;",
        "Lcom/otaliastudios/opengl/types/FloatBuffer;",
        "intBuffer",
        "Ljava/nio/IntBuffer;",
        "Lcom/otaliastudios/opengl/types/IntBuffer;",
        "shortBuffer",
        "Ljava/nio/ShortBuffer;",
        "Lcom/otaliastudios/opengl/types/ShortBuffer;",
        "Buffer",
        "Ljava/nio/Buffer;",
        "ByteBuffer",
        "FloatBuffer",
        "IntBuffer",
        "ShortBuffer",
        "egloo-metadata_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public static final byteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    mul-int/lit8 p0, p0, 0x1

    .line 14
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 15
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const-string v0, "ByteBuffer\n        .allo\u2026it.limit(it.capacity()) }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final floatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 1

    mul-int/lit8 p0, p0, 0x4

    .line 19
    invoke-static {p0}, Lcom/otaliastudios/opengl/types/BuffersJvmKt;->byteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    const-string v0, "byteBuffer(size * Egloo.\u2026OF_FLOAT).asFloatBuffer()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final intBuffer(I)Ljava/nio/IntBuffer;
    .locals 1

    mul-int/lit8 p0, p0, 0x4

    .line 20
    invoke-static {p0}, Lcom/otaliastudios/opengl/types/BuffersJvmKt;->byteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    const-string v0, "byteBuffer(size * Egloo.SIZE_OF_INT).asIntBuffer()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final shortBuffer(I)Ljava/nio/ShortBuffer;
    .locals 1

    mul-int/lit8 p0, p0, 0x2

    .line 18
    invoke-static {p0}, Lcom/otaliastudios/opengl/types/BuffersJvmKt;->byteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p0

    const-string v0, "byteBuffer(size * Egloo.\u2026OF_SHORT).asShortBuffer()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
