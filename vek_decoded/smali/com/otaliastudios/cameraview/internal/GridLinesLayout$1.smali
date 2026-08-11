.class synthetic Lcom/otaliastudios/cameraview/internal/GridLinesLayout$1;
.super Ljava/lang/Object;
.source "GridLinesLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/internal/GridLinesLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$otaliastudios$cameraview$controls$Grid:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 97
    invoke-static {}, Lcom/otaliastudios/cameraview/controls/Grid;->values()[Lcom/otaliastudios/cameraview/controls/Grid;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/otaliastudios/cameraview/internal/GridLinesLayout$1;->$SwitchMap$com$otaliastudios$cameraview$controls$Grid:[I

    :try_start_0
    sget-object v1, Lcom/otaliastudios/cameraview/controls/Grid;->OFF:Lcom/otaliastudios/cameraview/controls/Grid;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/controls/Grid;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/otaliastudios/cameraview/internal/GridLinesLayout$1;->$SwitchMap$com$otaliastudios$cameraview$controls$Grid:[I

    sget-object v1, Lcom/otaliastudios/cameraview/controls/Grid;->DRAW_3X3:Lcom/otaliastudios/cameraview/controls/Grid;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/controls/Grid;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/otaliastudios/cameraview/internal/GridLinesLayout$1;->$SwitchMap$com$otaliastudios$cameraview$controls$Grid:[I

    sget-object v1, Lcom/otaliastudios/cameraview/controls/Grid;->DRAW_PHI:Lcom/otaliastudios/cameraview/controls/Grid;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/controls/Grid;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/otaliastudios/cameraview/internal/GridLinesLayout$1;->$SwitchMap$com$otaliastudios$cameraview$controls$Grid:[I

    sget-object v1, Lcom/otaliastudios/cameraview/controls/Grid;->DRAW_4X4:Lcom/otaliastudios/cameraview/controls/Grid;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/controls/Grid;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
