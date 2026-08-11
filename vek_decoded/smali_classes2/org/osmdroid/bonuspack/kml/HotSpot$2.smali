.class synthetic Lorg/osmdroid/bonuspack/kml/HotSpot$2;
.super Ljava/lang/Object;
.source "HotSpot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/bonuspack/kml/HotSpot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$osmdroid$bonuspack$kml$HotSpot$Units:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    invoke-static {}, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->values()[Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/osmdroid/bonuspack/kml/HotSpot$2;->$SwitchMap$org$osmdroid$bonuspack$kml$HotSpot$Units:[I

    :try_start_0
    sget-object v1, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->fraction:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    invoke-virtual {v1}, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/osmdroid/bonuspack/kml/HotSpot$2;->$SwitchMap$org$osmdroid$bonuspack$kml$HotSpot$Units:[I

    sget-object v1, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->pixels:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    invoke-virtual {v1}, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/osmdroid/bonuspack/kml/HotSpot$2;->$SwitchMap$org$osmdroid$bonuspack$kml$HotSpot$Units:[I

    sget-object v1, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->insetPixels:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    invoke-virtual {v1}, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
