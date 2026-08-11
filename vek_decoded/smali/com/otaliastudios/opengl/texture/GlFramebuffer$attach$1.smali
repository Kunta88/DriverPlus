.class final Lcom/otaliastudios/opengl/texture/GlFramebuffer$attach$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GlFramebuffer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/opengl/texture/GlFramebuffer;->attach(Lcom/otaliastudios/opengl/texture/GlTexture;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlFramebuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlFramebuffer.kt\ncom/otaliastudios/opengl/texture/GlFramebuffer$attach$1\n+ 2 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n*L\n1#1,43:1\n64#2:44\n62#2:45\n*E\n*S KotlinDebug\n*F\n+ 1 GlFramebuffer.kt\ncom/otaliastudios/opengl/texture/GlFramebuffer$attach$1\n*L\n23#1:44\n25#1:45\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $attachment:I

.field final synthetic $texture:Lcom/otaliastudios/opengl/texture/GlTexture;


# direct methods
.method constructor <init>(ILcom/otaliastudios/opengl/texture/GlTexture;)V
    .locals 0

    iput p1, p0, Lcom/otaliastudios/opengl/texture/GlFramebuffer$attach$1;->$attachment:I

    iput-object p2, p0, Lcom/otaliastudios/opengl/texture/GlFramebuffer$attach$1;->$texture:Lcom/otaliastudios/opengl/texture/GlTexture;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/texture/GlFramebuffer$attach$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 23
    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_FRAMEBUFFER()I

    move-result v0

    iget v1, p0, Lcom/otaliastudios/opengl/texture/GlFramebuffer$attach$1;->$attachment:I

    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    .line 24
    iget-object v2, p0, Lcom/otaliastudios/opengl/texture/GlFramebuffer$attach$1;->$texture:Lcom/otaliastudios/opengl/texture/GlTexture;

    invoke-virtual {v2}, Lcom/otaliastudios/opengl/texture/GlTexture;->getTarget()I

    move-result v2

    invoke-static {v2}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v2

    iget-object v3, p0, Lcom/otaliastudios/opengl/texture/GlFramebuffer$attach$1;->$texture:Lcom/otaliastudios/opengl/texture/GlTexture;

    invoke-virtual {v3}, Lcom/otaliastudios/opengl/texture/GlTexture;->getId()I

    move-result v3

    invoke-static {v3}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v3

    const/4 v4, 0x0

    .line 44
    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 25
    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_FRAMEBUFFER()I

    move-result v0

    .line 45
    invoke-static {v0}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    .line 26
    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_FRAMEBUFFER_COMPLETE()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 27
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid framebuffer generation. Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lkotlin/UInt;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method
