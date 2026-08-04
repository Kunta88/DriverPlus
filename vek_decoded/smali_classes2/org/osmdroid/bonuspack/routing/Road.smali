.class public Lorg/osmdroid/bonuspack/routing/Road;
.super Ljava/lang/Object;
.source "Road.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/bonuspack/routing/Road;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_INVALID:I = -0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_TECHNICAL_ISSUE:I = 0x2


# instance fields
.field public mBoundingBox:Lorg/osmdroid/util/BoundingBox;

.field public mDuration:D

.field public mLegs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/bonuspack/routing/RoadLeg;",
            ">;"
        }
    .end annotation
.end field

.field public mLength:D

.field public mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/bonuspack/routing/RoadNode;",
            ">;"
        }
    .end annotation
.end field

.field public mRouteHigh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mRouteLow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field public mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 201
    new-instance v0, Lorg/osmdroid/bonuspack/routing/Road$1;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/routing/Road$1;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/routing/Road;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/routing/Road;->init()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mStatus:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mLength:D

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mDuration:D

    .line 214
    const-class v0, Lorg/osmdroid/bonuspack/routing/RoadNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mNodes:Ljava/util/ArrayList;

    .line 215
    const-class v0, Lorg/osmdroid/bonuspack/routing/RoadLeg;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mLegs:Ljava/util/ArrayList;

    .line 216
    const-class v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mRouteHigh:Ljava/util/ArrayList;

    .line 217
    const-class v0, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/util/BoundingBox;

    iput-object p1, p0, Lorg/osmdroid/bonuspack/routing/Road;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/osmdroid/bonuspack/routing/Road$1;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/osmdroid/bonuspack/routing/Road;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/routing/Road;->init()V

    .line 74
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 76
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/util/GeoPoint;

    .line 77
    iget-object v4, p0, Lorg/osmdroid/bonuspack/routing/Road;->mRouteHigh:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_1

    .line 80
    new-instance p1, Lorg/osmdroid/bonuspack/routing/RoadLeg;

    invoke-direct {p1}, Lorg/osmdroid/bonuspack/routing/RoadLeg;-><init>()V

    .line 81
    iget-object v2, p0, Lorg/osmdroid/bonuspack/routing/Road;->mLegs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 83
    :cond_1
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/Road;->mRouteHigh:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/osmdroid/util/BoundingBox;->fromGeoPoints(Ljava/util/List;)Lorg/osmdroid/util/BoundingBox;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/routing/Road;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    const/4 p1, 0x2

    .line 84
    iput p1, p0, Lorg/osmdroid/bonuspack/routing/Road;->mStatus:I

    return-void
.end method

