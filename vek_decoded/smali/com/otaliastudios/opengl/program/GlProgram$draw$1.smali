.class final Lcom/otaliastudios/opengl/program/GlProgram$draw$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GlProgram.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/opengl/program/GlProgram;->draw(Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V
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
.field final synthetic $drawable:Lcom/otaliastudios/opengl/draw/GlDrawable;

.field final synthetic $modelViewProjectionMatrix:[F

.field final synthetic this$0:Lcom/otaliastudios/opengl/program/GlProgram;


# direct methods
.method constructor <init>(Lcom/otaliastudios/opengl/program/GlProgram;Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/opengl/program/GlProgram$draw$1;->this$0:Lcom/otaliastudios/opengl/program/GlProgram;

    iput-object p2, p0, Lcom/otaliastudios/opengl/program/GlProgram$draw$1;->$drawable:Lcom/otaliastudios/opengl/draw/GlDrawable;

    iput-object p3, p0, Lcom/otaliastudios/opengl/program/GlProgram$draw$1;->$modelViewProjectionMatrix:[F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/program/GlProgram$draw$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/otaliastudios/opengl/program/GlProgram$draw$1;->this$0:Lcom/otaliastudios/opengl/program/GlProgram;

    iget-object v1, p0, Lcom/otaliastudios/opengl/program/GlProgram$draw$1;->$drawable:Lcom/otaliastudios/opengl/draw/GlDrawable;

    iget-object v2, p0, Lcom/otaliastudios/opengl/program/GlProgram$draw$1;->$modelViewProjectionMatrix:[F

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/opengl/program/GlProgram;->onPreDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V

    .line 73
    iget-object v0, p0, Lcom/otaliastudios/opengl/program/GlProgram$draw$1;->this$0:Lcom/otaliastudios/opengl/program/GlProgram;

    iget-object v1, p0, Lcom/otaliastudios/opengl/program/GlProgram$draw$1;->$drawable:Lcom/otaliastudios/opengl/draw/GlDrawable;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/opengl/program/GlProgram;->onDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V

    .line 74
    iget-object v0, p0, Lcom/otaliastudios/opengl/program/GlProgram$draw$1;->this$0:Lcom/otaliastudios/opengl/program/GlProgram;

    iget-object v1, p0, Lcom/otaliastudios/opengl/program/GlProgram$draw$1;->$drawable:Lcom/otaliastudios/opengl/draw/GlDrawable;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/opengl/program/GlProgram;->onPostDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V

    return-void
.end method
