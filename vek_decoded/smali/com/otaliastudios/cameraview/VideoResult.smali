.class public Lcom/otaliastudios/cameraview/VideoResult;
.super Ljava/lang/Object;
.source "VideoResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/VideoResult$Stub;
    }
.end annotation


# static fields
.field public static final REASON_MAX_DURATION_REACHED:I = 0x2

.field public static final REASON_MAX_SIZE_REACHED:I = 0x1

.field public static final REASON_USER:I


# instance fields
.field private final audio:Lcom/otaliastudios/cameraview/controls/Audio;

.field private final audioBitRate:I

.field private final audioCodec:Lcom/otaliastudios/cameraview/controls/AudioCodec;

.field private final endReason:I

.field private final facing:Lcom/otaliastudios/cameraview/controls/Facing;

.field private final file:Ljava/io/File;

.field private final fileDescriptor:Ljava/io/FileDescriptor;

.field private final isSnapshot:Z

.field private final location:Landroid/location/Location;

.field private final maxDuration:I

.field private final maxSize:J

.field private final rotation:I

.field private final size:Lcom/otaliastudios/cameraview/size/Size;

.field private final videoBitRate:I

.field private final videoCodec:Lcom/otaliastudios/cameraview/controls/VideoCodec;

.field private final videoFrameRate:I


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/VideoResult$Stub;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iget-boolean v0, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->isSnapshot:Z

    iput-boolean v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->isSnapshot:Z

    .line 76
    iget-object v0, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->location:Landroid/location/Location;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->location:Landroid/location/Location;

    .line 77
    iget v0, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->rotation:I

    iput v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->rotation:I

    .line 78
    iget-object v0, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->size:Lcom/otaliastudios/cameraview/size/Size;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->size:Lcom/otaliastudios/cameraview/size/Size;

    .line 79
    iget-object v0, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->file:Ljava/io/File;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->file:Ljava/io/File;

    .line 80
    iget-object v0, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->fileDescriptor:Ljava/io/FileDescriptor;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->fileDescriptor:Ljava/io/FileDescriptor;

    .line 81
    iget-object v0, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->facing:Lcom/otaliastudios/cameraview/controls/Facing;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->facing:Lcom/otaliastudios/cameraview/controls/Facing;

    .line 82
    iget-object v0, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoCodec:Lcom/otaliastudios/cameraview/controls/VideoCodec;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->videoCodec:Lcom/otaliastudios/cameraview/controls/VideoCodec;

    .line 83
    iget-object v0, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audioCodec:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->audioCodec:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    .line 84
    iget-object v0, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audio:Lcom/otaliastudios/cameraview/controls/Audio;

    iput-object v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->audio:Lcom/otaliastudios/cameraview/controls/Audio;

    .line 85
    iget-wide v0, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->maxSize:J

    iput-wide v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->maxSize:J

    .line 86
    iget v0, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->maxDuration:I

    iput v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->maxDuration:I

    .line 87
    iget v0, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->endReason:I

    iput v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->endReason:I

    .line 88
    iget v0, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoBitRate:I

    iput v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->videoBitRate:I

    .line 89
    iget v0, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->videoFrameRate:I

    iput v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->videoFrameRate:I

    .line 90
    iget p1, p1, Lcom/otaliastudios/cameraview/VideoResult$Stub;->audioBitRate:I

    iput p1, p0, Lcom/otaliastudios/cameraview/VideoResult;->audioBitRate:I

    return-void
.end method


# virtual methods
.method public getAudio()Lcom/otaliastudios/cameraview/controls/Audio;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->audio:Lcom/otaliastudios/cameraview/controls/Audio;

    return-object v0
.end method

.method public getAudioBitRate()I
    .locals 1

    .line 254
    iget v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->audioBitRate:I

    return v0
.end method

.method public getAudioCodec()Lcom/otaliastudios/cameraview/controls/AudioCodec;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->audioCodec:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    return-object v0
.end method

.method public getFacing()Lcom/otaliastudios/cameraview/controls/Facing;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->facing:Lcom/otaliastudios/cameraview/controls/Facing;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    return-object v0

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "File is only available when takeVideo(File) is used."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->fileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    return-object v0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "FileDescriptor is only available when takeVideo(FileDescriptor) is used."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getMaxDuration()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->maxDuration:I

    return v0
.end method

.method public getMaxSize()J
    .locals 2

    .line 197
    iget-wide v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->maxSize:J

    return-wide v0
.end method

.method public getRotation()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->rotation:I

    return v0
.end method

.method public getSize()Lcom/otaliastudios/cameraview/size/Size;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->size:Lcom/otaliastudios/cameraview/size/Size;

    return-object v0
.end method

.method public getTerminationReason()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->endReason:I

    return v0
.end method

.method public getVideoBitRate()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->videoBitRate:I

    return v0
.end method

.method public getVideoCodec()Lcom/otaliastudios/cameraview/controls/VideoCodec;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->videoCodec:Lcom/otaliastudios/cameraview/controls/VideoCodec;

    return-object v0
.end method

.method public getVideoFrameRate()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->videoFrameRate:I

    return v0
.end method

.method public isSnapshot()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/VideoResult;->isSnapshot:Z

    return v0
.end method
