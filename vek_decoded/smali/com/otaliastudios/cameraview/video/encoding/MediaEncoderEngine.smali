.class public Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;
.super Ljava/lang/Object;
.source "MediaEncoderEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;,
        Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG_PERFORMANCE:Z = true

.field public static final END_BY_MAX_DURATION:I = 0x1

.field public static final END_BY_MAX_SIZE:I = 0x2

.field public static final END_BY_USER:I = 0x0

.field private static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field private static final TAG:Ljava/lang/String; = "MediaEncoderEngine"


# instance fields
.field private final mController:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;

.field private final mControllerLock:Ljava/lang/Object;

.field private final mControllerThread:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

.field private final mEncoders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private mEndReason:I

.field private mListener:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Listener;

.field private mMediaMuxer:Landroid/media/MediaMuxer;

.field private mMediaMuxerStarted:Z

.field private mPossibleEndReason:I

.field private mStartedEncodersCount:I

.field private mStoppedEncodersCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    const-class v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;IJLcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Listener;)V
    .locals 8

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mEncoders:Ljava/util/List;

    const/4 v1, 0x0

    .line 102
    iput v1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mStartedEncodersCount:I

    .line 103
    iput v1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mStoppedEncodersCount:I

    .line 104
    iput-boolean v1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mMediaMuxerStarted:Z

    .line 105
    new-instance v2, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;

    invoke-direct {v2, p0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;-><init>(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)V

    iput-object v2, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mController:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;

    const-string v2, "EncoderEngine"

    .line 107
    invoke-static {v2}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->get(Ljava/lang/String;)Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mControllerThread:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    .line 108
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mControllerLock:Ljava/lang/Object;

    .line 110
    iput v1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mEndReason:I

    .line 130
    iput-object p7, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mListener:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Listener;

    .line 131
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 133
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    :try_start_0
    new-instance p2, Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mMediaMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;

    .line 147
    invoke-virtual {p3}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->getEncodedBitRate()I

    move-result p3

    add-int/2addr p2, p3

    goto :goto_0

    .line 149
    :cond_1
    div-int/lit8 p2, p2, 0x8

    int-to-long p1, p2

    .line 150
    div-long p1, p5, p1

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    mul-long p1, p1, v2

    int-to-long v4, p4

    mul-long v4, v4, v2

    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v6, 0x0

    const/4 p3, 0x1

    const/4 p7, 0x2

    cmp-long v0, p5, v6

    if-lez v0, :cond_3

    if-lez p4, :cond_3

    cmp-long p4, p1, v4

    if-gez p4, :cond_2

    const/4 p4, 0x2

    goto :goto_1

    :cond_2
    const/4 p4, 0x1

    .line 154
    :goto_1
    iput p4, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mPossibleEndReason:I

    .line 156
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    goto :goto_2

    :cond_3
    cmp-long v0, p5, v6

    if-lez v0, :cond_4

    .line 158
    iput p7, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mPossibleEndReason:I

    goto :goto_2

    :cond_4
    if-lez p4, :cond_5

    .line 161
    iput p3, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mPossibleEndReason:I

    move-wide p1, v4

    goto :goto_2

    :cond_5
    move-wide p1, v2

    .line 164
    :goto_2
    sget-object p4, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array p5, p7, [Ljava/lang/Object;

    const-string p6, "Computed a max duration of"

    aput-object p6, p5, v1

    long-to-float p6, p1

    const p7, 0x49742400    # 1000000.0f

    div-float/2addr p6, p7

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    aput-object p6, p5, p3

    invoke-virtual {p4, p5}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 165
    iget-object p3, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mEncoders:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;

    .line 166
    iget-object p5, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mController:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;

    invoke-virtual {p4, p5, p1, p2}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->prepare(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;J)V

    goto :goto_3

    :cond_6
    return-void

    :catch_0
    move-exception p1

    .line 139
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method

.method static synthetic access$000(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)Ljava/lang/Object;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mControllerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mMediaMuxerStarted:Z

    return p0
.end method

.method static synthetic access$1004(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)I
    .locals 1

    .line 56
    iget v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mStoppedEncodersCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mStoppedEncodersCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mMediaMuxerStarted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->end()V

    return-void
.end method

.method static synthetic access$200(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)Landroid/media/MediaMuxer;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    return-object p0
.end method

.method static synthetic access$300()Lcom/otaliastudios/cameraview/CameraLogger;
    .locals 1

    .line 56
    sget-object v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    return-object v0
.end method

.method static synthetic access$404(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)I
    .locals 1

    .line 56
    iget v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mStartedEncodersCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mStartedEncodersCount:I

    return v0
.end method

.method static synthetic access$406(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)I
    .locals 1

    .line 56
    iget v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mStartedEncodersCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mStartedEncodersCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)Ljava/util/List;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mEncoders:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Listener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mListener:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Listener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)Lcom/otaliastudios/cameraview/internal/WorkerHandler;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mControllerThread:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    return-object p0
