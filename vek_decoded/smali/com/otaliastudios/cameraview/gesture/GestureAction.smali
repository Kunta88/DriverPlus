.class public final enum Lcom/otaliastudios/cameraview/gesture/GestureAction;
.super Ljava/lang/Enum;
.source "GestureAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/otaliastudios/cameraview/gesture/GestureAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/otaliastudios/cameraview/gesture/GestureAction;

.field public static final enum AUTO_FOCUS:Lcom/otaliastudios/cameraview/gesture/GestureAction;

.field static final DEFAULT_LONG_TAP:Lcom/otaliastudios/cameraview/gesture/GestureAction;

.field static final DEFAULT_PINCH:Lcom/otaliastudios/cameraview/gesture/GestureAction;

.field static final DEFAULT_SCROLL_HORIZONTAL:Lcom/otaliastudios/cameraview/gesture/GestureAction;

.field static final DEFAULT_SCROLL_VERTICAL:Lcom/otaliastudios/cameraview/gesture/GestureAction;

.field static final DEFAULT_TAP:Lcom/otaliastudios/cameraview/gesture/GestureAction;

.field public static final enum EXPOSURE_CORRECTION:Lcom/otaliastudios/cameraview/gesture/GestureAction;

.field public static final enum FILTER_CONTROL_1:Lcom/otaliastudios/cameraview/gesture/GestureAction;

.field public static final enum FILTER_CONTROL_2:Lcom/otaliastudios/cameraview/gesture/GestureAction;

.field public static final enum NONE:Lcom/otaliastudios/cameraview/gesture/GestureAction;

.field public static final enum TAKE_PICTURE:Lcom/otaliastudios/cameraview/gesture/GestureAction;

.field public static final enum ZOOM:Lcom/otaliastudios/cameraview/gesture/GestureAction;


