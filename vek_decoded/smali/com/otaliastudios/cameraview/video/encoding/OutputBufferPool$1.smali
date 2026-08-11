.class Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool$1;
.super Ljava/lang/Object;
.source "OutputBufferPool.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/internal/Pool$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/otaliastudios/cameraview/internal/Pool$Factory<",
        "Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$trackIndex:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool$1;->val$trackIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;
    .locals 2

    .line 20
    new-instance v0, Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;

    invoke-direct {v0}, Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;-><init>()V

    .line 21
    iget v1, p0, Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool$1;->val$trackIndex:I

    iput v1, v0, Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;->trackIndex:I

    .line 22
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v1, v0, Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;->info:Landroid/media/MediaCodec$BufferInfo;

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/video/encoding/OutputBufferPool$1;->create()Lcom/otaliastudios/cameraview/video/encoding/OutputBuffer;

    move-result-object v0

    return-object v0
.end method
