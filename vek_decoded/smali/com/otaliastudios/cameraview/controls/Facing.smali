.class public final enum Lcom/otaliastudios/cameraview/controls/Facing;
.super Ljava/lang/Enum;
.source "Facing.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/controls/Control;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/otaliastudios/cameraview/controls/Facing;",
        ">;",
        "Lcom/otaliastudios/cameraview/controls/Control;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/otaliastudios/cameraview/controls/Facing;

.field public static final enum BACK:Lcom/otaliastudios/cameraview/controls/Facing;

.field public static final enum FRONT:Lcom/otaliastudios/cameraview/controls/Facing;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lcom/otaliastudios/cameraview/controls/Facing;

    const-string v1, "BACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/otaliastudios/cameraview/controls/Facing;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/otaliastudios/cameraview/controls/Facing;->BACK:Lcom/otaliastudios/cameraview/controls/Facing;

    .line 27
    new-instance v1, Lcom/otaliastudios/cameraview/controls/Facing;

    const-string v3, "FRONT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/otaliastudios/cameraview/controls/Facing;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/otaliastudios/cameraview/controls/Facing;->FRONT:Lcom/otaliastudios/cameraview/controls/Facing;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/otaliastudios/cameraview/controls/Facing;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 17
    sput-object v3, Lcom/otaliastudios/cameraview/controls/Facing;->$VALUES:[Lcom/otaliastudios/cameraview/controls/Facing;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/otaliastudios/cameraview/controls/Facing;->value:I

    return-void
.end method

.method static DEFAULT(Landroid/content/Context;)Lcom/otaliastudios/cameraview/controls/Facing;
    .locals 2

    if-nez p0, :cond_0

    .line 32
    sget-object p0, Lcom/otaliastudios/cameraview/controls/Facing;->BACK:Lcom/otaliastudios/cameraview/controls/Facing;

    return-object p0

    .line 33
    :cond_0
    sget-object v0, Lcom/otaliastudios/cameraview/controls/Facing;->BACK:Lcom/otaliastudios/cameraview/controls/Facing;

    invoke-static {p0, v0}, Lcom/otaliastudios/cameraview/CameraUtils;->hasCameraFacing(Landroid/content/Context;Lcom/otaliastudios/cameraview/controls/Facing;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 35
    :cond_1
    sget-object v1, Lcom/otaliastudios/cameraview/controls/Facing;->FRONT:Lcom/otaliastudios/cameraview/controls/Facing;

    invoke-static {p0, v1}, Lcom/otaliastudios/cameraview/CameraUtils;->hasCameraFacing(Landroid/content/Context;Lcom/otaliastudios/cameraview/controls/Facing;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method static fromValue(I)Lcom/otaliastudios/cameraview/controls/Facing;
    .locals 5

    .line 56
    invoke-static {}, Lcom/otaliastudios/cameraview/controls/Facing;->values()[Lcom/otaliastudios/cameraview/controls/Facing;

    move-result-object v0

    .line 57
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 58
    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/controls/Facing;->value()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/otaliastudios/cameraview/controls/Facing;
    .locals 1

    .line 17
    const-class v0, Lcom/otaliastudios/cameraview/controls/Facing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/otaliastudios/cameraview/controls/Facing;

    return-object p0
.end method

.method public static values()[Lcom/otaliastudios/cameraview/controls/Facing;
    .locals 1

    .line 17
    sget-object v0, Lcom/otaliastudios/cameraview/controls/Facing;->$VALUES:[Lcom/otaliastudios/cameraview/controls/Facing;

    invoke-virtual {v0}, [Lcom/otaliastudios/cameraview/controls/Facing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/otaliastudios/cameraview/controls/Facing;

    return-object v0
.end method


# virtual methods
.method value()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/otaliastudios/cameraview/controls/Facing;->value:I

    return v0
.end method
