.class public final enum Lcom/otaliastudios/cameraview/controls/WhiteBalance;
.super Ljava/lang/Enum;
.source "WhiteBalance.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/controls/Control;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/otaliastudios/cameraview/controls/WhiteBalance;",
        ">;",
        "Lcom/otaliastudios/cameraview/controls/Control;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/otaliastudios/cameraview/controls/WhiteBalance;

.field public static final enum AUTO:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

.field public static final enum CLOUDY:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

.field public static final enum DAYLIGHT:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

.field static final DEFAULT:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

.field public static final enum FLUORESCENT:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

.field public static final enum INCANDESCENT:Lcom/otaliastudios/cameraview/controls/WhiteBalance;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 23
    new-instance v0, Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/otaliastudios/cameraview/controls/WhiteBalance;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->AUTO:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    .line 31
    new-instance v1, Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    const-string v3, "INCANDESCENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/otaliastudios/cameraview/controls/WhiteBalance;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->INCANDESCENT:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    .line 39
    new-instance v3, Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    const-string v5, "FLUORESCENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/otaliastudios/cameraview/controls/WhiteBalance;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->FLUORESCENT:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    .line 47
    new-instance v5, Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    const-string v7, "DAYLIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/otaliastudios/cameraview/controls/WhiteBalance;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->DAYLIGHT:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    .line 55
    new-instance v7, Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    const-string v9, "CLOUDY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/otaliastudios/cameraview/controls/WhiteBalance;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->CLOUDY:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 15
    sput-object v9, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->$VALUES:[Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    .line 57
    sput-object v0, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->DEFAULT:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->value:I

    return-void
.end method

.method static fromValue(I)Lcom/otaliastudios/cameraview/controls/WhiteBalance;
    .locals 5

    .line 71
    invoke-static {}, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->values()[Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    move-result-object v0

    .line 72
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 73
    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->value()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_1
    sget-object p0, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->DEFAULT:Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/otaliastudios/cameraview/controls/WhiteBalance;
    .locals 1

    .line 15
    const-class v0, Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    return-object p0
.end method

.method public static values()[Lcom/otaliastudios/cameraview/controls/WhiteBalance;
    .locals 1

    .line 15
    sget-object v0, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->$VALUES:[Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    invoke-virtual {v0}, [Lcom/otaliastudios/cameraview/controls/WhiteBalance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    return-object v0
.end method


# virtual methods
.method value()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/otaliastudios/cameraview/controls/WhiteBalance;->value:I

    return v0
.end method
