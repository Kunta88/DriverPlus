.class Lcom/otaliastudios/cameraview/video/encoding/InputBufferPool;
.super Lcom/otaliastudios/cameraview/internal/Pool;
.source "InputBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/otaliastudios/cameraview/internal/Pool<",
        "Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/otaliastudios/cameraview/video/encoding/InputBufferPool$1;

    invoke-direct {v0}, Lcom/otaliastudios/cameraview/video/encoding/InputBufferPool$1;-><init>()V

    const v1, 0x7fffffff

    invoke-direct {p0, v1, v0}, Lcom/otaliastudios/cameraview/internal/Pool;-><init>(ILcom/otaliastudios/cameraview/internal/Pool$Factory;)V

    return-void
.end method
