.class Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool$1;
.super Ljava/lang/Object;
.source "ByteBufferPool.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/internal/Pool$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/otaliastudios/cameraview/internal/Pool$Factory<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$bufferSize:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool$1;->val$bufferSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool$1;->create()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public create()Ljava/nio/ByteBuffer;
    .locals 1

    .line 16
    iget v0, p0, Lcom/otaliastudios/cameraview/video/encoding/ByteBufferPool$1;->val$bufferSize:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
