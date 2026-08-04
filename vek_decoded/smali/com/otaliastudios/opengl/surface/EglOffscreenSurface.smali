.class public Lcom/otaliastudios/opengl/surface/EglOffscreenSurface;
.super Lcom/otaliastudios/opengl/surface/EglSurface;
.source "EglOffscreenSurface.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/surface/EglOffscreenSurface;",
        "Lcom/otaliastudios/opengl/surface/EglSurface;",
        "eglCore",
        "Lcom/otaliastudios/opengl/core/EglCore;",
        "width",
        "",
        "height",
        "(Lcom/otaliastudios/opengl/core/EglCore;II)V",
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
.method public constructor <init>(Lcom/otaliastudios/opengl/core/EglCore;II)V
    .locals 1

    const-string v0, "eglCore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, p2, p3}, Lcom/otaliastudios/opengl/core/EglCore;->createOffscreenSurface$egloo_metadata_release(II)Lcom/otaliastudios/opengl/internal/EglSurface;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/opengl/surface/EglSurface;-><init>(Lcom/otaliastudios/opengl/core/EglCore;Lcom/otaliastudios/opengl/internal/EglSurface;)V

    .line 15
    invoke-virtual {p0, p2}, Lcom/otaliastudios/opengl/surface/EglOffscreenSurface;->setWidth(I)V

    .line 16
    invoke-virtual {p0, p3}, Lcom/otaliastudios/opengl/surface/EglOffscreenSurface;->setHeight(I)V

    return-void
.end method
