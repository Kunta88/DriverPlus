.class Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool;
.super Lcom/otaliastudios/cameraview/internal/Pool;
.source "ByteBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/otaliastudios/cameraview/internal/Pool<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 1

    .line 13
    new-instance v0, Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool$1;

    invoke-direct {v0, p1}, Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool$1;-><init>(I)V

    invoke-direct {p0, p2, v0}, Lcom/otaliastudios/cameraview/internal/Pool;-><init>(ILcom/otaliastudios/cameraview/internal/Pool$Factory;)V

    return-void
.end method
