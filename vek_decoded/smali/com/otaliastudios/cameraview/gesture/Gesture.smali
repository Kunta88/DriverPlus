.class public final enum Lcom/otaliastudios/cameraview/gesture/Gesture;
.super Ljava/lang/Enum;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/otaliastudios/cameraview/gesture/Gesture;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/otaliastudios/cameraview/gesture/Gesture;

.field public static final enum LONG_TAP:Lcom/otaliastudios/cameraview/gesture/Gesture;

.field public static final enum PINCH:Lcom/otaliastudios/cameraview/gesture/Gesture;

.field public static final enum SCROLL_HORIZONTAL:Lcom/otaliastudios/cameraview/gesture/Gesture;

.field public static final enum SCROLL_VERTICAL:Lcom/otaliastudios/cameraview/gesture/Gesture;

.field public static final enum TAP:Lcom/otaliastudios/cameraview/gesture/Gesture;


# instance fields
.field private type:Lcom/otaliastudios/cameraview/gesture/GestureType;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 30
    new-instance v0, Lcom/otaliastudios/cameraview/gesture/Gesture;

    sget-object v1, Lcom/otaliastudios/cameraview/gesture/GestureType;->CONTINUOUS:Lcom/otaliastudios/cameraview/gesture/GestureType;

    const-string v2, "PINCH"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/otaliastudios/cameraview/gesture/Gesture;-><init>(Ljava/lang/String;ILcom/otaliastudios/cameraview/gesture/GestureType;)V

    sput-object v0, Lcom/otaliastudios/cameraview/gesture/Gesture;->PINCH:Lcom/otaliastudios/cameraview/gesture/Gesture;

    .line 40
    new-instance v1, Lcom/otaliastudios/cameraview/gesture/Gesture;

    sget-object v2, Lcom/otaliastudios/cameraview/gesture/GestureType;->ONE_SHOT:Lcom/otaliastudios/cameraview/gesture/GestureType;

    const-string v4, "TAP"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/otaliastudios/cameraview/gesture/Gesture;-><init>(Ljava/lang/String;ILcom/otaliastudios/cameraview/gesture/GestureType;)V

    sput-object v1, Lcom/otaliastudios/cameraview/gesture/Gesture;->TAP:Lcom/otaliastudios/cameraview/gesture/Gesture;

    .line 50
    new-instance v2, Lcom/otaliastudios/cameraview/gesture/Gesture;

    sget-object v4, Lcom/otaliastudios/cameraview/gesture/GestureType;->ONE_SHOT:Lcom/otaliastudios/cameraview/gesture/GestureType;

    const-string v6, "LONG_TAP"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/otaliastudios/cameraview/gesture/Gesture;-><init>(Ljava/lang/String;ILcom/otaliastudios/cameraview/gesture/GestureType;)V

    sput-object v2, Lcom/otaliastudios/cameraview/gesture/Gesture;->LONG_TAP:Lcom/otaliastudios/cameraview/gesture/Gesture;

    .line 62
    new-instance v4, Lcom/otaliastudios/cameraview/gesture/Gesture;

    sget-object v6, Lcom/otaliastudios/cameraview/gesture/GestureType;->CONTINUOUS:Lcom/otaliastudios/cameraview/gesture/GestureType;

    const-string v8, "SCROLL_HORIZONTAL"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/otaliastudios/cameraview/gesture/Gesture;-><init>(Ljava/lang/String;ILcom/otaliastudios/cameraview/gesture/GestureType;)V

    sput-object v4, Lcom/otaliastudios/cameraview/gesture/Gesture;->SCROLL_HORIZONTAL:Lcom/otaliastudios/cameraview/gesture/Gesture;

    .line 74
    new-instance v6, Lcom/otaliastudios/cameraview/gesture/Gesture;

    sget-object v8, Lcom/otaliastudios/cameraview/gesture/GestureType;->CONTINUOUS:Lcom/otaliastudios/cameraview/gesture/GestureType;

    const-string v10, "SCROLL_VERTICAL"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/otaliastudios/cameraview/gesture/Gesture;-><init>(Ljava/lang/String;ILcom/otaliastudios/cameraview/gesture/GestureType;)V

    sput-object v6, Lcom/otaliastudios/cameraview/gesture/Gesture;->SCROLL_VERTICAL:Lcom/otaliastudios/cameraview/gesture/Gesture;

    const/4 v8, 0x5

    new-array v8, v8, [Lcom/otaliastudios/cameraview/gesture/Gesture;

    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v7

    aput-object v4, v8, v9

    aput-object v6, v8, v11

    .line 18
    sput-object v8, Lcom/otaliastudios/cameraview/gesture/Gesture;->$VALUES:[Lcom/otaliastudios/cameraview/gesture/Gesture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/otaliastudios/cameraview/gesture/GestureType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/cameraview/gesture/GestureType;",
            ")V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput-object p3, p0, Lcom/otaliastudios/cameraview/gesture/Gesture;->type:Lcom/otaliastudios/cameraview/gesture/GestureType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/otaliastudios/cameraview/gesture/Gesture;
    .locals 1

    .line 18
    const-class v0, Lcom/otaliastudios/cameraview/gesture/Gesture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/otaliastudios/cameraview/gesture/Gesture;

    return-object p0
.end method

.method public static values()[Lcom/otaliastudios/cameraview/gesture/Gesture;
    .locals 1

    .line 18
    sget-object v0, Lcom/otaliastudios/cameraview/gesture/Gesture;->$VALUES:[Lcom/otaliastudios/cameraview/gesture/Gesture;

    invoke-virtual {v0}, [Lcom/otaliastudios/cameraview/gesture/Gesture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/otaliastudios/cameraview/gesture/Gesture;

    return-object v0
.end method


# virtual methods
.method public isAssignableTo(Lcom/otaliastudios/cameraview/gesture/GestureAction;)Z
    .locals 1

    .line 88
    sget-object v0, Lcom/otaliastudios/cameraview/gesture/GestureAction;->NONE:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/gesture/GestureAction;->type()Lcom/otaliastudios/cameraview/gesture/GestureType;

    move-result-object p1

    iget-object v0, p0, Lcom/otaliastudios/cameraview/gesture/Gesture;->type:Lcom/otaliastudios/cameraview/gesture/GestureType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
