.class public Lcom/otaliastudios/opengl/core/EglNativeConfigChooser;
.super Ljava/lang/Object;
.source "EglNativeConfigChooser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/core/EglNativeConfigChooser$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEglNativeConfigChooser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EglNativeConfigChooser.kt\ncom/otaliastudios/opengl/core/EglNativeConfigChooser\n+ 2 egl.kt\ncom/otaliastudios/opengl/internal/EglKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 misc.kt\ncom/otaliastudios/opengl/internal/MiscKt\n*L\n1#1,62:1\n37#2,3:63\n40#2:69\n1799#3:66\n1800#3:68\n1#4:67\n12#5:70\n*E\n*S KotlinDebug\n*F\n+ 1 EglNativeConfigChooser.kt\ncom/otaliastudios/opengl/core/EglNativeConfigChooser\n*L\n29#1,3:63\n29#1:69\n29#1:66\n29#1:68\n29#1:67\n30#1:70\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0002J\'\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u000bJ\u001d\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/core/EglNativeConfigChooser;",
        "",
        "()V",
        "getConfig",
        "Lcom/otaliastudios/opengl/internal/EglConfig;",
        "display",
        "Lcom/otaliastudios/opengl/internal/EglDisplay;",
        "version",
        "",
        "recordable",
        "",
        "getConfig$egloo_metadata_release",
        "getConfigSpec",
        "",
        "getConfigSpec$egloo_metadata_release",
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
.field public static final Companion:Lcom/otaliastudios/opengl/core/EglNativeConfigChooser$Companion;

.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/core/EglNativeConfigChooser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/core/EglNativeConfigChooser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/opengl/core/EglNativeConfigChooser;->Companion:Lcom/otaliastudios/opengl/core/EglNativeConfigChooser$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConfig$egloo_metadata_release(Lcom/otaliastudios/opengl/internal/EglDisplay;IZ)Lcom/otaliastudios/opengl/internal/EglConfig;
    .locals 9

    const-string v0, "display"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p2, p3}, Lcom/otaliastudios/opengl/core/EglNativeConfigChooser;->getConfigSpec$egloo_metadata_release(IZ)[I

    move-result-object v2

    const/4 p3, 0x1

    new-array v0, p3, [Lcom/otaliastudios/opengl/internal/EglConfig;

    new-array v7, p3, [I

    new-array p3, p3, [Landroid/opengl/EGLConfig;

    .line 64
    invoke-virtual {p1}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v4, p3

    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 65
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getIndices([Ljava/lang/Object;)Lkotlin/ranges/IntRange;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 66
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    .line 65
    aget-object v4, p3, v3

    if-eqz v4, :cond_0

    new-instance v5, Lcom/otaliastudios/opengl/internal/EglConfig;

    invoke-direct {v5, v4}, Lcom/otaliastudios/opengl/internal/EglConfig;-><init>(Landroid/opengl/EGLConfig;)V

    goto :goto_1

    :cond_0
    move-object v5, v1

    :goto_1
    aput-object v5, v0, v3

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to find RGB8888 / "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " EGLConfig"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EglConfigChooser"

    .line 70
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    const/4 p1, 0x0

    .line 33
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getConfigSpec$egloo_metadata_release(IZ)[I
    .locals 5

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 46
    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_OPENGL_ES2_BIT()I

    move-result p1

    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_OPENGL_ES3_BIT_KHR()I

    move-result v1

    or-int/2addr p1, v1

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_OPENGL_ES2_BIT()I

    move-result p1

    :goto_0
    const/16 v1, 0xf

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 51
    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_RED_SIZE()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x8

    aput v3, v1, v2

    const/4 v2, 0x2

    .line 52
    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_GREEN_SIZE()I

    move-result v4

    aput v4, v1, v2

    aput v3, v1, v0

    const/4 v0, 0x4

    .line 53
    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_BLUE_SIZE()I

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x5

    aput v3, v1, v0

    const/4 v0, 0x6

    .line 54
    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_ALPHA_SIZE()I

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x7

    aput v3, v1, v0

    .line 56
    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_SURFACE_TYPE()I

    move-result v0

    aput v0, v1, v3

    const/16 v0, 0x9

    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_WINDOW_BIT()I

    move-result v2

    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_PBUFFER_BIT()I

    move-result v3

    or-int/2addr v2, v3

    aput v2, v1, v0

    const/16 v0, 0xa

    .line 57
    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_RENDERABLE_TYPE()I

    move-result v2

    aput v2, v1, v0

    const/16 v0, 0xb

    aput p1, v1, v0

    const/16 p1, 0xc

    if-eqz p2, :cond_1

    const/16 v0, 0x3142

    goto :goto_1

    .line 58
    :cond_1
    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_NONE()I

    move-result v0

    :goto_1
    aput v0, v1, p1

    const/16 p1, 0xd

    aput p2, v1, p1

    const/16 p1, 0xe

    .line 60
    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_NONE()I

    move-result p2

    aput p2, v1, p1

    return-object v1
.end method
