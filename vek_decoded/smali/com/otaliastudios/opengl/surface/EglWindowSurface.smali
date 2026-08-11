.class public Lcom/otaliastudios/opengl/surface/EglWindowSurface;
.super Lcom/otaliastudios/opengl/surface/EglNativeWindowSurface;
.source "EglWindowSurface.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B!\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u000c\u001a\u00020\rH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/surface/EglWindowSurface;",
        "Lcom/otaliastudios/opengl/surface/EglNativeWindowSurface;",
        "eglCore",
        "Lcom/otaliastudios/opengl/core/EglCore;",
        "surface",
        "Landroid/view/Surface;",
        "releaseSurface",
        "",
        "(Lcom/otaliastudios/opengl/core/EglCore;Landroid/view/Surface;Z)V",
        "surfaceTexture",
        "Landroid/graphics/SurfaceTexture;",
        "(Lcom/otaliastudios/opengl/core/EglCore;Landroid/graphics/SurfaceTexture;)V",
        "release",
        "",
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
.field private releaseSurface:Z

.field private surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/opengl/core/EglCore;Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const-string v0, "eglCore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surfaceTexture"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1, p2}, Lcom/otaliastudios/opengl/core/EglCore;->createWindowSurface$egloo_metadata_release(Ljava/lang/Object;)Lcom/otaliastudios/opengl/internal/EglSurface;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/opengl/surface/EglNativeWindowSurface;-><init>(Lcom/otaliastudios/opengl/core/EglCore;Lcom/otaliastudios/opengl/internal/EglSurface;)V

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/opengl/core/EglCore;Landroid/view/Surface;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/otaliastudios/opengl/surface/EglWindowSurface;-><init>(Lcom/otaliastudios/opengl/core/EglCore;Landroid/view/Surface;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/opengl/core/EglCore;Landroid/view/Surface;Z)V
    .locals 1

    const-string v0, "eglCore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1, p2}, Lcom/otaliastudios/opengl/core/EglCore;->createWindowSurface$egloo_metadata_release(Ljava/lang/Object;)Lcom/otaliastudios/opengl/internal/EglSurface;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/opengl/surface/EglNativeWindowSurface;-><init>(Lcom/otaliastudios/opengl/core/EglCore;Lcom/otaliastudios/opengl/internal/EglSurface;)V

    .line 28
    iput-object p2, p0, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->surface:Landroid/view/Surface;

    .line 29
    iput-boolean p3, p0, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->releaseSurface:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/otaliastudios/opengl/core/EglCore;Landroid/view/Surface;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 26
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/otaliastudios/opengl/surface/EglWindowSurface;-><init>(Lcom/otaliastudios/opengl/core/EglCore;Landroid/view/Surface;Z)V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/otaliastudios/opengl/surface/EglNativeWindowSurface;->release()V

    .line 45
    iget-boolean v0, p0, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->releaseSurface:Z

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 47
    check-cast v0, Landroid/view/Surface;

    iput-object v0, p0, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->surface:Landroid/view/Surface;

    :cond_1
    return-void
.end method
