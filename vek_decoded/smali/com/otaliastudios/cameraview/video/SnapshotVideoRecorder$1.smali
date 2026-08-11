.class synthetic Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder$1;
.super Ljava/lang/Object;
.source "SnapshotVideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$otaliastudios$cameraview$controls$AudioCodec:[I

.field static final synthetic $SwitchMap$com$otaliastudios$cameraview$controls$VideoCodec:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 148
    invoke-static {}, Lcom/otaliastudios/cameraview/controls/AudioCodec;->values()[Lcom/otaliastudios/cameraview/controls/AudioCodec;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder$1;->$SwitchMap$com$otaliastudios$cameraview$controls$AudioCodec:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/otaliastudios/cameraview/controls/AudioCodec;->AAC:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    invoke-virtual {v2}, Lcom/otaliastudios/cameraview/controls/AudioCodec;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder$1;->$SwitchMap$com$otaliastudios$cameraview$controls$AudioCodec:[I

    sget-object v3, Lcom/otaliastudios/cameraview/controls/AudioCodec;->HE_AAC:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/controls/AudioCodec;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder$1;->$SwitchMap$com$otaliastudios$cameraview$controls$AudioCodec:[I

    sget-object v4, Lcom/otaliastudios/cameraview/controls/AudioCodec;->AAC_ELD:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/controls/AudioCodec;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder$1;->$SwitchMap$com$otaliastudios$cameraview$controls$AudioCodec:[I

    sget-object v4, Lcom/otaliastudios/cameraview/controls/AudioCodec;->DEVICE_DEFAULT:Lcom/otaliastudios/cameraview/controls/AudioCodec;

    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/controls/AudioCodec;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 142
    :catch_3
    invoke-static {}, Lcom/otaliastudios/cameraview/controls/VideoCodec;->values()[Lcom/otaliastudios/cameraview/controls/VideoCodec;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder$1;->$SwitchMap$com$otaliastudios$cameraview$controls$VideoCodec:[I

    :try_start_4
    sget-object v4, Lcom/otaliastudios/cameraview/controls/VideoCodec;->H_263:Lcom/otaliastudios/cameraview/controls/VideoCodec;

    invoke-virtual {v4}, Lcom/otaliastudios/cameraview/controls/VideoCodec;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder$1;->$SwitchMap$com$otaliastudios$cameraview$controls$VideoCodec:[I

    sget-object v3, Lcom/otaliastudios/cameraview/controls/VideoCodec;->H_264:Lcom/otaliastudios/cameraview/controls/VideoCodec;

    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/controls/VideoCodec;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/otaliastudios/cameraview/video/SnapshotVideoRecorder$1;->$SwitchMap$com$otaliastudios$cameraview$controls$VideoCodec:[I

    sget-object v1, Lcom/otaliastudios/cameraview/controls/VideoCodec;->DEVICE_DEFAULT:Lcom/otaliastudios/cameraview/controls/VideoCodec;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/controls/VideoCodec;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
