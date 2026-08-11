.class public final Lcom/otaliastudios/opengl/internal/EglKt;
.super Ljava/lang/Object;
.source "egl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\negl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 egl.kt\ncom/otaliastudios/opengl/internal/EglKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1799#2:69\n1800#2:71\n1#3:70\n*E\n*S KotlinDebug\n*F\n+ 1 egl.kt\ncom/otaliastudios/opengl/internal/EglKt\n*L\n39#1:69\n39#1:71\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0000\n\u0002\u0008\u0011\n\u0002\u0010\t\n\u0002\u0008\u0007\u001a>\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u00152\u0006\u00103\u001a\u0002042\u000e\u00105\u001a\n\u0012\u0006\u0012\u0004\u0018\u000107062\u0006\u00108\u001a\u00020\u00012\u0006\u00109\u001a\u000204H\u0080\u0008\u00a2\u0006\u0002\u0010:\u001a)\u0010;\u001a\u00020\u00112\u0006\u00102\u001a\u00020\u00152\u0006\u0010<\u001a\u0002072\u0006\u0010=\u001a\u00020\u00112\u0006\u00103\u001a\u000204H\u0080\u0008\u001a!\u0010>\u001a\u00020\u00192\u0006\u00102\u001a\u00020\u00152\u0006\u0010<\u001a\u0002072\u0006\u00103\u001a\u000204H\u0080\u0008\u001a)\u0010?\u001a\u00020\u00192\u0006\u00102\u001a\u00020\u00152\u0006\u0010<\u001a\u0002072\u0006\u0010@\u001a\u00020A2\u0006\u00103\u001a\u000204H\u0080\u0008\u001a\u0019\u0010B\u001a\u0002012\u0006\u00102\u001a\u00020\u00152\u0006\u0010C\u001a\u00020\u0011H\u0080\u0008\u001a\u0019\u0010D\u001a\u0002012\u0006\u00102\u001a\u00020\u00152\u0006\u0010@\u001a\u00020\u0019H\u0080\u0008\u001a\t\u0010E\u001a\u00020\u0011H\u0080\u0008\u001a\t\u0010F\u001a\u00020\u0015H\u0080\u0008\u001a\u0011\u0010G\u001a\u00020\u00192\u0006\u0010H\u001a\u00020\u0001H\u0080\u0008\u001a\t\u0010I\u001a\u00020\u0015H\u0080\u0008\u001a\t\u0010J\u001a\u00020\u0001H\u0080\u0008\u001a!\u0010K\u001a\u0002012\u0006\u00102\u001a\u00020\u00152\u0006\u0010L\u001a\u0002042\u0006\u0010M\u001a\u000204H\u0080\u0008\u001a)\u0010N\u001a\u0002012\u0006\u00102\u001a\u00020\u00152\u0006\u0010O\u001a\u00020\u00192\u0006\u0010P\u001a\u00020\u00192\u0006\u0010C\u001a\u00020\u0011H\u0080\u0008\u001a!\u0010Q\u001a\u0002012\u0006\u00102\u001a\u00020\u00152\u0006\u0010@\u001a\u00020\u00192\u0006\u0010R\u001a\u00020SH\u0080\u0008\u001a)\u0010T\u001a\u0002012\u0006\u00102\u001a\u00020\u00152\u0006\u0010@\u001a\u00020\u00192\u0006\u0010U\u001a\u00020\u00012\u0006\u0010V\u001a\u000204H\u0080\u0008\u001a\t\u0010W\u001a\u000201H\u0080\u0008\u001a\u0019\u0010X\u001a\u0002012\u0006\u00102\u001a\u00020\u00152\u0006\u0010@\u001a\u00020\u0019H\u0080\u0008\u001a\u0011\u0010Y\u001a\u0002012\u0006\u00102\u001a\u00020\u0015H\u0080\u0008\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0003\"\u0014\u0010\u0006\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0003\"\u0014\u0010\u0008\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0003\"\u0014\u0010\n\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0003\"\u0014\u0010\u000c\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0003\"\u0014\u0010\u000e\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0003\"\u0014\u0010\u0010\u001a\u00020\u0011X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0014\u0010\u0014\u001a\u00020\u0015X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0014\u0010\u0018\u001a\u00020\u0019X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0014\u0010\u001c\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0003\"\u0014\u0010\u001e\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0003\"\u0014\u0010 \u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0003\"\u0014\u0010\"\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0003\"\u0014\u0010$\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0003\"\u0014\u0010&\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u0003\"\u0014\u0010(\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u0003\"\u0014\u0010*\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u0003\"\u0014\u0010,\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\u0003\"\u0014\u0010.\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010\u0003\u00a8\u0006Z"
    }
    d2 = {
        "EGL_ALPHA_SIZE",
        "",
        "getEGL_ALPHA_SIZE",
        "()I",
        "EGL_BLUE_SIZE",
        "getEGL_BLUE_SIZE",
        "EGL_CONTEXT_CLIENT_VERSION",
        "getEGL_CONTEXT_CLIENT_VERSION",
        "EGL_DRAW",
        "getEGL_DRAW",
        "EGL_GREEN_SIZE",
        "getEGL_GREEN_SIZE",
        "EGL_HEIGHT",
        "getEGL_HEIGHT",
        "EGL_NONE",
        "getEGL_NONE",
        "EGL_NO_CONTEXT",
        "Lcom/otaliastudios/opengl/internal/EglContext;",
        "getEGL_NO_CONTEXT",
        "()Lcom/otaliastudios/opengl/internal/EglContext;",
        "EGL_NO_DISPLAY",
        "Lcom/otaliastudios/opengl/internal/EglDisplay;",
        "getEGL_NO_DISPLAY",
        "()Lcom/otaliastudios/opengl/internal/EglDisplay;",
        "EGL_NO_SURFACE",
        "Lcom/otaliastudios/opengl/internal/EglSurface;",
        "getEGL_NO_SURFACE",
        "()Lcom/otaliastudios/opengl/internal/EglSurface;",
        "EGL_OPENGL_ES2_BIT",
        "getEGL_OPENGL_ES2_BIT",
        "EGL_OPENGL_ES3_BIT_KHR",
        "getEGL_OPENGL_ES3_BIT_KHR",
        "EGL_PBUFFER_BIT",
        "getEGL_PBUFFER_BIT",
        "EGL_READ",
        "getEGL_READ",
        "EGL_RED_SIZE",
        "getEGL_RED_SIZE",
        "EGL_RENDERABLE_TYPE",
        "getEGL_RENDERABLE_TYPE",
        "EGL_SUCCESS",
        "getEGL_SUCCESS",
        "EGL_SURFACE_TYPE",
        "getEGL_SURFACE_TYPE",
        "EGL_WIDTH",
        "getEGL_WIDTH",
        "EGL_WINDOW_BIT",
        "getEGL_WINDOW_BIT",
        "eglChooseConfig",
        "",
        "display",
        "attributes",
        "",
        "configs",
        "",
        "Lcom/otaliastudios/opengl/internal/EglConfig;",
        "configsSize",
        "numConfigs",
        "(Lcom/otaliastudios/opengl/internal/EglDisplay;[I[Lcom/otaliastudios/opengl/internal/EglConfig;I[I)Z",
        "eglCreateContext",
        "config",
        "sharedContext",
        "eglCreatePbufferSurface",
        "eglCreateWindowSurface",
        "surface",
        "",
        "eglDestroyContext",
        "context",
        "eglDestroySurface",
        "eglGetCurrentContext",
        "eglGetCurrentDisplay",
        "eglGetCurrentSurface",
        "which",
        "eglGetDefaultDisplay",
        "eglGetError",
        "eglInitialize",
        "major",
        "minor",
        "eglMakeCurrent",
        "draw",
        "read",
        "eglPresentationTime",
        "nanoseconds",
        "",
        "eglQuerySurface",
        "attribute",
        "out",
        "eglReleaseThread",
        "eglSwapBuffers",
        "eglTerminate",
        "egloo-metadata_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final EGL_ALPHA_SIZE:I

.field private static final EGL_BLUE_SIZE:I

.field private static final EGL_CONTEXT_CLIENT_VERSION:I

.field private static final EGL_DRAW:I

.field private static final EGL_GREEN_SIZE:I

.field private static final EGL_HEIGHT:I

.field private static final EGL_NONE:I

.field private static final EGL_NO_CONTEXT:Lcom/otaliastudios/opengl/internal/EglContext;

.field private static final EGL_NO_DISPLAY:Lcom/otaliastudios/opengl/internal/EglDisplay;

.field private static final EGL_NO_SURFACE:Lcom/otaliastudios/opengl/internal/EglSurface;

.field private static final EGL_OPENGL_ES2_BIT:I

.field private static final EGL_OPENGL_ES3_BIT_KHR:I

.field private static final EGL_PBUFFER_BIT:I

.field private static final EGL_READ:I

.field private static final EGL_RED_SIZE:I

.field private static final EGL_RENDERABLE_TYPE:I

.field private static final EGL_SUCCESS:I

.field private static final EGL_SURFACE_TYPE:I

.field private static final EGL_WIDTH:I

.field private static final EGL_WINDOW_BIT:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/otaliastudios/opengl/internal/EglContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/internal/EglContext;-><init>(Landroid/opengl/EGLContext;)V

    sput-object v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_NO_CONTEXT:Lcom/otaliastudios/opengl/internal/EglContext;

    .line 16
    new-instance v0, Lcom/otaliastudios/opengl/internal/EglDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/internal/EglDisplay;-><init>(Landroid/opengl/EGLDisplay;)V

    sput-object v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_NO_DISPLAY:Lcom/otaliastudios/opengl/internal/EglDisplay;

    .line 17
    new-instance v0, Lcom/otaliastudios/opengl/internal/EglSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/internal/EglSurface;-><init>(Landroid/opengl/EGLSurface;)V

    sput-object v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_NO_SURFACE:Lcom/otaliastudios/opengl/internal/EglSurface;

    const/16 v0, 0x3000

    .line 18
    sput v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_SUCCESS:I

    const/16 v0, 0x3038

    .line 19
    sput v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_NONE:I

    const/16 v0, 0x3057

    .line 20
    sput v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_WIDTH:I

    const/16 v0, 0x3056

    .line 21
    sput v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_HEIGHT:I

    const/16 v0, 0x305a

    .line 22
    sput v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_READ:I

    const/16 v0, 0x3059

    .line 23
    sput v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_DRAW:I

    const/16 v0, 0x3098

    .line 24
    sput v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_CONTEXT_CLIENT_VERSION:I

    const/4 v0, 0x4

    .line 25
    sput v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_OPENGL_ES2_BIT:I

    const/16 v1, 0x40

    .line 26
    sput v1, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_OPENGL_ES3_BIT_KHR:I

    const/16 v1, 0x3024

    .line 27
    sput v1, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_RED_SIZE:I

    const/16 v1, 0x3023

    .line 28
    sput v1, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_GREEN_SIZE:I

    const/16 v1, 0x3022

    .line 29
    sput v1, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_BLUE_SIZE:I

    const/16 v1, 0x3021

    .line 30
    sput v1, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_ALPHA_SIZE:I

    const/16 v1, 0x3033

    .line 31
    sput v1, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_SURFACE_TYPE:I

    .line 32
    sput v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_WINDOW_BIT:I

    const/4 v0, 0x1

    .line 33
    sput v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_PBUFFER_BIT:I

    const/16 v0, 0x3040

    .line 34
    sput v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_RENDERABLE_TYPE:I

    return-void
.end method

.method public static final eglChooseConfig(Lcom/otaliastudios/opengl/internal/EglDisplay;[I[Lcom/otaliastudios/opengl/internal/EglConfig;I[I)Z
    .locals 9

    const-string v0, "display"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numConfigs"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    array-length v0, p2

    new-array v0, v0, [Landroid/opengl/EGLConfig;

    .line 38
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v4, v0

    move v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 39
    invoke-static {p2}, Lkotlin/collections/ArraysKt;->getIndices([Ljava/lang/Object;)Lkotlin/ranges/IntRange;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 69
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    move-object p3, p1

    check-cast p3, Lkotlin/collections/IntIterator;

    invoke-virtual {p3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result p3

    .line 39
    aget-object p4, v0, p3

    if-eqz p4, :cond_0

    new-instance v1, Lcom/otaliastudios/opengl/internal/EglConfig;

    invoke-direct {v1, p4}, Lcom/otaliastudios/opengl/internal/EglConfig;-><init>(Landroid/opengl/EGLConfig;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    aput-object v1, p2, p3

    goto :goto_0

    :cond_1
    return p0
.end method

.method public static final eglCreateContext(Lcom/otaliastudios/opengl/internal/EglDisplay;Lcom/otaliastudios/opengl/internal/EglConfig;Lcom/otaliastudios/opengl/internal/EglContext;[I)Lcom/otaliastudios/opengl/internal/EglContext;
    .locals 2

    const-string v0, "display"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/otaliastudios/opengl/internal/EglContext;

    invoke-virtual {p0}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object p0

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/internal/EglConfig;->getNative()Landroid/opengl/EGLConfig;

    move-result-object p1

    invoke-virtual {p2}, Lcom/otaliastudios/opengl/internal/EglContext;->getNative()Landroid/opengl/EGLContext;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/otaliastudios/opengl/internal/EglContext;-><init>(Landroid/opengl/EGLContext;)V

    return-object v0
.end method

.method public static final eglCreatePbufferSurface(Lcom/otaliastudios/opengl/internal/EglDisplay;Lcom/otaliastudios/opengl/internal/EglConfig;[I)Lcom/otaliastudios/opengl/internal/EglSurface;
    .locals 2

    const-string v0, "display"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/otaliastudios/opengl/internal/EglSurface;

    invoke-virtual {p0}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object p0

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/internal/EglConfig;->getNative()Landroid/opengl/EGLConfig;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/otaliastudios/opengl/internal/EglSurface;-><init>(Landroid/opengl/EGLSurface;)V

    return-object v0
.end method

.method public static final eglCreateWindowSurface(Lcom/otaliastudios/opengl/internal/EglDisplay;Lcom/otaliastudios/opengl/internal/EglConfig;Ljava/lang/Object;[I)Lcom/otaliastudios/opengl/internal/EglSurface;
    .locals 2

    const-string v0, "display"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/otaliastudios/opengl/internal/EglSurface;

    invoke-virtual {p0}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object p0

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/internal/EglConfig;->getNative()Landroid/opengl/EGLConfig;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/otaliastudios/opengl/internal/EglSurface;-><init>(Landroid/opengl/EGLSurface;)V

    return-object v0
.end method

.method public static final eglDestroyContext(Lcom/otaliastudios/opengl/internal/EglDisplay;Lcom/otaliastudios/opengl/internal/EglContext;)Z
    .locals 1

    const-string v0, "display"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object p0

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/internal/EglContext;->getNative()Landroid/opengl/EGLContext;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    move-result p0

    return p0
.end method

.method public static final eglDestroySurface(Lcom/otaliastudios/opengl/internal/EglDisplay;Lcom/otaliastudios/opengl/internal/EglSurface;)Z
    .locals 1

    const-string v0, "display"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object p0

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/internal/EglSurface;->getNative()Landroid/opengl/EGLSurface;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p0

    return p0
.end method

.method public static final eglGetCurrentContext()Lcom/otaliastudios/opengl/internal/EglContext;
    .locals 2

    .line 47
    new-instance v0, Lcom/otaliastudios/opengl/internal/EglContext;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/internal/EglContext;-><init>(Landroid/opengl/EGLContext;)V

    return-object v0
.end method

.method public static final eglGetCurrentDisplay()Lcom/otaliastudios/opengl/internal/EglDisplay;
    .locals 2

    .line 48
    new-instance v0, Lcom/otaliastudios/opengl/internal/EglDisplay;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/internal/EglDisplay;-><init>(Landroid/opengl/EGLDisplay;)V

    return-object v0
.end method

.method public static final eglGetCurrentSurface(I)Lcom/otaliastudios/opengl/internal/EglSurface;
    .locals 1

    .line 49
    new-instance v0, Lcom/otaliastudios/opengl/internal/EglSurface;

    invoke-static {p0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/otaliastudios/opengl/internal/EglSurface;-><init>(Landroid/opengl/EGLSurface;)V

    return-object v0
.end method

.method public static final eglGetDefaultDisplay()Lcom/otaliastudios/opengl/internal/EglDisplay;
    .locals 2

    .line 46
    new-instance v0, Lcom/otaliastudios/opengl/internal/EglDisplay;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/internal/EglDisplay;-><init>(Landroid/opengl/EGLDisplay;)V

    return-object v0
.end method

.method public static final eglGetError()I
    .locals 1

    .line 68
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    return v0
.end method

.method public static final eglInitialize(Lcom/otaliastudios/opengl/internal/EglDisplay;[I[I)Z
    .locals 1

    const-string v0, "display"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "major"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, v0}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result p0

    return p0
.end method

.method public static final eglMakeCurrent(Lcom/otaliastudios/opengl/internal/EglDisplay;Lcom/otaliastudios/opengl/internal/EglSurface;Lcom/otaliastudios/opengl/internal/EglSurface;Lcom/otaliastudios/opengl/internal/EglContext;)Z
    .locals 1

    const-string v0, "display"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "read"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object p0

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/internal/EglSurface;->getNative()Landroid/opengl/EGLSurface;

    move-result-object p1

    invoke-virtual {p2}, Lcom/otaliastudios/opengl/internal/EglSurface;->getNative()Landroid/opengl/EGLSurface;

    move-result-object p2

    invoke-virtual {p3}, Lcom/otaliastudios/opengl/internal/EglContext;->getNative()Landroid/opengl/EGLContext;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p0

    return p0
.end method

.method public static final eglPresentationTime(Lcom/otaliastudios/opengl/internal/EglDisplay;Lcom/otaliastudios/opengl/internal/EglSurface;J)Z
    .locals 1

    const-string v0, "display"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object p0

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/internal/EglSurface;->getNative()Landroid/opengl/EGLSurface;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    move-result p0

    return p0
.end method

.method public static final eglQuerySurface(Lcom/otaliastudios/opengl/internal/EglDisplay;Lcom/otaliastudios/opengl/internal/EglSurface;I[I)Z
    .locals 1

    const-string v0, "display"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object p0

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/internal/EglSurface;->getNative()Landroid/opengl/EGLSurface;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    move-result p0

    return p0
.end method

.method public static final eglReleaseThread()Z
    .locals 1

    .line 66
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    move-result v0

    return v0
.end method

.method public static final eglSwapBuffers(Lcom/otaliastudios/opengl/internal/EglDisplay;Lcom/otaliastudios/opengl/internal/EglSurface;)Z
    .locals 1

    const-string v0, "display"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object p0

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/internal/EglSurface;->getNative()Landroid/opengl/EGLSurface;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p0

    return p0
.end method

.method public static final eglTerminate(Lcom/otaliastudios/opengl/internal/EglDisplay;)Z
    .locals 1

    const-string v0, "display"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object p0

    invoke-static {p0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    move-result p0

    return p0
.end method

.method public static final getEGL_ALPHA_SIZE()I
    .locals 1

    .line 30
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_ALPHA_SIZE:I

    return v0
.end method

.method public static final getEGL_BLUE_SIZE()I
    .locals 1

    .line 29
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_BLUE_SIZE:I

    return v0
.end method

.method public static final getEGL_CONTEXT_CLIENT_VERSION()I
    .locals 1

    .line 24
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_CONTEXT_CLIENT_VERSION:I

    return v0
.end method

.method public static final getEGL_DRAW()I
    .locals 1

    .line 23
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_DRAW:I

    return v0
.end method

.method public static final getEGL_GREEN_SIZE()I
    .locals 1

    .line 28
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_GREEN_SIZE:I

    return v0
.end method

.method public static final getEGL_HEIGHT()I
    .locals 1

    .line 21
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_HEIGHT:I

    return v0
.end method

.method public static final getEGL_NONE()I
    .locals 1

    .line 19
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_NONE:I

    return v0
.end method

.method public static final getEGL_NO_CONTEXT()Lcom/otaliastudios/opengl/internal/EglContext;
    .locals 1

    .line 15
    sget-object v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_NO_CONTEXT:Lcom/otaliastudios/opengl/internal/EglContext;

    return-object v0
.end method

.method public static final getEGL_NO_DISPLAY()Lcom/otaliastudios/opengl/internal/EglDisplay;
    .locals 1

    .line 16
    sget-object v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_NO_DISPLAY:Lcom/otaliastudios/opengl/internal/EglDisplay;

    return-object v0
.end method

.method public static final getEGL_NO_SURFACE()Lcom/otaliastudios/opengl/internal/EglSurface;
    .locals 1

    .line 17
    sget-object v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_NO_SURFACE:Lcom/otaliastudios/opengl/internal/EglSurface;

    return-object v0
.end method

.method public static final getEGL_OPENGL_ES2_BIT()I
    .locals 1

    .line 25
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_OPENGL_ES2_BIT:I

    return v0
.end method

.method public static final getEGL_OPENGL_ES3_BIT_KHR()I
    .locals 1

    .line 26
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_OPENGL_ES3_BIT_KHR:I

    return v0
.end method

.method public static final getEGL_PBUFFER_BIT()I
    .locals 1

    .line 33
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_PBUFFER_BIT:I

    return v0
.end method

.method public static final getEGL_READ()I
    .locals 1

    .line 22
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_READ:I

    return v0
.end method

.method public static final getEGL_RED_SIZE()I
    .locals 1

    .line 27
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_RED_SIZE:I

    return v0
.end method

.method public static final getEGL_RENDERABLE_TYPE()I
    .locals 1

    .line 34
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_RENDERABLE_TYPE:I

    return v0
.end method

.method public static final getEGL_SUCCESS()I
    .locals 1

    .line 18
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_SUCCESS:I

    return v0
.end method

.method public static final getEGL_SURFACE_TYPE()I
    .locals 1

    .line 31
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_SURFACE_TYPE:I

    return v0
.end method

.method public static final getEGL_WIDTH()I
    .locals 1

    .line 20
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_WIDTH:I

    return v0
.end method

.method public static final getEGL_WINDOW_BIT()I
    .locals 1

    .line 32
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_WINDOW_BIT:I

    return v0
.end method
