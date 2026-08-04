.class public final enum Lorg/osmdroid/bonuspack/kml/HotSpot$Units;
.super Ljava/lang/Enum;
.source "HotSpot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/bonuspack/kml/HotSpot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Units"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/osmdroid/bonuspack/kml/HotSpot$Units;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

.field private static allValues:[Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

.field public static final enum fraction:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

.field public static final enum insetPixels:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

.field public static final enum pixels:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    new-instance v0, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    const-string v1, "fraction"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->fraction:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    new-instance v1, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    const-string v3, "pixels"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->pixels:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    new-instance v3, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    const-string v5, "insetPixels"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->insetPixels:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 15
    sput-object v5, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->$VALUES:[Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    .line 17
    invoke-static {}, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->values()[Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->allValues:[Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lorg/osmdroid/bonuspack/kml/HotSpot$Units;
    .locals 1

    .line 18
    sget-object v0, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->allValues:[Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/osmdroid/bonuspack/kml/HotSpot$Units;
    .locals 1

    .line 15
    const-class v0, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    return-object p0
.end method

.method public static values()[Lorg/osmdroid/bonuspack/kml/HotSpot$Units;
    .locals 1

    .line 15
    sget-object v0, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->$VALUES:[Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    invoke-virtual {v0}, [Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    return-object v0
.end method
