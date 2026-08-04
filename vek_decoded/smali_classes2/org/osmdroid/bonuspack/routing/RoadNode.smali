.class public Lorg/osmdroid/bonuspack/routing/RoadNode;
.super Ljava/lang/Object;
.source "RoadNode.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/bonuspack/routing/RoadNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDuration:D

.field public mInstructions:Ljava/lang/String;

.field public mLength:D

.field public mLocation:Lorg/osmdroid/util/GeoPoint;

.field public mManeuverType:I

.field public mNextRoadLink:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lorg/osmdroid/bonuspack/routing/RoadNode$1;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/routing/RoadNode$1;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/routing/RoadNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lorg/osmdroid/bonuspack/routing/RoadNode;->mManeuverType:I

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lorg/osmdroid/bonuspack/routing/RoadNode;->mNextRoadLink:I

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lorg/osmdroid/bonuspack/routing/RoadNode;->mDuration:D

    iput-wide v0, p0, Lorg/osmdroid/bonuspack/routing/RoadNode;->mLength:D

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/bonuspack/routing/RoadNode;->mManeuverType:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/RoadNode;->mInstructions:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/bonuspack/routing/RoadNode;->mLength:D

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/bonuspack/routing/RoadNode;->mDuration:D

    .line 64
    const-class v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/util/GeoPoint;

    iput-object p1, p0, Lorg/osmdroid/bonuspack/routing/RoadNode;->mLocation:Lorg/osmdroid/util/GeoPoint;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/osmdroid/bonuspack/routing/RoadNode$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lorg/osmdroid/bonuspack/routing/RoadNode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 43
    iget p2, p0, Lorg/osmdroid/bonuspack/routing/RoadNode;->mManeuverType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/RoadNode;->mInstructions:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-wide v0, p0, Lorg/osmdroid/bonuspack/routing/RoadNode;->mLength:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 46
    iget-wide v0, p0, Lorg/osmdroid/bonuspack/routing/RoadNode;->mDuration:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 47
    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/RoadNode;->mLocation:Lorg/osmdroid/util/GeoPoint;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
