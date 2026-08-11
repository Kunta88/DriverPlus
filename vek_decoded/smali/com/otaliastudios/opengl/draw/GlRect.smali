.class public Lcom/otaliastudios/opengl/draw/GlRect;
.super Lcom/otaliastudios/opengl/draw/Gl2dDrawable;
.source "GlRect.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/draw/GlRect$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlRect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlRect.kt\ncom/otaliastudios/opengl/draw/GlRect\n+ 2 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n*L\n1#1,74:1\n111#2:75\n*E\n*S KotlinDebug\n*F\n+ 1 GlRect.kt\ncom/otaliastudios/opengl/draw/GlRect\n*L\n71#1:75\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u0014\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0012\u0010\u000c\u001a\u00020\u000b2\n\u0010\r\u001a\u00060\u000ej\u0002`\u000fJ&\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0011J\u0014\u0010\u0008\u001a\u00020\u000b2\n\u0010\r\u001a\u00060\u000ej\u0002`\u000fH\u0017J\u0010\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0016H\u0017R\u001e\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/draw/GlRect;",
        "Lcom/otaliastudios/opengl/draw/Gl2dDrawable;",
        "()V",
        "vertexArray",
        "Ljava/nio/FloatBuffer;",
        "Lcom/otaliastudios/opengl/types/FloatBuffer;",
        "getVertexArray",
        "()Ljava/nio/FloatBuffer;",
        "setVertexArray",
        "(Ljava/nio/FloatBuffer;)V",
        "draw",
        "",
        "setRect",
        "rect",
        "Landroid/graphics/RectF;",
        "Lcom/otaliastudios/opengl/geometry/RectF;",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "array",
        "",
        "Companion",
        "egloo-metadata_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final Companion:Lcom/otaliastudios/opengl/draw/GlRect$Companion;

.field private static final FULL_RECTANGLE_COORDS:[F


# instance fields
.field private vertexArray:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/draw/GlRect$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/draw/GlRect$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/opengl/draw/GlRect;->Companion:Lcom/otaliastudios/opengl/draw/GlRect$Companion;

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 16
    fill-array-data v0, :array_0

    sput-object v0, Lcom/otaliastudios/opengl/draw/GlRect;->FULL_RECTANGLE_COORDS:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/otaliastudios/opengl/draw/Gl2dDrawable;-><init>()V

    .line 23
    sget-object v0, Lcom/otaliastudios/opengl/draw/GlRect;->FULL_RECTANGLE_COORDS:[F

    array-length v1, v0

    invoke-static {v1}, Lcom/otaliastudios/opengl/types/BuffersJvmKt;->floatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 24
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 25
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 26
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    iput-object v1, p0, Lcom/otaliastudios/opengl/draw/GlRect;->vertexArray:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 3

    const-string v0, "glDrawArrays start"

    .line 70
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_TRIANGLE_STRIP()I

    move-result v0

    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlRect;->getVertexCount()I

    move-result v1

    const/4 v2, 0x0

    .line 75
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "glDrawArrays end"

    .line 72
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public getVertexArray()Ljava/nio/FloatBuffer;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/otaliastudios/opengl/draw/GlRect;->vertexArray:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public final setRect(FFFF)V
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlRect;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 54
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlRect;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 55
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlRect;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 57
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlRect;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 58
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlRect;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 60
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlRect;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 61
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlRect;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 63
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlRect;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 64
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlRect;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 65
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlRect;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 66
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlRect;->notifyVertexArrayChange()V

    return-void
.end method

.method public final setRect(Landroid/graphics/RectF;)V
    .locals 3

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/otaliastudios/opengl/draw/GlRect;->setRect(FFFF)V

    return-void
.end method

.method public setVertexArray(Landroid/graphics/RectF;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use setRect"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "setRect(rect)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/otaliastudios/opengl/draw/GlRect;->setRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setVertexArray(Ljava/nio/FloatBuffer;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/otaliastudios/opengl/draw/GlRect;->vertexArray:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public setVertexArray([F)V
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        message = "Use setRect"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "setRect(rect)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    array-length v0, p1

    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlRect;->getCoordsPerVertex()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlRect;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 35
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlRect;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 36
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlRect;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 37
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlRect;->notifyVertexArrayChange()V

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Vertex array should have 8 values."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
