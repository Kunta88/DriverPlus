.class final enum Lorg/osmdroid/views/MapController$ReplayType;
.super Ljava/lang/Enum;
.source "MapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ReplayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/osmdroid/views/MapController$ReplayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/osmdroid/views/MapController$ReplayType;

.field public static final enum AnimateToGeoPoint:Lorg/osmdroid/views/MapController$ReplayType;

.field public static final enum AnimateToPoint:Lorg/osmdroid/views/MapController$ReplayType;

.field public static final enum SetCenterPoint:Lorg/osmdroid/views/MapController$ReplayType;

.field public static final enum ZoomToSpanPoint:Lorg/osmdroid/views/MapController$ReplayType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 497
    new-instance v0, Lorg/osmdroid/views/MapController$ReplayType;

    const-string v1, "ZoomToSpanPoint"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/MapController$ReplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/MapController$ReplayType;->ZoomToSpanPoint:Lorg/osmdroid/views/MapController$ReplayType;

    new-instance v1, Lorg/osmdroid/views/MapController$ReplayType;

    const-string v3, "AnimateToPoint"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/osmdroid/views/MapController$ReplayType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/osmdroid/views/MapController$ReplayType;->AnimateToPoint:Lorg/osmdroid/views/MapController$ReplayType;

    new-instance v3, Lorg/osmdroid/views/MapController$ReplayType;

    const-string v5, "AnimateToGeoPoint"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/osmdroid/views/MapController$ReplayType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/osmdroid/views/MapController$ReplayType;->AnimateToGeoPoint:Lorg/osmdroid/views/MapController$ReplayType;

    new-instance v5, Lorg/osmdroid/views/MapController$ReplayType;

    const-string v7, "SetCenterPoint"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/osmdroid/views/MapController$ReplayType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/osmdroid/views/MapController$ReplayType;->SetCenterPoint:Lorg/osmdroid/views/MapController$ReplayType;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/osmdroid/views/MapController$ReplayType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 496
    sput-object v7, Lorg/osmdroid/views/MapController$ReplayType;->$VALUES:[Lorg/osmdroid/views/MapController$ReplayType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 496
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/osmdroid/views/MapController$ReplayType;
    .locals 1

    .line 496
    const-class v0, Lorg/osmdroid/views/MapController$ReplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/osmdroid/views/MapController$ReplayType;

    return-object p0
.end method

.method public static values()[Lorg/osmdroid/views/MapController$ReplayType;
    .locals 1

    .line 496
    sget-object v0, Lorg/osmdroid/views/MapController$ReplayType;->$VALUES:[Lorg/osmdroid/views/MapController$ReplayType;

    invoke-virtual {v0}, [Lorg/osmdroid/views/MapController$ReplayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/osmdroid/views/MapController$ReplayType;

    return-object v0
.end method
