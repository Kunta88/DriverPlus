.class public Lcom/txdriver/ui/fragment/map/Point;
.super Ljava/lang/Object;
.source "Point.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/txdriver/ui/fragment/map/Point;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLat:D

.field private mLng:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/txdriver/ui/fragment/map/Point$1;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/map/Point$1;-><init>()V

    sput-object v0, Lcom/txdriver/ui/fragment/map/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/txdriver/ui/fragment/map/Point;->mLat:D

    .line 31
    iput-wide p3, p0, Lcom/txdriver/ui/fragment/map/Point;->mLng:D

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/ui/fragment/map/Point;->mLat:D

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/ui/fragment/map/Point;->mLng:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 48
    :cond_0
    instance-of v1, p1, Lcom/txdriver/ui/fragment/map/Point;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 50
    :cond_1
    check-cast p1, Lcom/txdriver/ui/fragment/map/Point;

    .line 52
    iget-wide v3, p1, Lcom/txdriver/ui/fragment/map/Point;->mLat:D

    iget-wide v5, p0, Lcom/txdriver/ui/fragment/map/Point;->mLat:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 53
    :cond_2
    iget-wide v3, p1, Lcom/txdriver/ui/fragment/map/Point;->mLng:D

    iget-wide v5, p0, Lcom/txdriver/ui/fragment/map/Point;->mLng:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getLat()D
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/txdriver/ui/fragment/map/Point;->mLat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/txdriver/ui/fragment/map/Point;->mLng:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 62
    iget-wide v0, p0, Lcom/txdriver/ui/fragment/map/Point;->mLat:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    .line 64
    iget-wide v3, p0, Lcom/txdriver/ui/fragment/map/Point;->mLng:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    return v1
.end method

.method public setLat(D)V
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/txdriver/ui/fragment/map/Point;->mLat:D

    return-void
.end method

.method public setLng(D)V
    .locals 0

    .line 82
    iput-wide p1, p0, Lcom/txdriver/ui/fragment/map/Point;->mLng:D

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/txdriver/ui/fragment/map/Point;->mLat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 42
    iget-wide v0, p0, Lcom/txdriver/ui/fragment/map/Point;->mLng:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
