.class public Lcom/otaliastudios/opengl/buffer/GlBuffer;
.super Ljava/lang/Object;
.source "GlBuffer.kt"

# interfaces
.implements Lcom/otaliastudios/opengl/core/GlBindable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlBuffer.kt\ncom/otaliastudios/opengl/buffer/GlBuffer\n+ 2 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n*L\n1#1,31:1\n72#2:32\n72#2:33\n69#2:34\n114#2,3:35\n70#2,2:38\n117#2,4:40\n66#2:44\n114#2,3:45\n67#2,2:48\n117#2,4:50\n*E\n*S KotlinDebug\n*F\n+ 1 GlBuffer.kt\ncom/otaliastudios/opengl/buffer/GlBuffer\n*L\n21#1:32\n25#1:33\n29#1:34\n29#1,3:35\n29#1,2:38\n29#1,4:40\n15#1:44\n15#1,3:45\n15#1,2:48\n15#1,4:50\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0006\u0010\u000b\u001a\u00020\nJ\u0008\u0010\u000c\u001a\u00020\nH\u0016R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/buffer/GlBuffer;",
        "Lcom/otaliastudios/opengl/core/GlBindable;",
        "target",
        "",
        "id",
        "(ILjava/lang/Integer;)V",
        "getId",
        "()I",
        "getTarget",
        "bind",
        "",
        "release",
        "unbind",
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
.field private final id:I

.field private final target:I


# direct methods
.method public constructor <init>(ILjava/lang/Integer;)V
    .locals 5

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/otaliastudios/opengl/buffer/GlBuffer;->target:I

    if-eqz p2, :cond_0

    .line 13
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_0
    move-object p1, p0

    check-cast p1, Lcom/otaliastudios/opengl/buffer/GlBuffer;

    const/4 p1, 0x1

    .line 14
    invoke-static {p1}, Lkotlin/UIntArray;->constructor-impl(I)[I

    move-result-object p2

    .line 46
    invoke-static {p2}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-static {p2, v3}, Lkotlin/UIntArray;->get-pVg5ArA([II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    :cond_1
    invoke-static {p1, v1, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 49
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    .line 51
    aget v3, v1, v0

    invoke-static {v3}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v3

    invoke-static {p2, v0, v3}, Lkotlin/UIntArray;->set-VXSXFK8([III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string p1, "glGenBuffers"

    .line 16
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 17
    invoke-static {p2, v2}, Lkotlin/UIntArray;->get-pVg5ArA([II)I

    move-result p1

    .line 13
    :goto_2
    iput p1, p0, Lcom/otaliastudios/opengl/buffer/GlBuffer;->id:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 11
    check-cast p2, Ljava/lang/Integer;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/opengl/buffer/GlBuffer;-><init>(ILjava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 2

    .line 21
    iget v0, p0, Lcom/otaliastudios/opengl/buffer/GlBuffer;->target:I

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    iget v1, p0, Lcom/otaliastudios/opengl/buffer/GlBuffer;->id:I

    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    .line 32
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method public final getId()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/otaliastudios/opengl/buffer/GlBuffer;->id:I

    return v0
.end method

.method public final getTarget()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/otaliastudios/opengl/buffer/GlBuffer;->target:I

    return v0
.end method

.method public final release()V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 29
    iget v2, p0, Lcom/otaliastudios/opengl/buffer/GlBuffer;->id:I

    invoke-static {v2}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 36
    invoke-static {v1}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result v2

    new-array v4, v2, [I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    invoke-static {v1, v5}, Lkotlin/UIntArray;->get-pVg5ArA([II)I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v0, v4, v3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 39
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-ge v3, v0, :cond_1

    .line 41
    aget v2, v4, v3

    invoke-static {v2}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v2

    invoke-static {v1, v3, v2}, Lkotlin/UIntArray;->set-VXSXFK8([III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public unbind()V
    .locals 2

    .line 25
    iget v0, p0, Lcom/otaliastudios/opengl/buffer/GlBuffer;->target:I

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    const/4 v1, 0x0

    .line 33
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method
