.class public final enum Lcom/otaliastudios/cameraview/controls/Audio;
.super Ljava/lang/Enum;
.source "Audio.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/controls/Control;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/otaliastudios/cameraview/controls/Audio;",
        ">;",
        "Lcom/otaliastudios/cameraview/controls/Control;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/otaliastudios/cameraview/controls/Audio;

.field static final DEFAULT:Lcom/otaliastudios/cameraview/controls/Audio;

.field public static final enum MONO:Lcom/otaliastudios/cameraview/controls/Audio;

.field public static final enum OFF:Lcom/otaliastudios/cameraview/controls/Audio;

.field public static final enum ON:Lcom/otaliastudios/cameraview/controls/Audio;

.field public static final enum STEREO:Lcom/otaliastudios/cameraview/controls/Audio;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 19
    new-instance v0, Lcom/otaliastudios/cameraview/controls/Audio;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/otaliastudios/cameraview/controls/Audio;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/otaliastudios/cameraview/controls/Audio;->OFF:Lcom/otaliastudios/cameraview/controls/Audio;

    .line 26
    new-instance v1, Lcom/otaliastudios/cameraview/controls/Audio;

    const-string v3, "ON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/otaliastudios/cameraview/controls/Audio;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/otaliastudios/cameraview/controls/Audio;->ON:Lcom/otaliastudios/cameraview/controls/Audio;

    .line 31
    new-instance v3, Lcom/otaliastudios/cameraview/controls/Audio;

    const-string v5, "MONO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/otaliastudios/cameraview/controls/Audio;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/otaliastudios/cameraview/controls/Audio;->MONO:Lcom/otaliastudios/cameraview/controls/Audio;

    .line 36
    new-instance v5, Lcom/otaliastudios/cameraview/controls/Audio;

    const-string v7, "STEREO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/otaliastudios/cameraview/controls/Audio;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/otaliastudios/cameraview/controls/Audio;->STEREO:Lcom/otaliastudios/cameraview/controls/Audio;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/otaliastudios/cameraview/controls/Audio;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 14
    sput-object v7, Lcom/otaliastudios/cameraview/controls/Audio;->$VALUES:[Lcom/otaliastudios/cameraview/controls/Audio;

    .line 38
    sput-object v1, Lcom/otaliastudios/cameraview/controls/Audio;->DEFAULT:Lcom/otaliastudios/cameraview/controls/Audio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/otaliastudios/cameraview/controls/Audio;->value:I

    return-void
.end method

.method static fromValue(I)Lcom/otaliastudios/cameraview/controls/Audio;
    .locals 5

    .line 52
    invoke-static {}, Lcom/otaliastudios/cameraview/controls/Audio;->values()[Lcom/otaliastudios/cameraview/controls/Audio;

    move-result-object v0

    .line 53
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 54
    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/controls/Audio;->value()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_1
    sget-object p0, Lcom/otaliastudios/cameraview/controls/Audio;->DEFAULT:Lcom/otaliastudios/cameraview/controls/Audio;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/otaliastudios/cameraview/controls/Audio;
    .locals 1

    .line 14
    const-class v0, Lcom/otaliastudios/cameraview/controls/Audio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/otaliastudios/cameraview/controls/Audio;

    return-object p0
.end method

.method public static values()[Lcom/otaliastudios/cameraview/controls/Audio;
    .locals 1

    .line 14
    sget-object v0, Lcom/otaliastudios/cameraview/controls/Audio;->$VALUES:[Lcom/otaliastudios/cameraview/controls/Audio;

    invoke-virtual {v0}, [Lcom/otaliastudios/cameraview/controls/Audio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/otaliastudios/cameraview/controls/Audio;

    return-object v0
.end method


# virtual methods
.method value()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/otaliastudios/cameraview/controls/Audio;->value:I

    return v0
.end method
