.class public final Lcom/otaliastudios/opengl/extensions/BuffersKt;
.super Ljava/lang/Object;
.source "Buffers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0014\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0017\n\u0002\u0010\n\n\u0002\u0008\u0002\u001a\u0016\u0010\u0000\u001a\u00060\u0001j\u0002`\u00022\n\u0010\u0003\u001a\u00020\u0004\"\u00020\u0005\u001a\u0014\u0010\u0000\u001a\u00060\u0001j\u0002`\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u001a\u0016\u0010\u0008\u001a\u00060\tj\u0002`\n2\n\u0010\u0003\u001a\u00020\u000b\"\u00020\u000c\u001a\u0014\u0010\u0008\u001a\u00060\tj\u0002`\n2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u001a\u0016\u0010\r\u001a\u00060\u000ej\u0002`\u000f2\n\u0010\u0003\u001a\u00020\u0010\"\u00020\u0007\u001a\u0016\u0010\u0011\u001a\u00060\u0012j\u0002`\u00132\n\u0010\u0003\u001a\u00020\u0014\"\u00020\u0015\u001a\u000e\u0010\u0016\u001a\u00060\u0001j\u0002`\u0002*\u00020\u0004\u001a\u000e\u0010\u0016\u001a\u00060\tj\u0002`\n*\u00020\u000b\u001a\u000e\u0010\u0016\u001a\u00060\u000ej\u0002`\u000f*\u00020\u0010\u001a\u000e\u0010\u0016\u001a\u00060\u0012j\u0002`\u0013*\u00020\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "byteBufferOf",
        "Ljava/nio/ByteBuffer;",
        "Lcom/otaliastudios/opengl/types/ByteBuffer;",
        "elements",
        "",
        "",
        "size",
        "",
        "floatBufferOf",
        "Ljava/nio/FloatBuffer;",
        "Lcom/otaliastudios/opengl/types/FloatBuffer;",
        "",
        "",
        "intBufferOf",
        "Ljava/nio/IntBuffer;",
        "Lcom/otaliastudios/opengl/types/IntBuffer;",
        "",
        "shortBufferOf",
        "Ljava/nio/ShortBuffer;",
        "Lcom/otaliastudios/opengl/types/ShortBuffer;",
        "",
        "",
        "toBuffer",
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
.method public static final byteBufferOf(I)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Do not use this."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "ByteBuffer(size)"
            imports = {}
        .end subannotation
    .end annotation

    .line 52
    invoke-static {p0}, Lcom/otaliastudios/opengl/types/BuffersJvmKt;->byteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs byteBufferOf([B)Ljava/nio/ByteBuffer;
    .locals 1

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0}, Lcom/otaliastudios/opengl/extensions/BuffersKt;->toBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static final floatBufferOf(I)Ljava/nio/FloatBuffer;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Do not use this."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "FloatBuffer(size)"
            imports = {}
        .end subannotation
    .end annotation

    .line 49
    invoke-static {p0}, Lcom/otaliastudios/opengl/types/BuffersJvmKt;->floatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs floatBufferOf([F)Ljava/nio/FloatBuffer;
    .locals 1

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    invoke-static {p0}, Lcom/otaliastudios/opengl/extensions/BuffersKt;->toBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs intBufferOf([I)Ljava/nio/IntBuffer;
    .locals 1

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    invoke-static {p0}, Lcom/otaliastudios/opengl/extensions/BuffersKt;->toBuffer([I)Ljava/nio/IntBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs shortBufferOf([S)Ljava/nio/ShortBuffer;
    .locals 1

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p0

    invoke-static {p0}, Lcom/otaliastudios/opengl/extensions/BuffersKt;->toBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static final toBuffer([B)Ljava/nio/ByteBuffer;
    .locals 1

    const-string v0, "$this$toBuffer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    array-length v0, p0

    invoke-static {v0}, Lcom/otaliastudios/opengl/types/BuffersJvmKt;->byteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 28
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 29
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static final toBuffer([F)Ljava/nio/FloatBuffer;
    .locals 1

    const-string v0, "$this$toBuffer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    array-length v0, p0

    invoke-static {v0}, Lcom/otaliastudios/opengl/types/BuffersJvmKt;->floatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 14
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static final toBuffer([I)Ljava/nio/IntBuffer;
    .locals 1

    const-string v0, "$this$toBuffer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    array-length v0, p0

    invoke-static {v0}, Lcom/otaliastudios/opengl/types/BuffersJvmKt;->intBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 23
    invoke-virtual {v0, p0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 24
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static final toBuffer([S)Ljava/nio/ShortBuffer;
    .locals 1

    const-string v0, "$this$toBuffer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    array-length v0, p0

    invoke-static {v0}, Lcom/otaliastudios/opengl/types/BuffersJvmKt;->shortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 19
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method
