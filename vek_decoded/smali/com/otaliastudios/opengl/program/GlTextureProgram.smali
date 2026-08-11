.class public Lcom/otaliastudios/opengl/program/GlTextureProgram;
.super Lcom/otaliastudios/opengl/program/GlProgram;
.source "GlTextureProgram.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/program/GlTextureProgram$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlTextureProgram.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlTextureProgram.kt\ncom/otaliastudios/opengl/program/GlTextureProgram\n+ 2 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,211:1\n102#2:212\n102#2:213\n93#2:214\n98#2:215\n93#2:216\n98#2:217\n94#2:218\n94#2:219\n1#3:220\n*E\n*S KotlinDebug\n*F\n+ 1 GlTextureProgram.kt\ncom/otaliastudios/opengl/program/GlTextureProgram\n*L\n95#1:212\n101#1:213\n107#1:214\n109#1:215\n145#1:216\n147#1:217\n171#1:218\n174#1:219\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 82\u00020\u0001:\u00018BG\u0008\u0017\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\tB;\u0008\u0017\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u000cB;\u0008\u0004\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u000fJ8\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u00112\u0006\u0010.\u001a\u00020+2\u0006\u0010/\u001a\u00020+2\u0006\u00100\u001a\u00020+2\u0006\u00101\u001a\u00020\u000eH\u0014J\u0010\u00102\u001a\u0002032\u0006\u0010-\u001a\u000204H\u0016J\u0018\u00105\u001a\u0002032\u0006\u0010-\u001a\u0002042\u0006\u00106\u001a\u00020\"H\u0016J\u0008\u00107\u001a\u000203H\u0016R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00060\u0013j\u0002`\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u0012\u0010\u001c\u001a\u00060\u001dj\u0002`\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010!\u001a\u00020\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u0010\u0010\'\u001a\u0004\u0018\u00010 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00069"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/program/GlTextureProgram;",
        "Lcom/otaliastudios/opengl/program/GlProgram;",
        "vertexShader",
        "",
        "fragmentShader",
        "vertexPositionName",
        "vertexMvpMatrixName",
        "textureCoordsName",
        "textureTransformName",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "handle",
        "",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "ownsHandle",
        "",
        "(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "lastDrawable",
        "Lcom/otaliastudios/opengl/draw/Gl2dDrawable;",
        "lastDrawableBounds",
        "Landroid/graphics/RectF;",
        "Lcom/otaliastudios/opengl/geometry/RectF;",
        "lastDrawableVersion",
        "texture",
        "Lcom/otaliastudios/opengl/texture/GlTexture;",
        "getTexture",
        "()Lcom/otaliastudios/opengl/texture/GlTexture;",
        "setTexture",
        "(Lcom/otaliastudios/opengl/texture/GlTexture;)V",
        "textureCoordsBuffer",
        "Ljava/nio/FloatBuffer;",
        "Lcom/otaliastudios/opengl/types/FloatBuffer;",
        "textureCoordsHandle",
        "Lcom/otaliastudios/opengl/program/GlProgramLocation;",
        "textureTransform",
        "",
        "getTextureTransform",
        "()[F",
        "setTextureTransform",
        "([F)V",
        "textureTransformHandle",
        "vertexMvpMatrixHandle",
        "vertexPositionHandle",
        "computeTextureCoordinate",
        "",
        "vertex",
        "drawable",
        "value",
        "min",
        "max",
        "horizontal",
        "onPostDraw",
        "",
        "Lcom/otaliastudios/opengl/draw/GlDrawable;",
        "onPreDraw",
        "modelViewProjectionMatrix",
        "release",
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
.field public static final Companion:Lcom/otaliastudios/opengl/program/GlTextureProgram$Companion;

.field public static final SIMPLE_FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field public static final SIMPLE_VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"


# instance fields
.field private lastDrawable:Lcom/otaliastudios/opengl/draw/Gl2dDrawable;

.field private final lastDrawableBounds:Landroid/graphics/RectF;

.field private lastDrawableVersion:I

.field private texture:Lcom/otaliastudios/opengl/texture/GlTexture;

.field private textureCoordsBuffer:Ljava/nio/FloatBuffer;

.field private final textureCoordsHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

