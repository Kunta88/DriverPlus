.class public Lcom/otaliastudios/opengl/program/GlProgram;
.super Ljava/lang/Object;
.source "GlProgram.kt"

# interfaces
.implements Lcom/otaliastudios/opengl/core/GlBindable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/program/GlProgram$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlProgram.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlProgram.kt\ncom/otaliastudios/opengl/program/GlProgram\n+ 2 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,122:1\n88#2:123\n87#2:126\n87#2:127\n13416#3,2:124\n*E\n*S KotlinDebug\n*F\n+ 1 GlProgram.kt\ncom/otaliastudios/opengl/program/GlProgram\n*L\n49#1:123\n56#1:126\n61#1:127\n50#1,2:124\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0016\u0018\u0000 $2\u00020\u0001:\u0001$B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0017\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008B\u001b\u0008\u0016\u0012\u0012\u0010\t\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000b0\n\"\u00020\u000b\u00a2\u0006\u0002\u0010\u000cB+\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0012\u0010\t\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000b0\n\"\u00020\u000b\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u001a\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001aH\u0007J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0006H\u0004J\u0010\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0006H\u0004J\u0010\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010 \u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010!\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\"\u001a\u00020\u0015H\u0016J\u0008\u0010#\u001a\u00020\u0015H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0013\u00a8\u0006%"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/program/GlProgram;",
        "Lcom/otaliastudios/opengl/core/GlBindable;",
        "handle",
        "",
        "(I)V",
        "vertexShader",
        "",
        "fragmentShader",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "shaders",
        "",
        "Lcom/otaliastudios/opengl/program/GlShader;",
        "([Lcom/otaliastudios/opengl/program/GlShader;)V",
        "ownsHandle",
        "",
        "(IZ[Lcom/otaliastudios/opengl/program/GlShader;)V",
        "getHandle",
        "()I",
        "isReleased",
        "[Lcom/otaliastudios/opengl/program/GlShader;",
        "bind",
        "",
        "draw",
        "drawable",
        "Lcom/otaliastudios/opengl/draw/GlDrawable;",
        "modelViewProjectionMatrix",
        "",
        "getAttribHandle",
        "Lcom/otaliastudios/opengl/program/GlProgramLocation;",
        "name",
        "getUniformHandle",
        "onDraw",
        "onPostDraw",
        "onPreDraw",
        "release",
        "unbind",
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
.field public static final Companion:Lcom/otaliastudios/opengl/program/GlProgram$Companion;


# instance fields
.field private final handle:I

.field private isReleased:Z

.field private final ownsHandle:Z

