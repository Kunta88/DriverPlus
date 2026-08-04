.class public final Lcom/otaliastudios/opengl/core/EglCore;
.super Lcom/otaliastudios/opengl/core/EglNativeCore;
.source "EglCore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/core/EglCore$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u001d\u0008\u0007\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0004J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010\n\u001a\u00020\u0008H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/core/EglCore;",
        "Lcom/otaliastudios/opengl/core/EglNativeCore;",
        "sharedContext",
        "Landroid/opengl/EGLContext;",
        "flags",
        "",
        "(Landroid/opengl/EGLContext;I)V",
        "finalize",
        "",
        "makeCurrent",
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
.field public static final Companion:Lcom/otaliastudios/opengl/core/EglCore$Companion;

.field public static final FLAG_RECORDABLE:I = 0x1

.field public static final FLAG_TRY_GLES3:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/core/EglCore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/core/EglCore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/opengl/core/EglCore;->Companion:Lcom/otaliastudios/opengl/core/EglCore$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2, v0}, Lcom/otaliastudios/opengl/core/EglCore;-><init>(Landroid/opengl/EGLContext;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/otaliastudios/opengl/core/EglCore;-><init>(Landroid/opengl/EGLContext;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;I)V
    .locals 1

    .line 17
    new-instance v0, Lcom/otaliastudios/opengl/internal/EglContext;

    invoke-direct {v0, p1}, Lcom/otaliastudios/opengl/internal/EglContext;-><init>(Landroid/opengl/EGLContext;)V

    invoke-direct {p0, v0, p2}, Lcom/otaliastudios/opengl/core/EglNativeCore;-><init>(Lcom/otaliastudios/opengl/internal/EglContext;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/opengl/EGLContext;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 15
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 16
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/opengl/core/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    return-void
.end method


# virtual methods
.method protected final finalize()V
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/core/EglCore;->release()V

    return-void
.end method

.method public makeCurrent()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/otaliastudios/opengl/core/EglNativeCore;->makeCurrent$egloo_metadata_release()V

    return-void
.end method

.method public bridge synthetic makeCurrent$egloo_metadata_release()V
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/core/EglCore;->makeCurrent()V

    return-void
.end method

.method public release()V
    .locals 0

    .line 25
    invoke-super {p0}, Lcom/otaliastudios/opengl/core/EglNativeCore;->release$egloo_metadata_release()V

    return-void
.end method

.method public bridge synthetic release$egloo_metadata_release()V
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/core/EglCore;->release()V

    return-void
.end method
