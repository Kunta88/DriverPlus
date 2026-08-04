.class public final Lcom/otaliastudios/opengl/program/GlProgram$Companion;
.super Ljava/lang/Object;
.source "GlProgram.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/opengl/program/GlProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlProgram.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlProgram.kt\ncom/otaliastudios/opengl/program/GlProgram$Companion\n+ 2 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,122:1\n84#2:123\n85#2:125\n86#2:127\n91#2:128\n89#2:129\n88#2:130\n13416#3:124\n13417#3:126\n*E\n*S KotlinDebug\n*F\n+ 1 GlProgram.kt\ncom/otaliastudios/opengl/program/GlProgram$Companion\n*L\n102#1:123\n108#1:125\n111#1:127\n113#1:128\n115#1:129\n116#1:130\n107#1:124\n107#1:126\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J!\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\u0006\"\u00020\u0007H\u0007\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/program/GlProgram$Companion;",
        "",
        "()V",
        "create",
        "",
        "shaders",
        "",
        "Lcom/otaliastudios/opengl/program/GlShader;",
        "([Lcom/otaliastudios/opengl/program/GlShader;)I",
        "vertexShaderSource",
        "",
        "fragmentShaderSource",
        "egloo-metadata_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/otaliastudios/opengl/program/GlProgram$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .annotation runtime Lkotlin/Deprecated;
        message = "Use create(GlShader) signature."
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "vertexShaderSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentShaderSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/opengl/program/GlProgram$Companion;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/otaliastudios/opengl/program/GlShader;

    new-instance v2, Lcom/otaliastudios/opengl/program/GlShader;

    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_VERTEX_SHADER()I

    move-result v3

    invoke-direct {v2, v3, p1}, Lcom/otaliastudios/opengl/program/GlShader;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    .line 97
    new-instance p1, Lcom/otaliastudios/opengl/program/GlShader;

    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_FRAGMENT_SHADER()I

    move-result v2

    invoke-direct {p1, v2, p2}, Lcom/otaliastudios/opengl/program/GlShader;-><init>(ILjava/lang/String;)V

    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 96
    invoke-virtual {v0, v1}, Lcom/otaliastudios/opengl/program/GlProgram$Companion;->create([Lcom/otaliastudios/opengl/program/GlShader;)I

    move-result p1

    return p1
.end method

.method public final varargs create([Lcom/otaliastudios/opengl/program/GlShader;)I
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "shaders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    const-string v1, "glCreateProgram"

    .line 103
    invoke-static {v1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 124
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 108
    invoke-virtual {v4}, Lcom/otaliastudios/opengl/program/GlShader;->getId()I

    move-result v4

    invoke-static {v4}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v4

    .line 125
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v4, "glAttachShader"

    .line 109
    invoke-static {v4}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    .line 113
    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_LINK_STATUS()I

    move-result v1

    .line 128
    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 114
    aget p1, p1, v2

    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_TRUE()I

    move-result v1

    if-ne p1, v1, :cond_1

    return v0

    .line 115
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not link program: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 129
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 105
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not create program"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
