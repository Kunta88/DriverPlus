.class public Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;
.super Lcom/otaliastudios/cameraview/frame/FrameManager;
.source "ByteBufferFrameManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager$BufferCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/otaliastudios/cameraview/frame/FrameManager<",
        "[B>;"
    }
.end annotation


# static fields
.field private static final BUFFER_MODE_DISPATCH:I = 0x0

.field private static final BUFFER_MODE_ENQUEUE:I = 0x1


# instance fields
.field private mBufferCallback:Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager$BufferCallback;

.field private final mBufferMode:I

.field private mBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/otaliastudios/cameraview/frame/ByteBufferFrameManager$BufferCallback;)V
    .locals 1

    .line 71
    const-class v0, [B

    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/frame/FrameManager;-><init>(ILjava/lang/Class;)V

    if-eqz p2, :cond_0

    .line 73
    iput-object p2, p0, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->mBufferCallback:Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager$BufferCallback;

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->mBufferMode:I

    goto :goto_0

    .line 76
    :cond_0
    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p2, p0, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->mBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 p1, 0x1

    .line 77
    iput p1, p0, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->mBufferMode:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 2

    .line 107
    iget v0, p0, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->mBufferMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->mBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t call getBuffer() when not in BUFFER_MODE_ENQUEUE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBufferUnused([B)V
    .locals 3

    .line 120
    iget v0, p0, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->mBufferMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->isSetUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->mBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_0
    sget-object p1, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onBufferUnused: buffer was returned but we\'re not set up anymore."

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    :goto_0
    return-void

    .line 121
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t call onBufferUnused() when not in BUFFER_MODE_ENQUEUE."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected bridge synthetic onCloneFrameData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->onCloneFrameData([B)[B

    move-result-object p1

    return-object p1
.end method

.method protected onCloneFrameData([B)[B
    .locals 3

    .line 146
    array-length v0, p1

    new-array v0, v0, [B

    .line 147
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method protected bridge synthetic onFrameDataReleased(Ljava/lang/Object;Z)V
    .locals 0

    .line 36
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->onFrameDataReleased([BZ)V

    return-void
.end method

.method protected onFrameDataReleased([BZ)V
    .locals 1

    if-eqz p2, :cond_1

    .line 134
    array-length p2, p1

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->getFrameBytes()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 135
    iget p2, p0, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->mBufferMode:I

    if-nez p2, :cond_0

    .line 136
    iget-object p2, p0, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->mBufferCallback:Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager$BufferCallback;

    invoke-interface {p2, p1}, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager$BufferCallback;->onBufferAvailable([B)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object p2, p0, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->mBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 158
    invoke-super {p0}, Lcom/otaliastudios/cameraview/frame/FrameManager;->release()V

    .line 159
    iget v0, p0, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->mBufferMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->mBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    :cond_0
    return-void
.end method

.method public setUp(ILcom/otaliastudios/cameraview/size/Size;Lcom/otaliastudios/cameraview/engine/offset/Angles;)V
    .locals 1

    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/otaliastudios/cameraview/frame/FrameManager;->setUp(ILcom/otaliastudios/cameraview/size/Size;Lcom/otaliastudios/cameraview/engine/offset/Angles;)V

    .line 85
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->getFrameBytes()I

    move-result p1

    const/4 p2, 0x0

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->getPoolSize()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 87
    iget p3, p0, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->mBufferMode:I

    if-nez p3, :cond_0

    .line 88
    iget-object p3, p0, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->mBufferCallback:Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager$BufferCallback;

    new-array v0, p1, [B

    invoke-interface {p3, v0}, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager$BufferCallback;->onBufferAvailable([B)V

    goto :goto_1

    .line 90
    :cond_0
    iget-object p3, p0, Lcom/otaliastudios/cameraview/frame/ByteBufferFrameManager;->mBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-array v0, p1, [B

    invoke-virtual {p3, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
