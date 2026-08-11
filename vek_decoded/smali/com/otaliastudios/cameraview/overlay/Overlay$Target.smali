.class public final enum Lcom/otaliastudios/cameraview/overlay/Overlay$Target;
.super Ljava/lang/Enum;
.source "Overlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/overlay/Overlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Target"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/otaliastudios/cameraview/overlay/Overlay$Target;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

.field public static final enum PICTURE_SNAPSHOT:Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

.field public static final enum PREVIEW:Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

.field public static final enum VIDEO_SNAPSHOT:Lcom/otaliastudios/cameraview/overlay/Overlay$Target;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 13
    new-instance v0, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;->PREVIEW:Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    new-instance v1, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    const-string v3, "PICTURE_SNAPSHOT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;->PICTURE_SNAPSHOT:Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    new-instance v3, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    const-string v5, "VIDEO_SNAPSHOT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;->VIDEO_SNAPSHOT:Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 12
    sput-object v5, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;->$VALUES:[Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/otaliastudios/cameraview/overlay/Overlay$Target;
    .locals 1

    .line 12
    const-class v0, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    return-object p0
.end method

.method public static values()[Lcom/otaliastudios/cameraview/overlay/Overlay$Target;
    .locals 1

    .line 12
    sget-object v0, Lcom/otaliastudios/cameraview/overlay/Overlay$Target;->$VALUES:[Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    invoke-virtual {v0}, [Lcom/otaliastudios/cameraview/overlay/Overlay$Target;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/otaliastudios/cameraview/overlay/Overlay$Target;

    return-object v0
.end method
