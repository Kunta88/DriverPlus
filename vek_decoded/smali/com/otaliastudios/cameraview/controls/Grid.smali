.class public final enum Lcom/otaliastudios/cameraview/controls/Grid;
.super Ljava/lang/Enum;
.source "Grid.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/controls/Control;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/otaliastudios/cameraview/controls/Grid;",
        ">;",
        "Lcom/otaliastudios/cameraview/controls/Control;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/otaliastudios/cameraview/controls/Grid;

.field static final DEFAULT:Lcom/otaliastudios/cameraview/controls/Grid;

.field public static final enum DRAW_3X3:Lcom/otaliastudios/cameraview/controls/Grid;

.field public static final enum DRAW_4X4:Lcom/otaliastudios/cameraview/controls/Grid;

.field public static final enum DRAW_PHI:Lcom/otaliastudios/cameraview/controls/Grid;

.field public static final enum OFF:Lcom/otaliastudios/cameraview/controls/Grid;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 20
    new-instance v0, Lcom/otaliastudios/cameraview/controls/Grid;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/otaliastudios/cameraview/controls/Grid;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/otaliastudios/cameraview/controls/Grid;->OFF:Lcom/otaliastudios/cameraview/controls/Grid;

    .line 25
    new-instance v1, Lcom/otaliastudios/cameraview/controls/Grid;

    const-string v3, "DRAW_3X3"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/otaliastudios/cameraview/controls/Grid;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/otaliastudios/cameraview/controls/Grid;->DRAW_3X3:Lcom/otaliastudios/cameraview/controls/Grid;

    .line 30
    new-instance v3, Lcom/otaliastudios/cameraview/controls/Grid;

    const-string v5, "DRAW_4X4"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/otaliastudios/cameraview/controls/Grid;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/otaliastudios/cameraview/controls/Grid;->DRAW_4X4:Lcom/otaliastudios/cameraview/controls/Grid;

    .line 36
    new-instance v5, Lcom/otaliastudios/cameraview/controls/Grid;

    const-string v7, "DRAW_PHI"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/otaliastudios/cameraview/controls/Grid;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/otaliastudios/cameraview/controls/Grid;->DRAW_PHI:Lcom/otaliastudios/cameraview/controls/Grid;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/otaliastudios/cameraview/controls/Grid;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 14
    sput-object v7, Lcom/otaliastudios/cameraview/controls/Grid;->$VALUES:[Lcom/otaliastudios/cameraview/controls/Grid;

    .line 38
    sput-object v0, Lcom/otaliastudios/cameraview/controls/Grid;->DEFAULT:Lcom/otaliastudios/cameraview/controls/Grid;

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
    iput p3, p0, Lcom/otaliastudios/cameraview/controls/Grid;->value:I

    return-void
.end method

.method static fromValue(I)Lcom/otaliastudios/cameraview/controls/Grid;
    .locals 5

    .line 52
    invoke-static {}, Lcom/otaliastudios/cameraview/controls/Grid;->values()[Lcom/otaliastudios/cameraview/controls/Grid;

    move-result-object v0

    .line 53
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 54
    invoke-virtual {v3}, Lcom/otaliastudios/cameraview/controls/Grid;->value()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_1
    sget-object p0, Lcom/otaliastudios/cameraview/controls/Grid;->DEFAULT:Lcom/otaliastudios/cameraview/controls/Grid;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/otaliastudios/cameraview/controls/Grid;
    .locals 1

    .line 14
    const-class v0, Lcom/otaliastudios/cameraview/controls/Grid;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/otaliastudios/cameraview/controls/Grid;

    return-object p0
.end method

.method public static values()[Lcom/otaliastudios/cameraview/controls/Grid;
    .locals 1

    .line 14
    sget-object v0, Lcom/otaliastudios/cameraview/controls/Grid;->$VALUES:[Lcom/otaliastudios/cameraview/controls/Grid;

    invoke-virtual {v0}, [Lcom/otaliastudios/cameraview/controls/Grid;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/otaliastudios/cameraview/controls/Grid;

    return-object v0
.end method


# virtual methods
.method value()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/otaliastudios/cameraview/controls/Grid;->value:I

    return v0
.end method
