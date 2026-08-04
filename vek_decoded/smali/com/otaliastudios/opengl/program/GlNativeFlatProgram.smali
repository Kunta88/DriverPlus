.class public Lcom/otaliastudios/opengl/program/GlNativeFlatProgram;
.super Lcom/otaliastudios/opengl/program/GlProgram;
.source "GlFlatProgram.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/program/GlNativeFlatProgram$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlFlatProgram.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlFlatProgram.kt\ncom/otaliastudios/opengl/program/GlNativeFlatProgram\n+ 2 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n*L\n1#1,72:1\n102#2:73\n106#2:74\n93#2:75\n98#2:76\n94#2:77\n*E\n*S KotlinDebug\n*F\n+ 1 GlFlatProgram.kt\ncom/otaliastudios/opengl/program/GlNativeFlatProgram\n*L\n32#1:73\n37#1:74\n41#1:75\n45#1:76\n52#1:77\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0007\u0008\u0000\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0004H\u0016R \u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/program/GlNativeFlatProgram;",
        "Lcom/otaliastudios/opengl/program/GlProgram;",
        "()V",
        "color",
        "",
        "getColor$annotations",
        "getColor",
        "()[F",
        "setColor",
        "([F)V",
        "fragmentColorHandle",
        "Lcom/otaliastudios/opengl/program/GlProgramLocation;",
        "vertexMvpMatrixHandle",
        "vertexPositionHandle",
        "onPostDraw",
        "",
        "drawable",
        "Lcom/otaliastudios/opengl/draw/GlDrawable;",
        "onPreDraw",
        "modelViewProjectionMatrix",
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
.field private static final Companion:Lcom/otaliastudios/opengl/program/GlNativeFlatProgram$Companion;

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n    gl_FragColor = uColor;\n}\n"

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n}\n"


# instance fields
.field private color:[F

.field private final fragmentColorHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

.field private final vertexMvpMatrixHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

.field private final vertexPositionHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/program/GlNativeFlatProgram$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/program/GlNativeFlatProgram$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/opengl/program/GlNativeFlatProgram;->Companion:Lcom/otaliastudios/opengl/program/GlNativeFlatProgram$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n}\n"

    const-string v1, "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n    gl_FragColor = uColor;\n}\n"

    .line 19
    invoke-direct {p0, v0, v1}, Lcom/otaliastudios/opengl/program/GlProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "aPosition"

    .line 21
    invoke-virtual {p0, v0}, Lcom/otaliastudios/opengl/program/GlNativeFlatProgram;->getAttribHandle(Ljava/lang/String;)Lcom/otaliastudios/opengl/program/GlProgramLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/opengl/program/GlNativeFlatProgram;->vertexPositionHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    const-string v0, "uMVPMatrix"

    .line 22
    invoke-virtual {p0, v0}, Lcom/otaliastudios/opengl/program/GlNativeFlatProgram;->getUniformHandle(Ljava/lang/String;)Lcom/otaliastudios/opengl/program/GlProgramLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/opengl/program/GlNativeFlatProgram;->vertexMvpMatrixHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    const-string v0, "uColor"

    .line 23
    invoke-virtual {p0, v0}, Lcom/otaliastudios/opengl/program/GlNativeFlatProgram;->getUniformHandle(Ljava/lang/String;)Lcom/otaliastudios/opengl/program/GlProgramLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/opengl/program/GlNativeFlatProgram;->fragmentColorHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 26
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/otaliastudios/opengl/program/GlNativeFlatProgram;->color:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic getColor$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getColor()[F
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/otaliastudios/opengl/program/GlNativeFlatProgram;->color:[F

    return-object v0
.end method

.method public onPostDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1}, Lcom/otaliastudios/opengl/program/GlProgram;->onPostDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V

    .line 52
    iget-object p1, p0, Lcom/otaliastudios/opengl/program/GlNativeFlatProgram;->vertexPositionHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/program/GlProgramLocation;->getUvalue-pVg5ArA$egloo_metadata_release()I

    move-result p1

    .line 77
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public onPreDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V
    .locals 6

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelViewProjectionMatrix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-super {p0, p1, p2}, Lcom/otaliastudios/opengl/program/GlProgram;->onPreDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V

    .line 32
    iget-object v0, p0, Lcom/otaliastudios/opengl/program/GlNativeFlatProgram;->vertexMvpMatrixHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/program/GlProgramLocation;->getValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-static {v0, v1, v2, p2, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p2, "glUniformMatrix4fv"

    .line 34
    invoke-static {p2}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/otaliastudios/opengl/program/GlNativeFlatProgram;->fragmentColorHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    invoke-virtual {p2}, Lcom/otaliastudios/opengl/program/GlProgramLocation;->getValue()I

    move-result p2

    iget-object v0, p0, Lcom/otaliastudios/opengl/program/GlNativeFlatProgram;->color:[F

    .line 74
    invoke-static {p2, v1, v0, v2}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    const-string p2, "glUniform4fv"

    .line 38
    invoke-static {p2}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Lcom/otaliastudios/opengl/program/GlNativeFlatProgram;->vertexPositionHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    invoke-virtual {p2}, Lcom/otaliastudios/opengl/program/GlProgramLocation;->getUvalue-pVg5ArA$egloo_metadata_release()I

    move-result p2

    .line 75
    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p2, "glEnableVertexAttribArray"

    .line 42
    invoke-static {p2}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/otaliastudios/opengl/program/GlNativeFlatProgram;->vertexPositionHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    invoke-virtual {p2}, Lcom/otaliastudios/opengl/program/GlProgramLocation;->getUvalue-pVg5ArA$egloo_metadata_release()I

    move-result v0

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getCoordsPerVertex()I

    move-result v1

    .line 46
    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_FLOAT()I

    move-result v2

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getVertexStride()I

    move-result v4

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/nio/Buffer;

    const/4 v3, 0x0

    .line 76
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p1, "glVertexAttribPointer"

    .line 47
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public final setColor([F)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/otaliastudios/opengl/program/GlNativeFlatProgram;->color:[F

    return-void
.end method
