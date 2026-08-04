.class final Lorg/osmdroid/bonuspack/kml/Style$1;
.super Ljava/lang/Object;
.source "Style.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/bonuspack/kml/Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/osmdroid/bonuspack/kml/Style;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/kml/Style$1;->createFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/bonuspack/kml/Style;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/bonuspack/kml/Style;
    .locals 1

    .line 101
    new-instance v0, Lorg/osmdroid/bonuspack/kml/Style;

    invoke-direct {v0, p1}, Lorg/osmdroid/bonuspack/kml/Style;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/kml/Style$1;->newArray(I)[Lorg/osmdroid/bonuspack/kml/Style;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/osmdroid/bonuspack/kml/Style;
    .locals 0

    .line 104
    new-array p1, p1, [Lorg/osmdroid/bonuspack/kml/Style;

    return-object p1
.end method
