.class Lcom/otaliastudios/cameraview/video/encoding/InputBufferPool$1;
.super Ljava/lang/Object;
.source "InputBufferPool.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/internal/Pool$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/video/encoding/InputBufferPool;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/otaliastudios/cameraview/internal/Pool$Factory<",
        "Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;
    .locals 1

    .line 14
    new-instance v0, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;

    invoke-direct {v0}, Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;-><init>()V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/video/encoding/InputBufferPool$1;->create()Lcom/otaliastudios/cameraview/video/encoding/InputBuffer;

    move-result-object v0

    return-object v0
.end method
