.class public final Lru/yandex/yandexmapkit/utils/GeoPoint;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lru/yandex/cp;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final NATIVE_CREATOR:Lru/yandex/cq;


# instance fields
.field private a:D

.field private b:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/yandex/ck;

    invoke-direct {v0}, Lru/yandex/ck;-><init>()V

    sput-object v0, Lru/yandex/yandexmapkit/utils/GeoPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lru/yandex/cl;

    invoke-direct {v0}, Lru/yandex/cl;-><init>()V

    sput-object v0, Lru/yandex/yandexmapkit/utils/GeoPoint;->NATIVE_CREATOR:Lru/yandex/cq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lru/yandex/yandexmapkit/utils/GeoPoint;->a:D

    iput-wide p3, p0, Lru/yandex/yandexmapkit/utils/GeoPoint;->b:D

    return-void
.end method

.method public constructor <init>(Lru/yandex/co;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lru/yandex/co;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lru/yandex/yandexmapkit/utils/GeoPoint;->a:D

    iget-object p1, p1, Lru/yandex/co;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    float-to-double v0, p1

    iput-wide v0, p0, Lru/yandex/yandexmapkit/utils/GeoPoint;->b:D

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lru/yandex/yandexmapkit/utils/GeoPoint;
    .locals 5

    if-eqz p0, :cond_0

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    array-length v4, p0

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v2, p0, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    new-instance v0, Lru/yandex/yandexmapkit/utils/GeoPoint;

    float-to-double v1, v1

    float-to-double v3, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>(DD)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lru/yandex/yandexmapkit/utils/GeoPoint;

    iget-wide v2, p1, Lru/yandex/yandexmapkit/utils/GeoPoint;->a:D

    iget-wide v4, p0, Lru/yandex/yandexmapkit/utils/GeoPoint;->a:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p1, Lru/yandex/yandexmapkit/utils/GeoPoint;->b:D

    iget-wide v4, p0, Lru/yandex/yandexmapkit/utils/GeoPoint;->b:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getLat()D
    .locals 2

    iget-wide v0, p0, Lru/yandex/yandexmapkit/utils/GeoPoint;->a:D

    return-wide v0
.end method

.method public getLon()D
    .locals 2

    iget-wide v0, p0, Lru/yandex/yandexmapkit/utils/GeoPoint;->b:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 9

    iget-wide v0, p0, Lru/yandex/yandexmapkit/utils/GeoPoint;->a:D

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-eqz v6, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    const/16 v6, 0x20

    ushr-long v7, v0, v6

    xor-long/2addr v0, v7

    long-to-int v1, v0

    iget-wide v7, p0, Lru/yandex/yandexmapkit/utils/GeoPoint;->b:D

    cmpl-double v0, v7, v4

    if-eqz v0, :cond_1

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    :cond_1
    mul-int/lit8 v1, v1, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public setLat(D)V
    .locals 0

    iput-wide p1, p0, Lru/yandex/yandexmapkit/utils/GeoPoint;->a:D

    return-void
.end method

.method public setLon(D)V
    .locals 0

    iput-wide p1, p0, Lru/yandex/yandexmapkit/utils/GeoPoint;->b:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lru/yandex/yandexmapkit/utils/GeoPoint;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lru/yandex/yandexmapkit/utils/GeoPoint;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToNativeParcel(Lru/yandex/co;)V
    .locals 2

    iget-wide v0, p0, Lru/yandex/yandexmapkit/utils/GeoPoint;->a:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lru/yandex/co;->a(F)V

    iget-wide v0, p0, Lru/yandex/yandexmapkit/utils/GeoPoint;->b:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lru/yandex/co;->a(F)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lru/yandex/yandexmapkit/utils/GeoPoint;->a:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lru/yandex/yandexmapkit/utils/GeoPoint;->b:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
