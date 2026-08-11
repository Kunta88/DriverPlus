.class public final enum Lcom/otaliastudios/cameraview/engine/offset/Reference;
.super Ljava/lang/Enum;
.source "Reference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/otaliastudios/cameraview/engine/offset/Reference;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/otaliastudios/cameraview/engine/offset/Reference;

.field public static final enum BASE:Lcom/otaliastudios/cameraview/engine/offset/Reference;

.field public static final enum OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

.field public static final enum SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

.field public static final enum VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 9
    new-instance v0, Lcom/otaliastudios/cameraview/engine/offset/Reference;

    const-string v1, "BASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/otaliastudios/cameraview/engine/offset/Reference;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/otaliastudios/cameraview/engine/offset/Reference;->BASE:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    .line 14
    new-instance v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;

    const-string v3, "SENSOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/otaliastudios/cameraview/engine/offset/Reference;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/otaliastudios/cameraview/engine/offset/Reference;->SENSOR:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    .line 21
    new-instance v3, Lcom/otaliastudios/cameraview/engine/offset/Reference;

    const-string v5, "VIEW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/otaliastudios/cameraview/engine/offset/Reference;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/otaliastudios/cameraview/engine/offset/Reference;->VIEW:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    .line 27
    new-instance v5, Lcom/otaliastudios/cameraview/engine/offset/Reference;

    const-string v7, "OUTPUT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/otaliastudios/cameraview/engine/offset/Reference;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/otaliastudios/cameraview/engine/offset/Reference;->OUTPUT:Lcom/otaliastudios/cameraview/engine/offset/Reference;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/otaliastudios/cameraview/engine/offset/Reference;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 3
    sput-object v7, Lcom/otaliastudios/cameraview/engine/offset/Reference;->$VALUES:[Lcom/otaliastudios/cameraview/engine/offset/Reference;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/otaliastudios/cameraview/engine/offset/Reference;
    .locals 1

    .line 3
    const-class v0, Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/otaliastudios/cameraview/engine/offset/Reference;

    return-object p0
.end method

.method public static values()[Lcom/otaliastudios/cameraview/engine/offset/Reference;
    .locals 1

    .line 3
    sget-object v0, Lcom/otaliastudios/cameraview/engine/offset/Reference;->$VALUES:[Lcom/otaliastudios/cameraview/engine/offset/Reference;

    invoke-virtual {v0}, [Lcom/otaliastudios/cameraview/engine/offset/Reference;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/otaliastudios/cameraview/engine/offset/Reference;

    return-object v0
.end method
