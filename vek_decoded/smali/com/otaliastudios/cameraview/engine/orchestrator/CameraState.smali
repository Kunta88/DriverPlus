.class public final enum Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;
.super Ljava/lang/Enum;
.source "CameraState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

.field public static final enum BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

.field public static final enum ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

.field public static final enum OFF:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

.field public static final enum PREVIEW:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;


# instance fields
.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 6
    new-instance v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->OFF:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    const-string v3, "ENGINE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->ENGINE:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v3, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    const-string v5, "BIND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->BIND:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    new-instance v5, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    const-string v7, "PREVIEW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->PREVIEW:Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->$VALUES:[Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->mState:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;
    .locals 1

    .line 5
    const-class v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    return-object p0
.end method

.method public static values()[Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;
    .locals 1

    .line 5
    sget-object v0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->$VALUES:[Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    invoke-virtual {v0}, [Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;

    return-object v0
.end method


# virtual methods
.method public isAtLeast(Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;)Z
    .locals 1

    .line 15
    iget v0, p0, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->mState:I

    iget p1, p1, Lcom/otaliastudios/cameraview/engine/orchestrator/CameraState;->mState:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
