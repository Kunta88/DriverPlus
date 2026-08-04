.class public final Lcom/otaliastudios/opengl/types/BuffersKt;
.super Ljava/lang/Object;
.source "buffers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u0001*\u00060\u0002j\u0002`\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "dispose",
        "",
        "Ljava/nio/Buffer;",
        "Lcom/otaliastudios/opengl/types/Buffer;",
        "egloo-metadata_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public static final dispose(Ljava/nio/Buffer;)V
    .locals 1

    const-string v0, "$this$dispose"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    instance-of v0, p0, Lcom/otaliastudios/opengl/types/Disposable;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/otaliastudios/opengl/types/Disposable;

    invoke-interface {p0}, Lcom/otaliastudios/opengl/types/Disposable;->dispose()V

    :cond_0
    return-void
.end method