.field private final shaders:[Lcom/otaliastudios/opengl/program/GlShader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/program/GlProgram$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/program/GlProgram$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/opengl/program/GlProgram;->Companion:Lcom/otaliastudios/opengl/program/GlProgram$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/otaliastudios/opengl/program/GlShader;

    .line 35
    invoke-direct {p0, p1, v0, v1}, Lcom/otaliastudios/opengl/program/GlProgram;-><init>(IZ[Lcom/otaliastudios/opengl/program/GlShader;)V

    return-void
.end method

.method protected varargs constructor <init>(IZ[Lcom/otaliastudios/opengl/program/GlShader;)V
    .locals 1

    const-string v0, "shaders"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/otaliastudios/opengl/program/GlProgram;->handle:I

    iput-boolean p2, p0, Lcom/otaliastudios/opengl/program/GlProgram;->ownsHandle:Z

    iput-object p3, p0, Lcom/otaliastudios/opengl/program/GlProgram;->shaders:[Lcom/otaliastudios/opengl/program/GlShader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "vertexShader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentShader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/otaliastudios/opengl/program/GlShader;

    .line 38
    new-instance v1, Lcom/otaliastudios/opengl/program/GlShader;

    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_VERTEX_SHADER()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/otaliastudios/opengl/program/GlShader;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    .line 39
    new-instance p1, Lcom/otaliastudios/opengl/program/GlShader;

    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_FRAGMENT_SHADER()I

    move-result v1

    invoke-direct {p1, v1, p2}, Lcom/otaliastudios/opengl/program/GlShader;-><init>(ILjava/lang/String;)V

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 37
    invoke-direct {p0, v0}, Lcom/otaliastudios/opengl/program/GlProgram;-><init>([Lcom/otaliastudios/opengl/program/GlShader;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/otaliastudios/opengl/program/GlShader;)V
    .locals 2

    const-string v0, "shaders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/otaliastudios/opengl/program/GlProgram;->Companion:Lcom/otaliastudios/opengl/program/GlProgram$Companion;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/otaliastudios/opengl/program/GlShader;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/opengl/program/GlProgram$Companion;->create([Lcom/otaliastudios/opengl/program/GlShader;)I

    move-result v0

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/otaliastudios/opengl/program/GlShader;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/otaliastudios/opengl/program/GlProgram;-><init>(IZ[Lcom/otaliastudios/opengl/program/GlShader;)V

    return-void
.end method

.method public static final create(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use create(GlShader) signature."
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/otaliastudios/opengl/program/GlProgram;->Companion:Lcom/otaliastudios/opengl/program/GlProgram$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/otaliastudios/opengl/program/GlProgram$Companion;->create(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final varargs create([Lcom/otaliastudios/opengl/program/GlShader;)I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/otaliastudios/opengl/program/GlProgram;->Companion:Lcom/otaliastudios/opengl/program/GlProgram$Companion;

    invoke-virtual {v0, p0}, Lcom/otaliastudios/opengl/program/GlProgram$Companion;->create([Lcom/otaliastudios/opengl/program/GlShader;)I

    move-result p0

    return p0
.end method

.method public static synthetic draw$default(Lcom/otaliastudios/opengl/program/GlProgram;Lcom/otaliastudios/opengl/draw/GlDrawable;[FILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getModelMatrix()[F

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/opengl/program/GlProgram;->draw(Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: draw"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bind()V
    .locals 1

    .line 56
    iget v0, p0, Lcom/otaliastudios/opengl/program/GlProgram;->handle:I

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    .line 126
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v0, "glUseProgram"

    .line 57
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public final draw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/otaliastudios/opengl/program/GlProgram;->draw$default(Lcom/otaliastudios/opengl/program/GlProgram;Lcom/otaliastudios/opengl/draw/GlDrawable;[FILjava/lang/Object;)V

    return-void
.end method

.method public final draw(Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelViewProjectionMatrix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draw start"

    .line 70
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/otaliastudios/opengl/program/GlProgram$draw$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/otaliastudios/opengl/program/GlProgram$draw$1;-><init>(Lcom/otaliastudios/opengl/program/GlProgram;Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v0}, Lcom/otaliastudios/opengl/core/GlBindableKt;->use(Lcom/otaliastudios/opengl/core/GlBindable;Lkotlin/jvm/functions/Function0;)V

    const-string p1, "draw end"

    .line 76
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method protected final getAttribHandle(Ljava/lang/String;)Lcom/otaliastudios/opengl/program/GlProgramLocation;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/otaliastudios/opengl/program/GlProgramLocation;->Companion:Lcom/otaliastudios/opengl/program/GlProgramLocation$Companion;

    iget v1, p0, Lcom/otaliastudios/opengl/program/GlProgram;->handle:I

    invoke-virtual {v0, v1, p1}, Lcom/otaliastudios/opengl/program/GlProgramLocation$Companion;->getAttrib(ILjava/lang/String;)Lcom/otaliastudios/opengl/program/GlProgramLocation;

    move-result-object p1

    return-object p1
.end method

.method public final getHandle()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/otaliastudios/opengl/program/GlProgram;->handle:I

    return v0
.end method

.method protected final getUniformHandle(Ljava/lang/String;)Lcom/otaliastudios/opengl/program/GlProgramLocation;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/otaliastudios/opengl/program/GlProgramLocation;->Companion:Lcom/otaliastudios/opengl/program/GlProgramLocation$Companion;

    iget v1, p0, Lcom/otaliastudios/opengl/program/GlProgram;->handle:I

    invoke-virtual {v0, v1, p1}, Lcom/otaliastudios/opengl/program/GlProgramLocation$Companion;->getUniform(ILjava/lang/String;)Lcom/otaliastudios/opengl/program/GlProgramLocation;

    move-result-object p1

    return-object p1
.end method

.method public onDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/otaliastudios/opengl/draw/GlDrawable;->draw()V

    return-void
.end method

.method public onPostDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPreDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "modelViewProjectionMatrix"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 4

    .line 48
    iget-boolean v0, p0, Lcom/otaliastudios/opengl/program/GlProgram;->isReleased:Z

    if-nez v0, :cond_2

    .line 49
    iget-boolean v0, p0, Lcom/otaliastudios/opengl/program/GlProgram;->ownsHandle:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/otaliastudios/opengl/program/GlProgram;->handle:I

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    .line 123
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/opengl/program/GlProgram;->shaders:[Lcom/otaliastudios/opengl/program/GlShader;

    .line 124
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 50
    invoke-virtual {v3}, Lcom/otaliastudios/opengl/program/GlShader;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/otaliastudios/opengl/program/GlProgram;->isReleased:Z

    :cond_2
    return-void
.end method

.method public unbind()V
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method