.field private textureTransform:[F

.field private final textureTransformHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

.field private final vertexMvpMatrixHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

.field private final vertexPositionHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/program/GlTextureProgram$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/program/GlTextureProgram$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->Companion:Lcom/otaliastudios/opengl/program/GlTextureProgram$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/otaliastudios/opengl/program/GlTextureProgram;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/otaliastudios/opengl/program/GlTextureProgram;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/otaliastudios/opengl/program/GlTextureProgram;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/otaliastudios/opengl/program/GlTextureProgram;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/otaliastudios/opengl/program/GlTextureProgram;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "vertexPositionName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vertexMvpMatrixName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 57
    invoke-direct/range {v1 .. v7}, Lcom/otaliastudios/opengl/program/GlTextureProgram;-><init>(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const-string p2, "aPosition"

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const-string p3, "uMVPMatrix"

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const-string p4, "aTextureCoord"

    :cond_2
    move-object v4, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const-string p5, "uTexMatrix"

    :cond_3
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    .line 56
    invoke-direct/range {v0 .. v5}, Lcom/otaliastudios/opengl/program/GlTextureProgram;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "vertexPositionName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vertexMvpMatrixName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/otaliastudios/opengl/program/GlShader;

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/otaliastudios/opengl/program/GlProgram;-><init>(IZ[Lcom/otaliastudios/opengl/program/GlShader;)V

    .line 66
    sget-object p1, Lcom/otaliastudios/opengl/core/Egloo;->IDENTITY_MATRIX:[F

    invoke-static {p1}, Lcom/otaliastudios/opengl/internal/MiscKt;->matrixClone([F)[F

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureTransform:[F

    const/4 p1, 0x0

    if-eqz p6, :cond_0

    .line 67
    invoke-virtual {p0, p6}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->getUniformHandle(Ljava/lang/String;)Lcom/otaliastudios/opengl/program/GlProgramLocation;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureTransformHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    const/16 p2, 0x8

    .line 69
    invoke-static {p2}, Lcom/otaliastudios/opengl/types/BuffersJvmKt;->floatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureCoordsBuffer:Ljava/nio/FloatBuffer;

    if-eqz p5, :cond_1

    .line 70
    invoke-virtual {p0, p5}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->getAttribHandle(Ljava/lang/String;)Lcom/otaliastudios/opengl/program/GlProgramLocation;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureCoordsHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    .line 72
    invoke-virtual {p0, p3}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->getAttribHandle(Ljava/lang/String;)Lcom/otaliastudios/opengl/program/GlProgramLocation;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->vertexPositionHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    .line 73
    invoke-virtual {p0, p4}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->getUniformHandle(Ljava/lang/String;)Lcom/otaliastudios/opengl/program/GlProgramLocation;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->vertexMvpMatrixHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    .line 75
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->lastDrawableBounds:Landroid/graphics/RectF;

    const/4 p1, -0x1

    .line 76
    iput p1, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->lastDrawableVersion:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/otaliastudios/opengl/program/GlTextureProgram;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3c

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/otaliastudios/opengl/program/GlTextureProgram;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/otaliastudios/opengl/program/GlTextureProgram;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/otaliastudios/opengl/program/GlTextureProgram;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/otaliastudios/opengl/program/GlTextureProgram;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "vertexShader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentShader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vertexPositionName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vertexMvpMatrixName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/otaliastudios/opengl/program/GlProgram;->Companion:Lcom/otaliastudios/opengl/program/GlProgram$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/otaliastudios/opengl/program/GlProgram$Companion;->create(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 41
    invoke-direct/range {v1 .. v7}, Lcom/otaliastudios/opengl/program/GlTextureProgram;-><init>(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const-string p1, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    const-string p2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    const-string p3, "aPosition"

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    const-string p4, "uMVPMatrix"

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    const-string p5, "aTextureCoord"

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    const-string p6, "uTexMatrix"

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    .line 40
    invoke-direct/range {p2 .. p8}, Lcom/otaliastudios/opengl/program/GlTextureProgram;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected computeTextureCoordinate(ILcom/otaliastudios/opengl/draw/Gl2dDrawable;FFFZ)F
    .locals 0

    const-string p1, "drawable"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sub-float/2addr p3, p4

    sub-float/2addr p5, p4

    div-float/2addr p3, p5

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float p3, p3, p1

    const/4 p1, 0x0

    add-float/2addr p3, p1

    return p3
.end method

.method public final getTexture()Lcom/otaliastudios/opengl/texture/GlTexture;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->texture:Lcom/otaliastudios/opengl/texture/GlTexture;

    return-object v0
.end method

.method public final getTextureTransform()[F
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureTransform:[F

    return-object v0
.end method

.method public onPostDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-super {p0, p1}, Lcom/otaliastudios/opengl/program/GlProgram;->onPostDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V

    .line 170
    iget-object p1, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->vertexPositionHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    .line 171
    invoke-virtual {p1}, Lcom/otaliastudios/opengl/program/GlProgramLocation;->getUvalue-pVg5ArA$egloo_metadata_release()I

    move-result p1

    .line 218
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 173
    iget-object p1, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureCoordsHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p1}, Lcom/otaliastudios/opengl/program/GlProgramLocation;->getUvalue-pVg5ArA$egloo_metadata_release()I

    move-result p1

    .line 219
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->texture:Lcom/otaliastudios/opengl/texture/GlTexture;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/texture/GlTexture;->unbind()V

    :cond_1
    const-string p1, "onPostDraw end"

    .line 177
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public onPreDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    const-string v1, "drawable"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "modelViewProjectionMatrix"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-super/range {p0 .. p2}, Lcom/otaliastudios/opengl/program/GlProgram;->onPreDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V

    .line 87
    instance-of v1, v8, Lcom/otaliastudios/opengl/draw/Gl2dDrawable;

    if-eqz v1, :cond_9

    .line 91
    iget-object v1, v7, Lcom/otaliastudios/opengl/program/GlTextureProgram;->texture:Lcom/otaliastudios/opengl/texture/GlTexture;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/otaliastudios/opengl/texture/GlTexture;->bind()V

    .line 94
    :cond_0
    iget-object v1, v7, Lcom/otaliastudios/opengl/program/GlTextureProgram;->vertexMvpMatrixHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    .line 95
    invoke-virtual {v1}, Lcom/otaliastudios/opengl/program/GlProgramLocation;->getValue()I

    move-result v1

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 212
    invoke-static {v1, v9, v10, v0, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string v0, "glUniformMatrix4fv"

    .line 96
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 100
    iget-object v1, v7, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureTransformHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v1}, Lcom/otaliastudios/opengl/program/GlProgramLocation;->getValue()I

    move-result v1

    iget-object v2, v7, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureTransform:[F

    .line 213
    invoke-static {v1, v9, v10, v2, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 102
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 106
    :cond_1
    iget-object v0, v7, Lcom/otaliastudios/opengl/program/GlTextureProgram;->vertexPositionHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    .line 107
    invoke-virtual {v0}, Lcom/otaliastudios/opengl/program/GlProgramLocation;->getUvalue-pVg5ArA$egloo_metadata_release()I

    move-result v1

    .line 214
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v11, "glEnableVertexAttribArray"

    .line 108
    invoke-static {v11}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Lcom/otaliastudios/opengl/program/GlProgramLocation;->getUvalue-pVg5ArA$egloo_metadata_release()I

    move-result v1

    const/4 v2, 0x2

    .line 110
    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_FLOAT()I

    move-result v3

    const/4 v4, 0x0

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getVertexStride()I

    move-result v5

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/nio/Buffer;

    .line 215
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v12, "glVertexAttribPointer"

    .line 114
    invoke-static {v12}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 120
    iget-object v13, v7, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureCoordsHandle:Lcom/otaliastudios/opengl/program/GlProgramLocation;

    if-eqz v13, :cond_8

    .line 123
    iget-object v0, v7, Lcom/otaliastudios/opengl/program/GlTextureProgram;->lastDrawable:Lcom/otaliastudios/opengl/draw/Gl2dDrawable;

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v9

    if-nez v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getVertexArrayVersion()I

    move-result v0

    iget v1, v7, Lcom/otaliastudios/opengl/program/GlTextureProgram;->lastDrawableVersion:I

    if-eq v0, v1, :cond_7

    .line 124
    :cond_2
    move-object v14, v8

    check-cast v14, Lcom/otaliastudios/opengl/draw/Gl2dDrawable;

    iput-object v14, v7, Lcom/otaliastudios/opengl/program/GlTextureProgram;->lastDrawable:Lcom/otaliastudios/opengl/draw/Gl2dDrawable;

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getVertexArrayVersion()I

    move-result v0

    iput v0, v7, Lcom/otaliastudios/opengl/program/GlTextureProgram;->lastDrawableVersion:I

    .line 126
    iget-object v0, v7, Lcom/otaliastudios/opengl/program/GlTextureProgram;->lastDrawableBounds:Landroid/graphics/RectF;

    invoke-virtual {v14, v0}, Lcom/otaliastudios/opengl/draw/Gl2dDrawable;->getBounds(Landroid/graphics/RectF;)V

    .line 127
    invoke-virtual/range {p1 .. p1}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getVertexCount()I

    move-result v0

    mul-int/lit8 v15, v0, 0x2

    .line 128
    iget-object v0, v7, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureCoordsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    if-ge v0, v15, :cond_3

    .line 129
    iget-object v0, v7, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureCoordsBuffer:Ljava/nio/FloatBuffer;

    check-cast v0, Ljava/nio/Buffer;

    invoke-static {v0}, Lcom/otaliastudios/opengl/types/BuffersKt;->dispose(Ljava/nio/Buffer;)V

    .line 130
    invoke-static {v15}, Lcom/otaliastudios/opengl/types/BuffersJvmKt;->floatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, v7, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureCoordsBuffer:Ljava/nio/FloatBuffer;

    .line 132
    :cond_3
    iget-object v0, v7, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureCoordsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 133
    iget-object v0, v7, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureCoordsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v15}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v15, :cond_7

    .line 135
    rem-int/lit8 v0, v6, 0x2

    if-nez v0, :cond_4

    const/16 v16, 0x1

    goto :goto_1

    :cond_4
    const/16 v16, 0x0

    .line 136
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    .line 137
    iget-object v0, v7, Lcom/otaliastudios/opengl/program/GlTextureProgram;->lastDrawableBounds:Landroid/graphics/RectF;

    if-eqz v16, :cond_5

    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_2

    :cond_5
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    :goto_2
    move v4, v0

    .line 138
    iget-object v0, v7, Lcom/otaliastudios/opengl/program/GlTextureProgram;->lastDrawableBounds:Landroid/graphics/RectF;

    if-eqz v16, :cond_6

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_3

    :cond_6
    iget v0, v0, Landroid/graphics/RectF;->top:F

    :goto_3
    move v5, v0

    .line 139
    div-int/lit8 v1, v6, 0x2

    move-object/from16 v0, p0

    move-object v2, v14

    move/from16 v17, v6

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/otaliastudios/opengl/program/GlTextureProgram;->computeTextureCoordinate(ILcom/otaliastudios/opengl/draw/Gl2dDrawable;FFFZ)F

    move-result v0

    .line 140
    iget-object v1, v7, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureCoordsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v6, v17, 0x1

    goto :goto_0

    .line 143
    :cond_7
    iget-object v0, v7, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureCoordsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 145
    invoke-virtual {v13}, Lcom/otaliastudios/opengl/program/GlProgramLocation;->getUvalue-pVg5ArA$egloo_metadata_release()I

    move-result v0

    .line 216
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 146
    invoke-static {v11}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v13}, Lcom/otaliastudios/opengl/program/GlProgramLocation;->getUvalue-pVg5ArA$egloo_metadata_release()I

    move-result v1

    const/4 v2, 0x2

    .line 148
    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_FLOAT()I

    move-result v3

    const/4 v4, 0x0

    .line 150
    invoke-virtual/range {p1 .. p1}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getVertexStride()I

    move-result v5

    .line 151
    iget-object v0, v7, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureCoordsBuffer:Ljava/nio/FloatBuffer;

    move-object v6, v0

    check-cast v6, Ljava/nio/Buffer;

    .line 217
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 152
    invoke-static {v12}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    :cond_8
    return-void

    .line 88
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GlTextureProgram only supports 2D drawables."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public release()V
    .locals 1

    .line 181
    invoke-super {p0}, Lcom/otaliastudios/opengl/program/GlProgram;->release()V

    .line 182
    iget-object v0, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureCoordsBuffer:Ljava/nio/FloatBuffer;

    check-cast v0, Ljava/nio/Buffer;

    invoke-static {v0}, Lcom/otaliastudios/opengl/types/BuffersKt;->dispose(Ljava/nio/Buffer;)V

    .line 183
    iget-object v0, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->texture:Lcom/otaliastudios/opengl/texture/GlTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/texture/GlTexture;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 184
    check-cast v0, Lcom/otaliastudios/opengl/texture/GlTexture;

    iput-object v0, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->texture:Lcom/otaliastudios/opengl/texture/GlTexture;

    return-void
.end method

.method public final setTexture(Lcom/otaliastudios/opengl/texture/GlTexture;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->texture:Lcom/otaliastudios/opengl/texture/GlTexture;

    return-void
.end method

.method public final setTextureTransform([F)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureTransform:[F

    return-void
.end method
