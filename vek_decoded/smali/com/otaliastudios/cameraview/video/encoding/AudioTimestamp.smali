.class Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;
.super Ljava/lang/Object;
.source "AudioTimestamp.java"


# instance fields
.field private mBaseTimeUs:J

.field private mByteRate:I

.field private mBytesSinceBaseTime:J

.field private mGapUs:J


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->mByteRate:I

    return-void
.end method

.method static bytesToMillis(JI)J
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    int-to-long v0, p2

    .line 24
    div-long/2addr p0, v0

    return-wide p0
.end method

.method static bytesToUs(JI)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p0, p0, v0

    int-to-long v0, p2

    .line 20
    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method getGapCount(I)I
    .locals 5

    .line 89
    iget-wide v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->mGapUs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    int-to-long v0, p1

    .line 90
    iget p1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->mByteRate:I

    invoke-static {v0, v1, p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->bytesToUs(JI)J

    move-result-wide v0

    .line 91
    iget-wide v2, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->mGapUs:J

    div-long/2addr v2, v0

    long-to-int p1, v2

    return p1
.end method

.method getGapStartUs(J)J
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->mGapUs:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method increaseUs(I)J
    .locals 14

    int-to-long v0, p1

    .line 48
    iget p1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->mByteRate:I

    invoke-static {v0, v1, p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->bytesToUs(JI)J

    move-result-wide v2

    .line 49
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v4, v2

    .line 53
    iget-wide v6, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->mBytesSinceBaseTime:J

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-nez p1, :cond_0

    iput-wide v4, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->mBaseTimeUs:J

    .line 58
    :cond_0
    iget-wide v10, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->mBaseTimeUs:J

    iget p1, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->mByteRate:I

    invoke-static {v6, v7, p1}, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->bytesToUs(JI)J

    move-result-wide v6

    add-long/2addr v10, v6

    sub-long v6, v4, v10

    const-wide/16 v12, 0x2

    mul-long v2, v2, v12

    cmp-long p1, v6, v2

    if-ltz p1, :cond_1

    .line 64
    iput-wide v4, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->mBaseTimeUs:J

    .line 65
    iput-wide v0, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->mBytesSinceBaseTime:J

    .line 66
    iput-wide v6, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->mGapUs:J

    return-wide v4

    .line 75
    :cond_1
    iput-wide v8, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->mGapUs:J

    .line 76
    iget-wide v2, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->mBytesSinceBaseTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/otaliastudios/cameraview/video/encoding/AudioTimestamp;->mBytesSinceBaseTime:J

    return-wide v10
.end method
