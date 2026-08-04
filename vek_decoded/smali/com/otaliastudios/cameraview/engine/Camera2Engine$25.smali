.class synthetic Lcom/otaliastudios/cameraview/engine/Camera2Engine$25;
.super Ljava/lang/Object;
.source "Camera2Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/engine/Camera2Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$otaliastudios$cameraview$controls$PictureFormat:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 415
    invoke-static {}, Lcom/otaliastudios/cameraview/controls/PictureFormat;->values()[Lcom/otaliastudios/cameraview/controls/PictureFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$25;->$SwitchMap$com$otaliastudios$cameraview$controls$PictureFormat:[I

    :try_start_0
    sget-object v1, Lcom/otaliastudios/cameraview/controls/PictureFormat;->JPEG:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/controls/PictureFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$25;->$SwitchMap$com$otaliastudios$cameraview$controls$PictureFormat:[I

    sget-object v1, Lcom/otaliastudios/cameraview/controls/PictureFormat;->DNG:Lcom/otaliastudios/cameraview/controls/PictureFormat;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/controls/PictureFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
