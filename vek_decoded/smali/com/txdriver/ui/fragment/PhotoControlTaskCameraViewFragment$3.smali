.class synthetic Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$3;
.super Ljava/lang/Object;
.source "PhotoControlTaskCameraViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$otaliastudios$cameraview$controls$Flash:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 289
    invoke-static {}, Lcom/otaliastudios/cameraview/controls/Flash;->values()[Lcom/otaliastudios/cameraview/controls/Flash;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$3;->$SwitchMap$com$otaliastudios$cameraview$controls$Flash:[I

    :try_start_0
    sget-object v1, Lcom/otaliastudios/cameraview/controls/Flash;->AUTO:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/controls/Flash;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$3;->$SwitchMap$com$otaliastudios$cameraview$controls$Flash:[I

    sget-object v1, Lcom/otaliastudios/cameraview/controls/Flash;->ON:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/controls/Flash;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$3;->$SwitchMap$com$otaliastudios$cameraview$controls$Flash:[I

    sget-object v1, Lcom/otaliastudios/cameraview/controls/Flash;->OFF:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/controls/Flash;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
