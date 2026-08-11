.class final Lorg/osmdroid/bonuspack/kml/KmlTrack$1;
.super Ljava/lang/Object;
.source "KmlTrack.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/bonuspack/kml/KmlTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/osmdroid/bonuspack/kml/KmlTrack;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 214
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/kml/KmlTrack$1;->createFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/bonuspack/kml/KmlTrack;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/bonuspack/kml/KmlTrack;
    .locals 1

    .line 216
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlTrack;

    invoke-direct {v0, p1}, Lorg/osmdroid/bonuspack/kml/KmlTrack;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 214
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/kml/KmlTrack$1;->newArray(I)[Lorg/osmdroid/bonuspack/kml/KmlTrack;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/osmdroid/bonuspack/kml/KmlTrack;
    .locals 0

    .line 219
    new-array p1, p1, [Lorg/osmdroid/bonuspack/kml/KmlTrack;

    return-object p1
.end method
