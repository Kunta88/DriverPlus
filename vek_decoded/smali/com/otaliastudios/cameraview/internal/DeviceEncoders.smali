.class public Lcom/otaliastudios/cameraview/internal/DeviceEncoders;
.super Ljava/lang/Object;
.source "DeviceEncoders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/internal/DeviceEncoders$AudioException;,
        Lcom/otaliastudios/cameraview/internal/DeviceEncoders$VideoException;
    }
.end annotation


# static fields
.field static ENABLED:Z = false

.field private static final LOG:Lcom/otaliastudios/cameraview/CameraLogger;

.field public static final MODE_PREFER_HARDWARE:I = 0x1

.field public static final MODE_RESPECT_ORDER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DeviceEncoders"


# instance fields
.field private final mAudioCapabilities:Landroid/media/MediaCodecInfo$AudioCapabilities;

.field private final mAudioEncoder:Landroid/media/MediaCodecInfo;

.field private final mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

.field private final mVideoEncoder:Landroid/media/MediaCodecInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    const-class v0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->create(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->ENABLED:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 7

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    sget-boolean v0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->ENABLED:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->getDeviceEncoders()Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-virtual {p0, v0, p2, p1, p4}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->findDeviceEncoder(Ljava/util/List;Ljava/lang/String;II)Landroid/media/MediaCodecInfo;

    move-result-object p4

    iput-object p4, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoEncoder:Landroid/media/MediaCodecInfo;

    .line 115
    sget-object v3, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Enabled. Found video encoder:"

    aput-object v6, v5, v1

    invoke-virtual {p4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    invoke-virtual {p0, v0, p3, p1, p5}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->findDeviceEncoder(Ljava/util/List;Ljava/lang/String;II)Landroid/media/MediaCodecInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mAudioEncoder:Landroid/media/MediaCodecInfo;

    new-array p5, v4, [Ljava/lang/Object;

    const-string v0, "Enabled. Found audio encoder:"

    aput-object v0, p5, v1

    .line 117
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p5, v2

    invoke-virtual {v3, p5}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    invoke-virtual {p4, p2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p2

    .line 119
    invoke-virtual {p2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p2

    iput-object p2, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 120
    invoke-virtual {p1, p3}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mAudioCapabilities:Landroid/media/MediaCodecInfo$AudioCapabilities;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoEncoder:Landroid/media/MediaCodecInfo;

    .line 124
    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mAudioEncoder:Landroid/media/MediaCodecInfo;

    .line 125
    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 126
    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mAudioCapabilities:Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 127
    sget-object p1, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "Disabled."

    aput-object p3, p2, v1

    invoke-virtual {p1, p2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method findDeviceEncoder(Ljava/util/List;Ljava/lang/String;II)Landroid/media/MediaCodecInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Landroid/media/MediaCodecInfo;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodecInfo;

    .line 185
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v3

    .line 186
    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 187
    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 188
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 193
    :cond_2
    sget-object p1, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "findDeviceEncoder -"

    aput-object v3, v1, v2

    const-string v2, "type:"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    const-string v4, "encoders:"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p1, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    if-ne p3, v3, :cond_3

    .line 195
    new-instance p1, Lcom/otaliastudios/cameraview/internal/DeviceEncoders$1;

    invoke-direct {p1, p0}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders$1;-><init>(Lcom/otaliastudios/cameraview/internal/DeviceEncoders;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 204
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p3, p4, 0x1

    if-lt p1, p3, :cond_4

    .line 209
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaCodecInfo;

    return-object p1

    .line 207
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No encoders for type:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public getAudioEncoder()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mAudioEncoder:Landroid/media/MediaCodecInfo;

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getDeviceEncoders()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    new-instance v1, Landroid/media/MediaCodecList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v1}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 141
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 142
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSupportedAudioBitRate(I)I
    .locals 5

    .line 337
    sget-boolean v0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->ENABLED:Z

    if-nez v0, :cond_0

    return p1

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mAudioCapabilities:Landroid/media/MediaCodecInfo$AudioCapabilities;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 339
    sget-object v1, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getSupportedAudioBitRate -"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "inputRate:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 340
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x3

    const-string v3, "adjustedRate:"

    aput-object v3, v2, p1

    const/4 p1, 0x4

    .line 341
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    .line 339
    invoke-virtual {v1, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    return v0
.end method

.method public getSupportedVideoBitRate(I)I
    .locals 5

    .line 301
    sget-boolean v0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->ENABLED:Z

    if-nez v0, :cond_0

    return p1

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 303
    sget-object v1, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getSupportedVideoBitRate -"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "inputRate:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 304
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x3

    const-string v3, "adjustedRate:"

    aput-object v3, v2, p1

    const/4 p1, 0x4

    .line 305
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    .line 303
    invoke-virtual {v1, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    return v0
.end method

.method public getSupportedVideoFrameRate(Lcom/otaliastudios/cameraview/size/Size;I)I
    .locals 4

    .line 318
    sget-boolean v0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->ENABLED:Z

    if-nez v0, :cond_0

    return p2

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 320
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRatesFor(II)Landroid/util/Range;

    move-result-object p1

    int-to-double v0, p2

    .line 321
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-int p1, v0

    .line 322
    sget-object v0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getSupportedVideoFrameRate -"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "inputRate:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 323
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x3

    const-string v2, "adjustedRate:"

    aput-object v2, v1, p2

    const/4 p2, 0x4

    .line 324
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p2

    .line 322
    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    return p1
.end method

.method public getSupportedVideoSize(Lcom/otaliastudios/cameraview/size/Size;)Lcom/otaliastudios/cameraview/size/Size;
    .locals 14

    .line 222
    sget-boolean v0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->ENABLED:Z

    if-nez v0, :cond_0

    return-object p1

    .line 223
    :cond_0
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v0

    .line 224
    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result p1

    int-to-double v1, v0

    int-to-double v3, p1

    .line 225
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    .line 226
    sget-object v3, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "getSupportedVideoSize - started. width:"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const/4 v6, 0x2

    const-string v9, "height:"

    aput-object v9, v5, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v5, v11

    invoke-virtual {v3, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 229
    iget-object v5, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v0, :cond_1

    .line 230
    iget-object p1, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v12, v0

    .line 231
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int p1, v12

    new-array v5, v4, [Ljava/lang/Object;

    const-string v10, "getSupportedVideoSize - exceeds maxWidth! width:"

    aput-object v10, v5, v7

    .line 232
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v8

    aput-object v9, v5, v6

    .line 233
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v11

    .line 232
    invoke-virtual {v3, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 237
    :cond_1
    iget-object v5, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, p1, :cond_2

    .line 238
    iget-object p1, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v12, p1

    .line 239
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v0, v12

    new-array v5, v4, [Ljava/lang/Object;

    const-string v10, "getSupportedVideoSize - exceeds maxHeight! width:"

    aput-object v10, v5, v7

    .line 240
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v8

    aput-object v9, v5, v6

    .line 241
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v11

    .line 240
    invoke-virtual {v3, v5}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 245
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v3

    rem-int v3, v0, v3

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 246
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v3

    rem-int v3, p1, v3

    if-eqz v3, :cond_4

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 247
    :cond_4
    sget-object v3, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "getSupportedVideoSize - aligned. width:"

    aput-object v5, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v9, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-virtual {v3, v4}, Lcom/otaliastudios/cameraview/CameraLogger;->i([Ljava/lang/Object;)Ljava/lang/String;

    .line 250
    iget-object v3, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    const-string v4, " Range:"

    const/4 v5, 0x0

    if-eqz v3, :cond_a

    .line 255
    iget-object v3, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 264
    :try_start_0
    iget-object v3, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v3, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeightsFor(I)Landroid/util/Range;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 266
    iget-object v3, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 267
    iget-object v4, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v4

    move v6, v0

    :cond_5
    if-lt v6, v3, :cond_7

    add-int/lit8 v6, v6, -0x20

    .line 272
    :goto_2
    rem-int v9, v6, v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_6

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_6
    int-to-double v9, v6

    .line 273
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v1

    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v10, v9

    .line 274
    iget-object v9, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v9, v6}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeightsFor(I)Landroid/util/Range;

    move-result-object v9

    .line 275
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 276
    sget-object v1, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->LOG:Lcom/otaliastudios/cameraview/CameraLogger;

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "getSupportedVideoSize - restarting with smaller size."

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/otaliastudios/cameraview/CameraLogger;->w([Ljava/lang/Object;)Ljava/lang/String;

    .line 277
    new-instance v1, Lcom/otaliastudios/cameraview/size/Size;

    invoke-direct {v1, v6, v10}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->getSupportedVideoSize(Lcom/otaliastudios/cameraview/size/Size;)Lcom/otaliastudios/cameraview/size/Size;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    nop

    .line 284
    :cond_7
    iget-object v1, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v1, v0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 289
    new-instance v1, Lcom/otaliastudios/cameraview/size/Size;

    invoke-direct {v1, v0, p1}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    return-object v1

    .line 285
    :cond_8
    new-instance v1, Lcom/otaliastudios/cameraview/internal/DeviceEncoders$VideoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size not supported for unknown reason. Might be an aspect ratio issue. Desired size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Lcom/otaliastudios/cameraview/size/Size;

    invoke-direct {v3, v0, p1}, Lcom/otaliastudios/cameraview/size/Size;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1, v5}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders$VideoException;-><init>(Lcom/otaliastudios/cameraview/internal/DeviceEncoders;Ljava/lang/String;Lcom/otaliastudios/cameraview/internal/DeviceEncoders$1;)V

    throw v1

    .line 256
    :cond_9
    new-instance v0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders$VideoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Height not supported after adjustment. Desired:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 258
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1, v5}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders$VideoException;-><init>(Lcom/otaliastudios/cameraview/internal/DeviceEncoders;Ljava/lang/String;Lcom/otaliastudios/cameraview/internal/DeviceEncoders$1;)V

    throw v0

    .line 251
    :cond_a
    new-instance p1, Lcom/otaliastudios/cameraview/internal/DeviceEncoders$VideoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Width not supported after adjustment. Desired:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 253
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0, v5}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders$VideoException;-><init>(Lcom/otaliastudios/cameraview/internal/DeviceEncoders;Ljava/lang/String;Lcom/otaliastudios/cameraview/internal/DeviceEncoders$1;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getVideoEncoder()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoEncoder:Landroid/media/MediaCodecInfo;

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method isHardwareEncoder(Ljava/lang/String;)Z
    .locals 2

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "omx.google."

    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "c2.android."

    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "omx."

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "c2."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    xor-int/2addr p1, v1

    return p1
.end method

.method public tryConfigureAudio(Ljava/lang/String;III)V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mAudioEncoder:Landroid/media/MediaCodecInfo;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 415
    :try_start_0
    invoke-static {p1, p3, p4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const/4 p3, 0x2

    if-ne p4, p3, :cond_0

    const/16 p3, 0xc

    goto :goto_0

    :cond_0
    const/16 p3, 0x10

    :goto_0
    const-string p4, "channel-mask"

    .line 419
    invoke-virtual {p1, p4, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p3, "bitrate"

    .line 420
    invoke-virtual {p1, p3, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 422
    iget-object p2, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mAudioEncoder:Landroid/media/MediaCodecInfo;

    invoke-virtual {p2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, 0x1

    .line 423
    :try_start_1
    invoke-virtual {p2, p1, v0, v0, p3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_2

    .line 430
    :try_start_2
    invoke-virtual {p2}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object p2, v0

    .line 426
    :goto_1
    :try_start_3
    new-instance p3, Lcom/otaliastudios/cameraview/internal/DeviceEncoders$AudioException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to configure video audio: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p0, p1, v0}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders$AudioException;-><init>(Lcom/otaliastudios/cameraview/internal/DeviceEncoders;Ljava/lang/String;Lcom/otaliastudios/cameraview/internal/DeviceEncoders$1;)V

    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_2
    if-eqz v0, :cond_1

    .line 430
    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 433
    :catch_2
    :cond_1
    throw p1

    :catch_3
    :cond_2
    :goto_3
    return-void
.end method

.method public tryConfigureVideo(Ljava/lang/String;Lcom/otaliastudios/cameraview/size/Size;II)V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoEncoder:Landroid/media/MediaCodecInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 385
    :try_start_0
    invoke-virtual {p2}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v1

    .line 386
    invoke-virtual {p2}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result p2

    .line 385
    invoke-static {p1, v1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string p2, "color-format"

    const v1, 0x7f000789

    .line 387
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "bitrate"

    .line 389
    invoke-virtual {p1, p2, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "frame-rate"

    .line 390
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "i-frame-interval"

    const/4 p3, 0x1

    .line 391
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 392
    iget-object p2, p0, Lcom/otaliastudios/cameraview/internal/DeviceEncoders;->mVideoEncoder:Landroid/media/MediaCodecInfo;

    invoke-virtual {p2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :try_start_1
    invoke-virtual {p2, p1, v0, v0, p3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_1

    .line 400
    :try_start_2
    invoke-virtual {p2}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object p2, v0

    .line 396
    :goto_0
    :try_start_3
    new-instance p3, Lcom/otaliastudios/cameraview/internal/DeviceEncoders$VideoException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to configure video codec: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p0, p1, v0}, Lcom/otaliastudios/cameraview/internal/DeviceEncoders$VideoException;-><init>(Lcom/otaliastudios/cameraview/internal/DeviceEncoders;Ljava/lang/String;Lcom/otaliastudios/cameraview/internal/DeviceEncoders$1;)V

    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_1
    if-eqz v0, :cond_0

    .line 400
    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 403
    :catch_2
    :cond_0
    throw p1

    :catch_3
    :cond_1
    :goto_2
    return-void
.end method
