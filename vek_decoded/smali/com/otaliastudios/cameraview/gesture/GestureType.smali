.class public final enum Lcom/otaliastudios/cameraview/gesture/GestureType;
.super Ljava/lang/Enum;
.source "GestureType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/otaliastudios/cameraview/gesture/GestureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/otaliastudios/cameraview/gesture/GestureType;

.field public static final enum CONTINUOUS:Lcom/otaliastudios/cameraview/gesture/GestureType;

.field public static final enum ONE_SHOT:Lcom/otaliastudios/cameraview/gesture/GestureType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/otaliastudios/cameraview/gesture/GestureType;

    const-string v1, "ONE_SHOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/otaliastudios/cameraview/gesture/GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/otaliastudios/cameraview/gesture/GestureType;->ONE_SHOT:Lcom/otaliastudios/cameraview/gesture/GestureType;

    .line 22
    new-instance v1, Lcom/otaliastudios/cameraview/gesture/GestureType;

    const-string v3, "CONTINUOUS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/otaliastudios/cameraview/gesture/GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/otaliastudios/cameraview/gesture/GestureType;->CONTINUOUS:Lcom/otaliastudios/cameraview/gesture/GestureType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/otaliastudios/cameraview/gesture/GestureType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 8
    sput-object v3, Lcom/otaliastudios/cameraview/gesture/GestureType;->$VALUES:[Lcom/otaliastudios/cameraview/gesture/GestureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/otaliastudios/cameraview/gesture/GestureType;
    .locals 1

    .line 8
    const-class v0, Lcom/otaliastudios/cameraview/gesture/GestureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/otaliastudios/cameraview/gesture/GestureType;

    return-object p0
.end method

.method public static values()[Lcom/otaliastudios/cameraview/gesture/GestureType;
    .locals 1

    .line 8
    sget-object v0, Lcom/otaliastudios/cameraview/gesture/GestureType;->$VALUES:[Lcom/otaliastudios/cameraview/gesture/GestureType;

    invoke-virtual {v0}, [Lcom/otaliastudios/cameraview/gesture/GestureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/otaliastudios/cameraview/gesture/GestureType;

    return-object v0
.end method
