.class final Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry$1;
.super Ljava/lang/Object;
.source "KmlMultiGeometry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry$1;->createFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;
    .locals 1

    .line 132
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;

    invoke-direct {v0, p1}, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry$1;->newArray(I)[Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;
    .locals 0

    .line 135
    new-array p1, p1, [Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;

    return-object p1
.end method
