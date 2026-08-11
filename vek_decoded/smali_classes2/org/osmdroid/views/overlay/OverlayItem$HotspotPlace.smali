.class public final enum Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;
.super Ljava/lang/Enum;
.source "OverlayItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/overlay/OverlayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HotspotPlace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum LEFT_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum LOWER_LEFT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum LOWER_RIGHT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum NONE:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum RIGHT_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum TOP_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum UPPER_LEFT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

.field public static final enum UPPER_RIGHT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 36
    new-instance v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->NONE:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v3, "CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v3, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v5, "BOTTOM_CENTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v5, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v7, "TOP_CENTER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->TOP_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v7, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v9, "RIGHT_CENTER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->RIGHT_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v9, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v11, "LEFT_CENTER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->LEFT_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v11, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v13, "UPPER_RIGHT_CORNER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->UPPER_RIGHT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v13, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v15, "LOWER_RIGHT_CORNER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->LOWER_RIGHT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v15, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v14, "UPPER_LEFT_CORNER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->UPPER_LEFT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    new-instance v14, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const-string v12, "LOWER_LEFT_CORNER"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->LOWER_LEFT_CORNER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    const/16 v12, 0xa

    new-array v12, v12, [Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 35
    sput-object v12, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->$VALUES:[Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;
    .locals 1

    .line 35
    const-class v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    return-object p0
.end method

.method public static values()[Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;
    .locals 1

    .line 35
    sget-object v0, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->$VALUES:[Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {v0}, [Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    return-object v0
.end method
