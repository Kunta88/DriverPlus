.class public Lcom/otaliastudios/cameraview/frame/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# static fields
.field private static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field private static final TAG:Ljava/lang/String; = "Frame"


# instance fields
.field private mData:Ljava/lang/Object;

.field private final mDataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mFormat:I

.field private mLastTime:J

.field private final mManager:Lcom/otaliastudios/cameraview/frame/FrameManager;

.field private mSize:Lcom/otaliastudios/cameraview/size/Size;

.field private mTime:J

.field private mUserRotation:I

.field private mViewRotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/otaliastudios/cameraview/frame/Frame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/frame/Frame;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method constructor <init>(Lcom/otaliastudios/cameraview/frame/FrameManager;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mData:Ljava/lang/Object;

    const-wide/16 v1, -0x1

    .line 23
    iput-wide v1, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mTime:J

    .line 24
    iput-wide v1, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mLastTime:J

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mUserRotation:I

    .line 26
    iput v1, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mViewRotation:I

    .line 27
    iput-object v0, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mSize:Lcom/otaliastudios/cameraview/size/Size;

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mFormat:I

    .line 31
    iput-object p1, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mManager:Lcom/otaliastudios/cameraview/frame/FrameManager;

    .line 32
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/frame/FrameManager;->getFrameDataClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mDataClass:Ljava/lang/Class;

    return-void
.end method

.method private ensureHasContent()V
    .locals 5

    .line 52
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/frame/Frame;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 53
    :cond_0
    sget-object v0, Lcom/otaliastudios/cameraview/frame/Frame;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Frame is dead! time:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "lastTime:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mLastTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->e([Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You should not access a released frame. If this frame was passed to a FrameProcessor, you can only use its contents synchronously, for the duration of the process() method."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hasContent()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 64
    instance-of v0, p1, Lcom/otaliastudios/cameraview/frame/Frame;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/otaliastudios/cameraview/frame/Frame;

    iget-wide v0, p1, Lcom/otaliastudios/cameraview/frame/Frame;->mTime:J

    iget-wide v2, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mTime:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public freeze()Lcom/otaliastudios/cameraview/frame/Frame;
    .locals 9

    .line 77
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/frame/Frame;->ensureHasContent()V

    .line 78
    new-instance v8, Lcom/otaliastudios/cameraview/frame/Frame;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mManager:Lcom/otaliastudios/cameraview/frame/FrameManager;

    invoke-direct {v8, v0}, Lcom/otaliastudios/cameraview/frame/Frame;-><init>(Lcom/otaliastudios/cameraview/frame/FrameManager;)V

    .line 80
    iget-object v0, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mManager:Lcom/otaliastudios/cameraview/frame/FrameManager;

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/frame/Frame;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/frame/FrameManager;->cloneFrameData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 81
    iget-wide v2, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mTime:J

    iget v4, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mUserRotation:I

    iget v5, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mViewRotation:I

    iget-object v6, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mSize:Lcom/otaliastudios/cameraview/size/Size;

    iget v7, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mFormat:I

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lcom/otaliastudios/cameraview/frame/Frame;->setContent(Ljava/lang/Object;JIILcom/otaliastudios/cameraview/size/Size;I)V

    return-object v8
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/frame/Frame;->ensureHasContent()V

    .line 114
    iget-object v0, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mDataClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .line 192
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/frame/Frame;->ensureHasContent()V

    .line 193
    iget v0, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mFormat:I

    return v0
.end method

.method public getRotation()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/frame/Frame;->getRotationToUser()I

    move-result v0

    return v0
.end method

.method public getRotationToUser()I
    .locals 1

    .line 156
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/frame/Frame;->ensureHasContent()V

    .line 157
    iget v0, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mUserRotation:I

    return v0
.end method

.method public getRotationToView()I
    .locals 1

    .line 168
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/frame/Frame;->ensureHasContent()V

    .line 169
    iget v0, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mViewRotation:I

    return v0
.end method

.method public getSize()Lcom/otaliastudios/cameraview/size/Size;
    .locals 1

    .line 179
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/frame/Frame;->ensureHasContent()V

    .line 180
    iget-object v0, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mSize:Lcom/otaliastudios/cameraview/size/Size;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 136
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/frame/Frame;->ensureHasContent()V

    .line 137
    iget-wide v0, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mTime:J

    return-wide v0
.end method

.method public release()V
    .locals 6

    .line 90
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/frame/Frame;->hasContent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/otaliastudios/cameraview/frame/Frame;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Frame with time"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "is being released."

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->v([Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mData:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mData:Ljava/lang/Object;

    .line 94
    iput v3, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mUserRotation:I

    .line 95
    iput v3, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mViewRotation:I

    const-wide/16 v2, -0x1

    .line 96
    iput-wide v2, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mTime:J

    .line 97
    iput-object v1, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mSize:Lcom/otaliastudios/cameraview/size/Size;

    const/4 v1, -0x1

    .line 98
    iput v1, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mFormat:I

    .line 103
    iget-object v1, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mManager:Lcom/otaliastudios/cameraview/frame/FrameManager;

    invoke-virtual {v1, p0, v0}, Lcom/otaliastudios/cameraview/frame/FrameManager;->onFrameReleased(Lcom/otaliastudios/cameraview/frame/Frame;Ljava/lang/Object;)V

    return-void
.end method

.method setContent(Ljava/lang/Object;JIILcom/otaliastudios/cameraview/size/Size;I)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mData:Ljava/lang/Object;

    .line 38
    iput-wide p2, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mTime:J

    .line 39
    iput-wide p2, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mLastTime:J

    .line 40
    iput p4, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mUserRotation:I

    .line 41
    iput p5, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mViewRotation:I

    .line 42
    iput-object p6, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mSize:Lcom/otaliastudios/cameraview/size/Size;

    .line 43
    iput p7, p0, Lcom/otaliastudios/cameraview/frame/Frame;->mFormat:I

    return-void
.end method
