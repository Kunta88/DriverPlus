.class public final Lcom/otaliastudios/opengl/core/EglConfigChooser;
.super Lcom/otaliastudios/opengl/core/EglNativeConfigChooser;
.source "EglConfigChooser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/core/EglConfigChooser$Chooser;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0010B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002R\u0016\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0007\u0010\u0002\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/core/EglConfigChooser;",
        "Lcom/otaliastudios/opengl/core/EglNativeConfigChooser;",
        "()V",
        "GLES2",
        "Landroid/opengl/GLSurfaceView$EGLConfigChooser;",
        "getGLES2$annotations",
        "GLES3",
        "getGLES3$annotations",
        "getConfig",
        "Landroid/opengl/EGLConfig;",
        "display",
        "Landroid/opengl/EGLDisplay;",
        "version",
        "",
        "recordable",
        "",
        "Chooser",
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
.field public static final GLES2:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

.field public static final GLES3:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

.field public static final INSTANCE:Lcom/otaliastudios/opengl/core/EglConfigChooser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/otaliastudios/opengl/core/EglConfigChooser;

    invoke-direct {v0}, Lcom/otaliastudios/opengl/core/EglConfigChooser;-><init>()V

    sput-object v0, Lcom/otaliastudios/opengl/core/EglConfigChooser;->INSTANCE:Lcom/otaliastudios/opengl/core/EglConfigChooser;

    .line 18
    new-instance v0, Lcom/otaliastudios/opengl/core/EglConfigChooser$Chooser;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/core/EglConfigChooser$Chooser;-><init>(I)V

    check-cast v0, Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    sput-object v0, Lcom/otaliastudios/opengl/core/EglConfigChooser;->GLES2:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 22
    new-instance v0, Lcom/otaliastudios/opengl/core/EglConfigChooser$Chooser;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/core/EglConfigChooser$Chooser;-><init>(I)V

    check-cast v0, Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    sput-object v0, Lcom/otaliastudios/opengl/core/EglConfigChooser;->GLES3:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/otaliastudios/opengl/core/EglNativeConfigChooser;-><init>()V

    return-void
.end method

.method public static final getConfig(Landroid/opengl/EGLDisplay;IZ)Landroid/opengl/EGLConfig;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "display"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/otaliastudios/opengl/core/EglConfigChooser;->INSTANCE:Lcom/otaliastudios/opengl/core/EglConfigChooser;

    new-instance v1, Lcom/otaliastudios/opengl/internal/EglDisplay;

    invoke-direct {v1, p0}, Lcom/otaliastudios/opengl/internal/EglDisplay;-><init>(Landroid/opengl/EGLDisplay;)V

    invoke-super {v0, v1, p1, p2}, Lcom/otaliastudios/opengl/core/EglNativeConfigChooser;->getConfig$egloo_metadata_release(Lcom/otaliastudios/opengl/internal/EglDisplay;IZ)Lcom/otaliastudios/opengl/internal/EglConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/otaliastudios/opengl/internal/EglConfig;->getNative()Landroid/opengl/EGLConfig;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static synthetic getGLES2$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getGLES3$annotations()V
    .locals 0

    return-void
.end method
