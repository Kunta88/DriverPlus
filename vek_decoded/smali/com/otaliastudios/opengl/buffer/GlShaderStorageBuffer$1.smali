.class final Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GlShaderStorageBuffer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer;-><init>(II)V
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
    value = "SMAP\nGlShaderStorageBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlShaderStorageBuffer.kt\ncom/otaliastudios/opengl/buffer/GlShaderStorageBuffer$1\n+ 2 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n*L\n1#1,37:1\n73#2:38\n*E\n*S KotlinDebug\n*F\n+ 1 GlShaderStorageBuffer.kt\ncom/otaliastudios/opengl/buffer/GlShaderStorageBuffer$1\n*L\n17#1:38\n*E\n"
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
.field final synthetic this$0:Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer;


# direct methods
.method constructor <init>(Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer$1;->this$0:Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 17
    iget-object v0, p0, Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer$1;->this$0:Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer;->getTarget()I

    move-result v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    iget-object v1, p0, Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer$1;->this$0:Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer;

    invoke-virtual {v1}, Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer;->getSize()I

    move-result v1

    iget-object v2, p0, Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer$1;->this$0:Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer;

    invoke-virtual {v2}, Lcom/otaliastudios/opengl/buffer/GlShaderStorageBuffer;->getUsage()I

    move-result v2

    invoke-static {v2}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v2

    const/4 v3, 0x0

    .line 38
    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    const-string v0, "glBufferData"

    .line 18
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method
