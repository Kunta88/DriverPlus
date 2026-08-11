.class public Lcom/otaliastudios/opengl/surface/EglNativeSurface;
.super Ljava/lang/Object;
.source "EglSurface.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0012\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0010J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0017J\u0006\u0010\u0018\u001a\u00020\u0017J\u0008\u0010\u0019\u001a\u00020\u0017H\u0016J\u0010\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u000f\u001a\u00020\u0010H\u0004J\u000e\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001dJ\u0010\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u0010H\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/surface/EglNativeSurface;",
        "",
        "eglCore",
        "Lcom/otaliastudios/opengl/core/EglCore;",
        "eglSurface",
        "Lcom/otaliastudios/opengl/internal/EglSurface;",
        "(Lcom/otaliastudios/opengl/core/EglCore;Lcom/otaliastudios/opengl/internal/EglSurface;)V",
        "getEglCore$egloo_metadata_release",
        "()Lcom/otaliastudios/opengl/core/EglCore;",
        "setEglCore$egloo_metadata_release",
        "(Lcom/otaliastudios/opengl/core/EglCore;)V",
        "getEglSurface$egloo_metadata_release",
        "()Lcom/otaliastudios/opengl/internal/EglSurface;",
        "setEglSurface$egloo_metadata_release",
        "(Lcom/otaliastudios/opengl/internal/EglSurface;)V",
        "height",
        "",
        "width",
        "getHeight",
        "getWidth",
        "isCurrent",
        "",
        "makeCurrent",
        "",
        "makeNothingCurrent",
        "release",
        "setHeight",
        "setPresentationTime",
        "nsecs",
        "",
        "setWidth",
        "egloo-metadata_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private eglCore:Lcom/otaliastudios/opengl/core/EglCore;

.field private eglSurface:Lcom/otaliastudios/opengl/internal/EglSurface;

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(Lcom/otaliastudios/opengl/core/EglCore;Lcom/otaliastudios/opengl/internal/EglSurface;)V
    .locals 1

    const-string v0, "eglCore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eglSurface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglCore:Lcom/otaliastudios/opengl/core/EglCore;

    iput-object p2, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglSurface:Lcom/otaliastudios/opengl/internal/EglSurface;

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->width:I

    .line 16
    iput p1, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->height:I

    return-void
.end method


# virtual methods
.method public final getEglCore$egloo_metadata_release()Lcom/otaliastudios/opengl/core/EglCore;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglCore:Lcom/otaliastudios/opengl/core/EglCore;

    return-object v0
.end method

.method public final getEglSurface$egloo_metadata_release()Lcom/otaliastudios/opengl/internal/EglSurface;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglSurface:Lcom/otaliastudios/opengl/internal/EglSurface;

    return-object v0
.end method

.method public final getHeight()I
    .locals 3

    .line 57
    iget v0, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->height:I

    if-gez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglCore:Lcom/otaliastudios/opengl/core/EglCore;

    iget-object v1, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglSurface:Lcom/otaliastudios/opengl/internal/EglSurface;

    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_HEIGHT()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/opengl/core/EglCore;->querySurface$egloo_metadata_release(Lcom/otaliastudios/opengl/internal/EglSurface;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final getWidth()I
    .locals 3

    .line 45
    iget v0, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->width:I

    if-gez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglCore:Lcom/otaliastudios/opengl/core/EglCore;

    iget-object v1, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglSurface:Lcom/otaliastudios/opengl/internal/EglSurface;

    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_WIDTH()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/otaliastudios/opengl/core/EglCore;->querySurface$egloo_metadata_release(Lcom/otaliastudios/opengl/internal/EglSurface;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final isCurrent()Z
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglCore:Lcom/otaliastudios/opengl/core/EglCore;

    iget-object v1, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglSurface:Lcom/otaliastudios/opengl/internal/EglSurface;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/opengl/core/EglCore;->isSurfaceCurrent$egloo_metadata_release(Lcom/otaliastudios/opengl/internal/EglSurface;)Z

    move-result v0

    return v0
.end method

.method public final makeCurrent()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglCore:Lcom/otaliastudios/opengl/core/EglCore;

    iget-object v1, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglSurface:Lcom/otaliastudios/opengl/internal/EglSurface;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/opengl/core/EglCore;->makeSurfaceCurrent$egloo_metadata_release(Lcom/otaliastudios/opengl/internal/EglSurface;)V

    return-void
.end method

.method public final makeNothingCurrent()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglCore:Lcom/otaliastudios/opengl/core/EglCore;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/core/EglCore;->makeCurrent()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglCore:Lcom/otaliastudios/opengl/core/EglCore;

    iget-object v1, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglSurface:Lcom/otaliastudios/opengl/internal/EglSurface;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/opengl/core/EglCore;->releaseSurface$egloo_metadata_release(Lcom/otaliastudios/opengl/internal/EglSurface;)V

    .line 69
    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_NO_SURFACE()Lcom/otaliastudios/opengl/internal/EglSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglSurface:Lcom/otaliastudios/opengl/internal/EglSurface;

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->height:I

    .line 71
    iput v0, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->width:I

    return-void
.end method

.method public final setEglCore$egloo_metadata_release(Lcom/otaliastudios/opengl/core/EglCore;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglCore:Lcom/otaliastudios/opengl/core/EglCore;

    return-void
.end method

.method public final setEglSurface$egloo_metadata_release(Lcom/otaliastudios/opengl/internal/EglSurface;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglSurface:Lcom/otaliastudios/opengl/internal/EglSurface;

    return-void
.end method

.method protected final setHeight(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->height:I

    return-void
.end method

.method public final setPresentationTime(J)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglCore:Lcom/otaliastudios/opengl/core/EglCore;

    iget-object v1, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglSurface:Lcom/otaliastudios/opengl/internal/EglSurface;

    invoke-virtual {v0, v1, p1, p2}, Lcom/otaliastudios/opengl/core/EglCore;->setSurfacePresentationTime$egloo_metadata_release(Lcom/otaliastudios/opengl/internal/EglSurface;J)V

    return-void
.end method

.method protected final setWidth(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->width:I

    return-void
.end method