.end method

.method static synthetic access$802(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mEndReason:I

    return p1
.end method

.method static synthetic access$900(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mPossibleEndReason:I

    return p0
.end method

.method private end()V
    .locals 10

    .line 216
    sget-object v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "end:"

    aput-object v4, v2, v3

    const-string v5, "Releasing muxer after all encoders have been released."

    const/4 v6, 0x1

    aput-object v5, v2, v6

    invoke-virtual {v0, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 223
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 228
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v5}, Landroid/media/MediaMuxer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    if-nez v0, :cond_0

    move-object v0, v5

    .line 232
    :cond_0
    :goto_1
    iput-object v2, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    goto :goto_2

    :cond_1
    move-object v0, v2

    .line 234
    :goto_2
    sget-object v5, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v3

    const-string v8, "Dispatching end to listener - reason:"

    aput-object v8, v7, v6

    iget v8, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mEndReason:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v8, 0x3

    const-string v9, "error:"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object v0, v7, v8

    invoke-virtual {v5, v7}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 235
    iget-object v7, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mListener:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Listener;

    if-eqz v7, :cond_2

    .line 236
    iget v8, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mEndReason:I

    invoke-interface {v7, v8, v0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Listener;->onEncodingEnd(ILjava/lang/Exception;)V

    .line 237
    iput-object v2, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mListener:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Listener;

    .line 239
    :cond_2
    iput v3, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mEndReason:I

    .line 240
    iput v3, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mStartedEncodersCount:I

    .line 241
    iput v3, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mStoppedEncodersCount:I

    .line 242
    iput-boolean v3, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mMediaMuxerStarted:Z

    .line 243
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mControllerThread:Lcom/otaliastudios/cameraview/internal/WorkerHandler;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/internal/WorkerHandler;->destroy()V

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v4, v0, v3

    const-string v1, "Completed."

    aput-object v1, v0, v6

    .line 244
    invoke-virtual {v5, v0}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAudioEncoder()Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mEncoders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mEncoders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/video/encoding/AudioMediaEncoder;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoEncoder()Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mEncoders:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/cameraview/video/encoding/VideoMediaEncoder;

    return-object v0
.end method

.method public final notify(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 188
    sget-object v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Passing event to encoders:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->v([Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mEncoders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;

    .line 190
    invoke-virtual {v1, p1, p2}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->notify(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final start()V
    .locals 4

    .line 174
    sget-object v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Passing event to encoders:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "START"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mEncoders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;

    .line 176
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->start()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 4

    .line 201
    sget-object v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Passing event to encoders:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "STOP"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mEncoders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;

    .line 203
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoder;->stop()V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->mListener:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Listener;

    if-eqz v0, :cond_1

    .line 206
    invoke-interface {v0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Listener;->onEncodingStop()V

    :cond_1
    return-void
.end method
