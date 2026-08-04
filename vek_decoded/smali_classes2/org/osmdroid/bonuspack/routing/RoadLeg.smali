.class public Lorg/osmdroid/bonuspack/routing/RoadLeg;
.super Ljava/lang/Object;
.source "RoadLeg.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/bonuspack/routing/RoadLeg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDuration:D

.field public mEndNodeIndex:I

.field public mLength:D

.field public mStartNodeIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lorg/osmdroid/bonuspack/routing/RoadLeg$1;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/routing/RoadLeg$1;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mDuration:D

    iput-wide v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mLength:D

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mEndNodeIndex:I

    iput v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mStartNodeIndex:I

    return-void
.end method

.method public constructor <init>(IILjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/bonuspack/routing/RoadNode;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mStartNodeIndex:I

    .line 34
    iput p2, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mEndNodeIndex:I

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mDuration:D

    iput-wide v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mLength:D

    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_0

    .line 37
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/bonuspack/routing/RoadNode;

    .line 38
    iget-wide v2, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mLength:D

    iget-wide v4, v1, Lorg/osmdroid/bonuspack/routing/RoadNode;->mLength:D

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mLength:D

    .line 39
    iget-wide v2, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mDuration:D

    iget-wide v4, v1, Lorg/osmdroid/bonuspack/routing/RoadNode;->mDuration:D

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mDuration:D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Leg: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "-"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", length="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide p2, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mLength:D

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "km, duration="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide p2, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mDuration:D

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "s"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BONUSPACK"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mLength:D

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mDuration:D

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mStartNodeIndex:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mEndNodeIndex:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/osmdroid/bonuspack/routing/RoadLeg$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lorg/osmdroid/bonuspack/routing/RoadLeg;-><init>(Landroid/os/Parcel;)V

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

    .line 52
    iget-wide v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mLength:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 53
    iget-wide v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mDuration:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 54
    iget p2, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mStartNodeIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget p2, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mEndNodeIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
