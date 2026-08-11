.class Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool;
.super Lcom/otaliastudios/cameraview/internal/Pool;
.source "OutputBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/otaliastudios/cameraview/internal/Pool<",
        "Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 17
    new-instance v0, Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool$1;

    invoke-direct {v0, p1}, Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool$1;-><init>(I)V

    const p1, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/internal/Pool;-><init>(ILcom/otaliastudios/cameraview/internal/Pool$Factory;)V

    return-void
.end method
