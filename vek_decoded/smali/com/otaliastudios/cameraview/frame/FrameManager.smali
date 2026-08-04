.class public abstract Lcom/otaliastudios/cameraview/frame/FrameManager;
.super Ljava/lang/Object;
.source "FrameManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field private static final TAG:Ljava/lang/String; = "FrameManager"


# instance fields
.field private mAngles:Lcom/otaliastudios/cameraview/engine/offset/Angles;

.field private mFrameBytes:I

.field private final mFrameDataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mFrameFormat:I

.field private mFrameQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/otaliastudios/cameraview/frame/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameSize:Lcom/otaliastudios/cameraview/size/Size;

.field private final mPoolSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/otaliastudios/cameraview/frame/FrameManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/frame/FrameManager;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mFrameBytes:I

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mFrameSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 37
    iput v0, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mFrameFormat:I

    .line 51
    iput p1, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mPoolSize:I

    .line 52
    iput-object p2, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mFrameDataClass:Ljava/lang/Class;

    .line 53
    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p2, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mFrameQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method final cloneFrameData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 173
    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/frame/FrameManager;->onCloneFrameData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFrame(Ljava/lang/Object;J)Lcom/otaliastudios/cameraview/frame/Frame;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)",
            "Lcom/otaliastudios/cameraview/frame/Frame;"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/frame/FrameManager;->isSetUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mFrameQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/frame/Frame;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "getFrame for time:"

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 135
    sget-object v6, Lcom/otaliastudios/cameraview/frame/FrameManager;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v2

    const-string v2, "RECYCLING."

    aput-object v2, v4, v1

    invoke-virtual {v6, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->v([Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    iget-object v1, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mAngles:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v3, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v4, Lcom/otaliastudios/cameraview/engine/offset/Axis;->RELATIVE_TO_SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    invoke-virtual {v1, v2, v3, v4}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->offset(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I

    move-result v5

    .line 138
    iget-object v1, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mAngles:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    sget-object v2, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v3, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    sget-object v4, Lcom/otaliastudios/cameraview/engine/offset/Axis;->RELATIVE_TO_SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Axis;

    invoke-virtual {v1, v2, v3, v4}, Lcom/otaliastudios/cameraview/engine/offset/Angles;->offset(Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Reference;Lcom/otaliastudios/cameraview/engine/offset/Axis;)I

    move-result v6

    .line 140
    iget-object v7, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mFrameSize:Lcom/otaliastudios/cameraview/size/Size;

    iget v8, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mFrameFormat:I

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/otaliastudios/cameraview/frame/Frame;->setContent(Ljava/lang/Object;JIILcom/otaliastudios/cameraview/size/Size;I)V

    return-object v0

    .line 143
    :cond_0
    sget-object v0, Lcom/otaliastudios/cameraview/frame/FrameManager;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v4, v2

    const-string p2, "NOT AVAILABLE."

    aput-object p2, v4, v1

    invoke-virtual {v0, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    invoke-virtual {p0, p1, v5}, Lcom/otaliastudios/cameraview/frame/FrameManager;->onFrameDataReleased(Ljava/lang/Object;Z)V

    const/4 p1, 0x0

    return-object p1

    .line 129
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t call getFrame() after releasing or before setUp."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getFrameBytes()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mFrameBytes:I

    return v0
.end method

.method public final getFrameDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mFrameDataClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getPoolSize()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mPoolSize:I

    return v0
.end method

.method protected isSetUp()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mFrameSize:Lcom/otaliastudios/cameraview/size/Size;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract onCloneFrameData(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method protected abstract onFrameDataReleased(Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation
.end method

.method onFrameReleased(Lcom/otaliastudios/cameraview/frame/Frame;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/cameraview/frame/Frame;",
            "TT;)V"
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/frame/FrameManager;->isSetUp()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mFrameQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    .line 158
    invoke-virtual {p0, p2, p1}, Lcom/otaliastudios/cameraview/frame/FrameManager;->onFrameDataReleased(Ljava/lang/Object;Z)V

    return-void
.end method

.method public release()V
    .locals 4

    .line 184
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/frame/FrameManager;->isSetUp()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 185
    sget-object v0, Lcom/otaliastudios/cameraview/frame/FrameManager;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "release called twice. Ignoring."

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    return-void

    .line 189
    :cond_0
    sget-object v0, Lcom/otaliastudios/cameraview/frame/FrameManager;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "release: Clearing the frame and buffer queue."

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mFrameQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    const/4 v0, -0x1

    .line 191
    iput v0, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mFrameBytes:I

    const/4 v1, 0x0

    .line 192
    iput-object v1, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mFrameSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 193
    iput v0, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mFrameFormat:I

    .line 194
    iput-object v1, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mAngles:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    return-void
.end method

.method public setUp(ILcom/otaliastudios/cameraview/size/Size;Lcom/otaliastudios/cameraview/engine/offset/Angles;)V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/frame/FrameManager;->isSetUp()Z

    .line 95
    iput-object p2, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mFrameSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 96
    iput p1, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mFrameFormat:I

    .line 97
    invoke-static {p1}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result p1

    .line 98
    invoke-virtual {p2}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result p2

    mul-int v0, v0, p2

    mul-int v0, v0, p1

    int-to-long p1, v0

    long-to-double p1, p1

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    .line 99
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mFrameBytes:I

    const/4 p1, 0x0

    .line 100
    :goto_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/frame/FrameManager;->getPoolSize()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 101
    iget-object p2, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mFrameQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/otaliastudios/cameraview/frame/Frame;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/frame/Frame;-><init>(Lcom/otaliastudios/cameraview/frame/FrameManager;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iput-object p3, p0, Lcom/otaliastudios/cameraview/frame/FrameManager;->mAngles:Lcom/otaliastudios/cameraview/engine/offset/Angles;

    return-void
.end method