# instance fields
.field private type:Lcom/otaliastudios/cameraview/gesture/GestureType;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 24
    new-instance v0, Lcom/otaliastudios/cameraview/gesture/GestureAction;

    sget-object v1, Lcom/otaliastudios/cameraview/gesture/GestureType;->ONE_SHOT:Lcom/otaliastudios/cameraview/gesture/GestureType;

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/otaliastudios/cameraview/gesture/GestureAction;-><init>(Ljava/lang/String;IILcom/otaliastudios/cameraview/gesture/GestureType;)V

    sput-object v0, Lcom/otaliastudios/cameraview/gesture/GestureAction;->NONE:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    .line 35
    new-instance v1, Lcom/otaliastudios/cameraview/gesture/GestureAction;

    sget-object v2, Lcom/otaliastudios/cameraview/gesture/GestureType;->ONE_SHOT:Lcom/otaliastudios/cameraview/gesture/GestureType;

    const-string v4, "AUTO_FOCUS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5, v2}, Lcom/otaliastudios/cameraview/gesture/GestureAction;-><init>(Ljava/lang/String;IILcom/otaliastudios/cameraview/gesture/GestureType;)V

    sput-object v1, Lcom/otaliastudios/cameraview/gesture/GestureAction;->AUTO_FOCUS:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    .line 44
    new-instance v2, Lcom/otaliastudios/cameraview/gesture/GestureAction;

    sget-object v4, Lcom/otaliastudios/cameraview/gesture/GestureType;->ONE_SHOT:Lcom/otaliastudios/cameraview/gesture/GestureType;

    const-string v6, "TAKE_PICTURE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v7, v4}, Lcom/otaliastudios/cameraview/gesture/GestureAction;-><init>(Ljava/lang/String;IILcom/otaliastudios/cameraview/gesture/GestureType;)V

    sput-object v2, Lcom/otaliastudios/cameraview/gesture/GestureAction;->TAKE_PICTURE:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    .line 54
    new-instance v4, Lcom/otaliastudios/cameraview/gesture/GestureAction;

    sget-object v6, Lcom/otaliastudios/cameraview/gesture/GestureType;->CONTINUOUS:Lcom/otaliastudios/cameraview/gesture/GestureType;

    const-string v8, "ZOOM"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v9, v6}, Lcom/otaliastudios/cameraview/gesture/GestureAction;-><init>(Ljava/lang/String;IILcom/otaliastudios/cameraview/gesture/GestureType;)V

    sput-object v4, Lcom/otaliastudios/cameraview/gesture/GestureAction;->ZOOM:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    .line 64
    new-instance v6, Lcom/otaliastudios/cameraview/gesture/GestureAction;

    sget-object v8, Lcom/otaliastudios/cameraview/gesture/GestureType;->CONTINUOUS:Lcom/otaliastudios/cameraview/gesture/GestureType;

    const-string v10, "EXPOSURE_CORRECTION"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v11, v8}, Lcom/otaliastudios/cameraview/gesture/GestureAction;-><init>(Ljava/lang/String;IILcom/otaliastudios/cameraview/gesture/GestureType;)V

    sput-object v6, Lcom/otaliastudios/cameraview/gesture/GestureAction;->EXPOSURE_CORRECTION:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    .line 74
    new-instance v8, Lcom/otaliastudios/cameraview/gesture/GestureAction;

    sget-object v10, Lcom/otaliastudios/cameraview/gesture/GestureType;->CONTINUOUS:Lcom/otaliastudios/cameraview/gesture/GestureType;

    const-string v12, "FILTER_CONTROL_1"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v13, v10}, Lcom/otaliastudios/cameraview/gesture/GestureAction;-><init>(Ljava/lang/String;IILcom/otaliastudios/cameraview/gesture/GestureType;)V

    sput-object v8, Lcom/otaliastudios/cameraview/gesture/GestureAction;->FILTER_CONTROL_1:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    .line 84
    new-instance v10, Lcom/otaliastudios/cameraview/gesture/GestureAction;

    sget-object v12, Lcom/otaliastudios/cameraview/gesture/GestureType;->CONTINUOUS:Lcom/otaliastudios/cameraview/gesture/GestureType;

    const-string v14, "FILTER_CONTROL_2"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v15, v12}, Lcom/otaliastudios/cameraview/gesture/GestureAction;-><init>(Ljava/lang/String;IILcom/otaliastudios/cameraview/gesture/GestureType;)V

    sput-object v10, Lcom/otaliastudios/cameraview/gesture/GestureAction;->FILTER_CONTROL_2:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    const/4 v12, 0x7

    new-array v12, v12, [Lcom/otaliastudios/cameraview/gesture/GestureAction;

    aput-object v0, v12, v3

    aput-object v1, v12, v5

    aput-object v2, v12, v7

    aput-object v4, v12, v9

    aput-object v6, v12, v11

    aput-object v8, v12, v13

    aput-object v10, v12, v15

    .line 19
    sput-object v12, Lcom/otaliastudios/cameraview/gesture/GestureAction;->$VALUES:[Lcom/otaliastudios/cameraview/gesture/GestureAction;

    .line 86
    sput-object v0, Lcom/otaliastudios/cameraview/gesture/GestureAction;->DEFAULT_PINCH:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    .line 87
    sput-object v0, Lcom/otaliastudios/cameraview/gesture/GestureAction;->DEFAULT_TAP:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    .line 88
    sput-object v0, Lcom/otaliastudios/cameraview/gesture/GestureAction;->DEFAULT_LONG_TAP:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    .line 89
    sput-object v0, Lcom/otaliastudios/cameraview/gesture/GestureAction;->DEFAULT_SCROLL_HORIZONTAL:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    .line 90
    sput-object v0, Lcom/otaliastudios/cameraview/gesture/GestureAction;->DEFAULT_SCROLL_VERTICAL:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/otaliastudios/cameraview/gesture/GestureType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/otaliastudios/cameraview/gesture/GestureType;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput p3, p0, Lcom/otaliastudios/cameraview/gesture/GestureAction;->value:I

    .line 97
    iput-object p4, p0, Lcom/otaliastudios/cameraview/gesture/GestureAction;->type:Lcom/otaliastudios/cameraview/gesture/GestureType;

    return-void
.end method

.method static fromValue(I)Lcom/otaliastudios/cameraview/gesture/GestureAction;
    .locals 5

    .line 111
    invoke-static {}, Lcom/otaliastudios/cameraview/gesture/GestureAction;->values()[Lcom/otaliastudios/cameraview/gesture/GestureAction;

    move-result-object v0

    .line 112
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 113
    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/gesture/GestureAction;->value()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/otaliastudios/cameraview/gesture/GestureAction;
    .locals 1

    .line 19
    const-class v0, Lcom/otaliastudios/cameraview/gesture/GestureAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/otaliastudios/cameraview/gesture/GestureAction;

    return-object p0
.end method

.method public static values()[Lcom/otaliastudios/cameraview/gesture/GestureAction;
    .locals 1

    .line 19
    sget-object v0, Lcom/otaliastudios/cameraview/gesture/GestureAction;->$VALUES:[Lcom/otaliastudios/cameraview/gesture/GestureAction;

    invoke-virtual {v0}, [Lcom/otaliastudios/cameraview/gesture/GestureAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/otaliastudios/cameraview/gesture/GestureAction;

    return-object v0
.end method


# virtual methods
.method type()Lcom/otaliastudios/cameraview/gesture/GestureType;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/otaliastudios/cameraview/gesture/GestureAction;->type:Lcom/otaliastudios/cameraview/gesture/GestureType;

    return-object v0
.end method

.method value()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/otaliastudios/cameraview/gesture/GestureAction;->value:I

    return v0
.end method