.method public static getLengthDurationText(Landroid/content/Context;DD)Ljava/lang/String;
    .locals 8

    const-string v0, ", "

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    cmpl-double v5, p1, v3

    if-ltz v5, :cond_0

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lorg/osmdroid/bonuspack/R$string;->osmbonuspack_format_distance_kilometers:I

    new-array v5, v2, [Ljava/lang/Object;

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, p1, v3

    if-ltz v5, :cond_1

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lorg/osmdroid/bonuspack/R$string;->osmbonuspack_format_distance_kilometers:I

    new-array v5, v2, [Ljava/lang/Object;

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double p1, p1, v6

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v6

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 116
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lorg/osmdroid/bonuspack/R$string;->osmbonuspack_format_distance_meters:I

    new-array v5, v2, [Ljava/lang/Object;

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v6

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    double-to-int p2, p3

    .line 119
    div-int/lit16 p3, p2, 0xe10

    .line 120
    div-int/lit8 p4, p2, 0x3c

    mul-int/lit8 v0, p3, 0x3c

    sub-int/2addr p4, v0

    .line 121
    rem-int/lit8 p2, p2, 0x3c

    const-string v0, " "

    if-eqz p3, :cond_2

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v3, Lorg/osmdroid/bonuspack/R$string;->osmbonuspack_format_hours:I

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    if-eqz p4, :cond_3

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v3, Lorg/osmdroid/bonuspack/R$string;->osmbonuspack_format_minutes:I

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    if-nez p3, :cond_4

    if-nez p4, :cond_4

    .line 129
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget p3, Lorg/osmdroid/bonuspack/R$string;->osmbonuspack_format_seconds:I

    new-array p4, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v1

    invoke-virtual {p0, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method private init()V
    .locals 2

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mStatus:I

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mLength:D

    .line 56
    iput-wide v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mDuration:D

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mNodes:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mRouteHigh:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mRouteLow:Ljava/util/ArrayList;

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/bonuspack/routing/Road;->mLegs:Ljava/util/ArrayList;

    .line 61
    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    return-void
.end method


# virtual methods
.method public buildLegs(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mLegs:Ljava/util/ArrayList;

    .line 161
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 162
    iget-object v1, p0, Lorg/osmdroid/bonuspack/routing/Road;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v5, v0, -0x1

    if-ge v4, v5, :cond_3

    .line 164
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v8, -0x1

    move v9, v3

    const/4 v10, -0x1

    :goto_1
    if-ge v9, v1, :cond_2

    .line 168
    iget-object v11, p0, Lorg/osmdroid/bonuspack/routing/Road;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/osmdroid/bonuspack/routing/RoadNode;

    iget-object v11, v11, Lorg/osmdroid/bonuspack/routing/RoadNode;->mLocation:Lorg/osmdroid/util/GeoPoint;

    .line 169
    invoke-virtual {p0, v11, v5}, Lorg/osmdroid/bonuspack/routing/Road;->distanceLLSquared(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v11

    if-eq v10, v8, :cond_0

    cmpg-double v13, v11, v6

    if-gez v13, :cond_1

    :cond_0
    move v10, v9

    move-wide v6, v11

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 176
    :cond_2
    new-instance v5, Lorg/osmdroid/bonuspack/routing/RoadLeg;

    iget-object v6, p0, Lorg/osmdroid/bonuspack/routing/Road;->mNodes:Ljava/util/ArrayList;

    invoke-direct {v5, v3, v10, v6}, Lorg/osmdroid/bonuspack/routing/RoadLeg;-><init>(IILjava/util/ArrayList;)V

    .line 177
    iget-object v3, p0, Lorg/osmdroid/bonuspack/routing/Road;->mLegs:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v10, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 181
    :cond_3
    new-instance p1, Lorg/osmdroid/bonuspack/routing/RoadLeg;

    sub-int/2addr v1, v2

    iget-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mNodes:Ljava/util/ArrayList;

    invoke-direct {p1, v3, v1, v0}, Lorg/osmdroid/bonuspack/routing/RoadLeg;-><init>(IILjava/util/ArrayList;)V

    .line 182
    iget-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mLegs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected distanceLLSquared(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)D
    .locals 4

    .line 146
    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 147
    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide p1

    sub-double/2addr v2, p1

    mul-double v0, v0, v0

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getLengthDurationText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 140
    iget-wide v1, p0, Lorg/osmdroid/bonuspack/routing/Road;->mLength:D

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/osmdroid/bonuspack/routing/Road;->mLegs:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/bonuspack/routing/RoadLeg;

    iget-wide v1, v1, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mLength:D

    :goto_0
    if-ne p2, v0, :cond_1

    .line 141
    iget-wide v3, p0, Lorg/osmdroid/bonuspack/routing/Road;->mDuration:D

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mLegs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/osmdroid/bonuspack/routing/RoadLeg;

    iget-wide v3, p2, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mDuration:D

    .line 142
    :goto_1
    invoke-static {p1, v1, v2, v3, v4}, Lorg/osmdroid/bonuspack/routing/Road;->getLengthDurationText(Landroid/content/Context;DD)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRouteLow()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mRouteLow:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mRouteHigh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 94
    iget-object v1, p0, Lorg/osmdroid/bonuspack/routing/Road;->mRouteHigh:Ljava/util/ArrayList;

    const-wide v2, 0x4097700000000000L    # 1500.0

    invoke-static {v1, v2, v3}, Lorg/osmdroid/bonuspack/utils/DouglasPeuckerReducer;->reduceWithTolerance(Ljava/util/ArrayList;D)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/bonuspack/routing/Road;->mRouteLow:Ljava/util/ArrayList;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Road reduced from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/bonuspack/routing/Road;->mRouteLow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " points"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BONUSPACK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mRouteLow:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setRouteLow(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lorg/osmdroid/bonuspack/routing/Road;->mRouteLow:Ljava/util/ArrayList;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 192
    iget p2, p0, Lorg/osmdroid/bonuspack/routing/Road;->mStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-wide v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mLength:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 194
    iget-wide v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mDuration:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 195
    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/Road;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 196
    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/Road;->mLegs:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 197
    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/Road;->mRouteHigh:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 198
    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/Road;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
