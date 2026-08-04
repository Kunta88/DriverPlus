.class synthetic Lcom/otaliastudios/cameraview/overlay/OverlayLayout$1;
.super Ljava/lang/Object;
.source "OverlayLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/overlay/OverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$otaliastudios$cameraview$overlay$Overlay$Target:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 117
    invoke-static {}, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;->values()[Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/otaliastudios/cameraview/overlay/OverlayLayout$1;->$SwitchMap$com$otaliastudios$cameraview$overlay$Overlay$Target:[I

    :try_start_0
    sget-object v1, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;->PREVIEW:Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/otaliastudios/cameraview/overlay/OverlayLayout$1;->$SwitchMap$com$otaliastudios$cameraview$overlay$Overlay$Target:[I

    sget-object v1, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;->VIDEO_SNAPSHOT:Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/otaliastudios/cameraview/overlay/OverlayLayout$1;->$SwitchMap$com$otaliastudios$cameraview$overlay$Overlay$Target:[I

    sget-object v1, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;->PICTURE_SNAPSHOT:Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
