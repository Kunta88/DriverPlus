.class final Lcom/otaliastudios/opengl/texture/GlTexture$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GlTexture.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/opengl/texture/GlTexture;-><init>(IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
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
    value = "SMAP\nGlTexture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlTexture.kt\ncom/otaliastudios/opengl/texture/GlTexture$1\n+ 2 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n*L\n1#1,72:1\n53#2:73\n51#2:74\n51#2:75\n50#2:76\n50#2:77\n*E\n*S KotlinDebug\n*F\n+ 1 GlTexture.kt\ncom/otaliastudios/opengl/texture/GlTexture$1\n*L\n45#1:73\n48#1:74\n49#1:75\n50#1:76\n51#1:77\n*E\n"
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
.field final synthetic $internalFormat:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/otaliastudios/opengl/texture/GlTexture;


# direct methods
.method constructor <init>(Lcom/otaliastudios/opengl/texture/GlTexture;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/opengl/texture/GlTexture$1;->this$0:Lcom/otaliastudios/opengl/texture/GlTexture;

    iput-object p2, p0, Lcom/otaliastudios/opengl/texture/GlTexture$1;->$internalFormat:Ljava/lang/Integer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/texture/GlTexture$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 10

    .line 44
    iget-object v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture$1;->this$0:Lcom/otaliastudios/opengl/texture/GlTexture;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/texture/GlTexture;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture$1;->this$0:Lcom/otaliastudios/opengl/texture/GlTexture;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/texture/GlTexture;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture$1;->this$0:Lcom/otaliastudios/opengl/texture/GlTexture;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/texture/GlTexture;->getFormat()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture$1;->$internalFormat:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture$1;->this$0:Lcom/otaliastudios/opengl/texture/GlTexture;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/texture/GlTexture;->getType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture$1;->this$0:Lcom/otaliastudios/opengl/texture/GlTexture;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/texture/GlTexture;->getTarget()I

    move-result v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture$1;->$internalFormat:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture$1;->this$0:Lcom/otaliastudios/opengl/texture/GlTexture;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/texture/GlTexture;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture$1;->this$0:Lcom/otaliastudios/opengl/texture/GlTexture;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/texture/GlTexture;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    .line 46
    iget-object v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture$1;->this$0:Lcom/otaliastudios/opengl/texture/GlTexture;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/texture/GlTexture;->getFormat()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v7

    iget-object v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture$1;->this$0:Lcom/otaliastudios/opengl/texture/GlTexture;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/texture/GlTexture;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v8

    const/4 v9, 0x0

    .line 73
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture$1;->this$0:Lcom/otaliastudios/opengl/texture/GlTexture;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/texture/GlTexture;->getTarget()I

    move-result v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_TEXTURE_MIN_FILTER()I

    move-result v1

    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_NEAREST()F

    move-result v2

    .line 74
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 49
    iget-object v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture$1;->this$0:Lcom/otaliastudios/opengl/texture/GlTexture;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/texture/GlTexture;->getTarget()I

    move-result v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_TEXTURE_MAG_FILTER()I

    move-result v1

    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_LINEAR()F

    move-result v2

    .line 75
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 50
    iget-object v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture$1;->this$0:Lcom/otaliastudios/opengl/texture/GlTexture;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/texture/GlTexture;->getTarget()I

    move-result v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_TEXTURE_WRAP_S()I

    move-result v1

    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_CLAMP_TO_EDGE()I

    move-result v2

    .line 76
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 51
    iget-object v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture$1;->this$0:Lcom/otaliastudios/opengl/texture/GlTexture;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/texture/GlTexture;->getTarget()I

    move-result v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_TEXTURE_WRAP_T()I

    move-result v1

    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_CLAMP_TO_EDGE()I

    move-result v2

    .line 77
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v0, "glTexParameter"

    .line 52
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method
