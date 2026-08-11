.class public abstract Lcom/otaliastudios/opengl/surface/EglNativeWindowSurface;
.super Lcom/otaliastudios/opengl/surface/EglSurface;
.source "EglWindowSurface.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/surface/EglNativeWindowSurface;",
        "Lcom/otaliastudios/opengl/surface/EglSurface;",
        "eglCore",
        "Lcom/otaliastudios/opengl/core/EglCore;",
        "eglSurface",
        "Lcom/otaliastudios/opengl/internal/EglSurface;",
        "(Lcom/otaliastudios/opengl/core/EglCore;Lcom/otaliastudios/opengl/internal/EglSurface;)V",
        "swapBuffers",
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


# direct methods
.method public constructor <init>(Lcom/otaliastudios/opengl/core/EglCore;Lcom/otaliastudios/opengl/internal/EglSurface;)V
    .locals 1

    const-string v0, "eglCore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eglSurface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/opengl/surface/EglSurface;-><init>(Lcom/otaliastudios/opengl/core/EglCore;Lcom/otaliastudios/opengl/internal/EglSurface;)V

    return-void
.end method


# virtual methods
.method public final swapBuffers()Z
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/surface/EglNativeWindowSurface;->getEglCore$egloo_metadata_release()Lcom/otaliastudios/opengl/core/EglCore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/otaliastudios/opengl/surface/EglNativeWindowSurface;->getEglSurface$egloo_metadata_release()Lcom/otaliastudios/opengl/internal/EglSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/opengl/core/EglCore;->swapSurfaceBuffers$egloo_metadata_release(Lcom/otaliastudios/opengl/internal/EglSurface;)Z

    move-result v0

    return v0
.end method
