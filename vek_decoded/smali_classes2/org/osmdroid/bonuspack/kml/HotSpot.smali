.class public Lorg/osmdroid/bonuspack/kml/HotSpot;
.super Ljava/lang/Object;
.source "HotSpot.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/bonuspack/kml/HotSpot$Units;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/bonuspack/kml/HotSpot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mXUnits:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

.field public mYUnits:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

.field public mx:F

.field public my:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Lorg/osmdroid/bonuspack/kml/HotSpot$1;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/HotSpot$1;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/kml/HotSpot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 40
    iput v0, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->mx:F

    .line 41
    iput v0, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->my:F

    .line 42
    sget-object v0, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->fraction:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->mXUnits:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    .line 43
    sget-object v0, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->fraction:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->mYUnits:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    return-void
.end method

.method public constructor <init>(FFLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->mx:F

    .line 48
    iput p2, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->my:F

    .line 49
    invoke-virtual {p0, p3}, Lorg/osmdroid/bonuspack/kml/HotSpot;->getUnits(Ljava/lang/String;)Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->mXUnits:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    .line 50
    invoke-virtual {p0, p4}, Lorg/osmdroid/bonuspack/kml/HotSpot;->getUnits(Ljava/lang/String;)Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->mYUnits:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->mx:F

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->my:F

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->fromOrdinal(I)Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->mXUnits:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->fromOrdinal(I)Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->mYUnits:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get(FLorg/osmdroid/bonuspack/kml/HotSpot$Units;F)F
    .locals 1

    .line 54
    sget-object v0, Lorg/osmdroid/bonuspack/kml/HotSpot$2;->$SwitchMap$org$osmdroid$bonuspack$kml$HotSpot$Units:[I

    invoke-virtual {p2}, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    return p1

    :cond_0
    sub-float p1, p3, p1

    div-float/2addr p1, p3

    return p1

    :cond_1
    div-float/2addr p1, p3

    return p1
.end method

.method public getUnits(Lorg/osmdroid/bonuspack/kml/HotSpot$Units;)Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUnits(Ljava/lang/String;)Lorg/osmdroid/bonuspack/kml/HotSpot$Units;
    .locals 1

    const-string v0, "fraction"

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    sget-object p1, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->fraction:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    return-object p1

    :cond_0
    const-string v0, "pixels"

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    sget-object p1, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->pixels:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    return-object p1

    :cond_1
    const-string v0, "insetPixels"

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 30
    sget-object p1, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->insetPixels:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    return-object p1

    .line 32
    :cond_2
    sget-object p1, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->fraction:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    return-object p1
.end method

.method public getX(F)F
    .locals 2

    .line 67
    iget v0, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->mx:F

    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->mXUnits:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    invoke-virtual {p0, v0, v1, p1}, Lorg/osmdroid/bonuspack/kml/HotSpot;->get(FLorg/osmdroid/bonuspack/kml/HotSpot$Units;F)F

    move-result p1

    return p1
.end method

.method public getY(F)F
    .locals 2

    .line 71
    iget v0, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->my:F

    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->mYUnits:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    invoke-virtual {p0, v0, v1, p1}, Lorg/osmdroid/bonuspack/kml/HotSpot;->get(FLorg/osmdroid/bonuspack/kml/HotSpot$Units;F)F

    move-result p1

    return p1
.end method

.method public writeAsKML(Ljava/io/Writer;)V
    .locals 2

    .line 76
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<hotSpot x=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->mx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" y=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->my:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" xunits=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->mXUnits:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    .line 77
    invoke-virtual {p0, v1}, Lorg/osmdroid/bonuspack/kml/HotSpot;->getUnits(Lorg/osmdroid/bonuspack/kml/HotSpot$Units;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" yunits=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->mYUnits:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    .line 78
    invoke-virtual {p0, v1}, Lorg/osmdroid/bonuspack/kml/HotSpot;->getUnits(Lorg/osmdroid/bonuspack/kml/HotSpot$Units;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 89
    iget p2, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->mx:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 90
    iget p2, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->my:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 91
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->mXUnits:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    invoke-virtual {p2}, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/HotSpot;->mYUnits:Lorg/osmdroid/bonuspack/kml/HotSpot$Units;

    invoke-virtual {p2}, Lorg/osmdroid/bonuspack/kml/HotSpot$Units;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
