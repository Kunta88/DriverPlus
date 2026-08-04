.class public final Lcom/otaliastudios/opengl/texture/GlFramebuffer;
.super Ljava/lang/Object;
.source "GlFramebuffer.kt"

# interfaces
.implements Lcom/otaliastudios/opengl/core/GlBindable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlFramebuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlFramebuffer.kt\ncom/otaliastudios/opengl/texture/GlFramebuffer\n+ 2 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n*L\n1#1,43:1\n61#2:44\n61#2:45\n58#2:46\n114#2,3:47\n59#2,2:50\n117#2,4:52\n55#2:56\n114#2,3:57\n56#2,2:60\n117#2,4:62\n*E\n*S KotlinDebug\n*F\n+ 1 GlFramebuffer.kt\ncom/otaliastudios/opengl/texture/GlFramebuffer\n*L\n33#1:44\n37#1:45\n41#1:46\n41#1,3:47\n41#1,2:50\n41#1,4:52\n15#1:56\n15#1,3:57\n15#1,2:60\n15#1,4:62\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003H\u0007J\u0008\u0010\u000c\u001a\u00020\u0008H\u0016J\u0006\u0010\r\u001a\u00020\u0008J\u0008\u0010\u000e\u001a\u00020\u0008H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/texture/GlFramebuffer;",
        "Lcom/otaliastudios/opengl/core/GlBindable;",
        "id",
        "",
        "(Ljava/lang/Integer;)V",
        "getId",
        "()I",
        "attach",
        "",
        "texture",
        "Lcom/otaliastudios/opengl/texture/GlTexture;",
        "attachment",
        "bind",
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


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/otaliastudios/opengl/texture/GlFramebuffer;-><init>(Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 6

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_0
    move-object p1, p0

    check-cast p1, Lcom/otaliastudios/opengl/texture/GlFramebuffer;

    const/4 p1, 0x1

    .line 14
    invoke-static {p1}, Lkotlin/UIntArray;->constructor-impl(I)[I

    move-result-object v0

    .line 58
    invoke-static {v0}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    invoke-static {v0, v4}, Lkotlin/UIntArray;->get-pVg5ArA([II)I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {p1, v2, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 61
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    .line 63
    aget v4, v2, v1

    invoke-static {v4}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v4

    invoke-static {v0, v1, v4}, Lkotlin/UIntArray;->set-VXSXFK8([III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string p1, "glGenFramebuffers"

    .line 16
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 17
    invoke-static {v0, v3}, Lkotlin/UIntArray;->get-pVg5ArA([II)I

    move-result p1

    .line 13
    :goto_2
    iput p1, p0, Lcom/otaliastudios/opengl/texture/GlFramebuffer;->id:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 11
    check-cast p1, Ljava/lang/Integer;

    :cond_0
    invoke-direct {p0, p1}, Lcom/otaliastudios/opengl/texture/GlFramebuffer;-><init>(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic attach$default(Lcom/otaliastudios/opengl/texture/GlFramebuffer;Lcom/otaliastudios/opengl/texture/GlTexture;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 21
    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_COLOR_ATTACHMENT0()I

    move-result p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/opengl/texture/GlFramebuffer;->attach(Lcom/otaliastudios/opengl/texture/GlTexture;I)V

    return-void
.end method


# virtual methods
.method public final attach(Lcom/otaliastudios/opengl/texture/GlTexture;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/otaliastudios/opengl/texture/GlFramebuffer;->attach$default(Lcom/otaliastudios/opengl/texture/GlFramebuffer;Lcom/otaliastudios/opengl/texture/GlTexture;IILjava/lang/Object;)V

    return-void
.end method

.method public final attach(Lcom/otaliastudios/opengl/texture/GlTexture;I)V
    .locals 1

    const-string v0, "texture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/otaliastudios/opengl/texture/GlFramebuffer$attach$1;

    invoke-direct {v0, p2, p1}, Lcom/otaliastudios/opengl/texture/GlFramebuffer$attach$1;-><init>(ILcom/otaliastudios/opengl/texture/GlTexture;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v0}, Lcom/otaliastudios/opengl/core/GlBindableKt;->use(Lcom/otaliastudios/opengl/core/GlBindable;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public bind()V
    .locals 2

    .line 33
    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_FRAMEBUFFER()I

    move-result v0

    iget v1, p0, Lcom/otaliastudios/opengl/texture/GlFramebuffer;->id:I

    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    .line 44
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public final getId()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/otaliastudios/opengl/texture/GlFramebuffer;->id:I

    return v0
.end method

.method public final release()V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 41
    iget v2, p0, Lcom/otaliastudios/opengl/texture/GlFramebuffer;->id:I

    invoke-static {v2}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 48
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

    .line 50
    :cond_0
    invoke-static {v0, v4, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 51
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-ge v3, v0, :cond_1

    .line 53
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

    .line 37
    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_FRAMEBUFFER()I

    move-result v0

    const/4 v1, 0x0

    .line 45
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method
