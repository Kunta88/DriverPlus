.class public Lorg/osmdroid/bonuspack/location/POI;
.super Ljava/lang/Object;
.source "POI.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/bonuspack/location/POI$ThumbnailTask;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/bonuspack/location/POI;",
            ">;"
        }
    .end annotation
.end field

.field protected static MAX_LOADING_ATTEMPTS:I = 0x0

.field public static POI_SERVICE_FLICKR:I = 0x12c

.field public static POI_SERVICE_GEONAMES_WIKIPEDIA:I = 0xc8

.field public static POI_SERVICE_NOMINATIM:I = 0x64

.field public static POI_SERVICE_OVERPASS_API:I = 0x1f4

.field public static POI_SERVICE_PICASA:I = 0x190

.field private static mThumbnailCache:Lorg/osmdroid/bonuspack/utils/WebImageCache;


# instance fields
.field public mCategory:Ljava/lang/String;

.field public mDescription:Ljava/lang/String;

.field public mId:J

.field public mLocation:Lorg/osmdroid/util/GeoPoint;

.field public mRank:I

.field public mServiceId:I

.field public mThumbnail:Landroid/graphics/Bitmap;

.field protected mThumbnailLoadingFailures:I

.field public mThumbnailPath:Ljava/lang/String;

.field public mType:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lorg/osmdroid/bonuspack/utils/WebImageCache;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Lorg/osmdroid/bonuspack/utils/WebImageCache;-><init>(I)V

    sput-object v0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailCache:Lorg/osmdroid/bonuspack/utils/WebImageCache;

    const/4 v0, 0x2

    .line 62
    sput v0, Lorg/osmdroid/bonuspack/location/POI;->MAX_LOADING_ATTEMPTS:I

    .line 164
    new-instance v0, Lorg/osmdroid/bonuspack/location/POI$1;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/location/POI$1;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/location/POI;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lorg/osmdroid/bonuspack/location/POI;->mServiceId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mServiceId:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mId:J

    .line 176
    const-class v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    iput-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mLocation:Lorg/osmdroid/util/GeoPoint;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mCategory:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mType:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mDescription:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailPath:Ljava/lang/String;

    .line 181
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnail:Landroid/graphics/Bitmap;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mUrl:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mRank:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailLoadingFailures:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/osmdroid/bonuspack/location/POI$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lorg/osmdroid/bonuspack/location/POI;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fetchThumbnailOnThread(Landroid/widget/ImageView;)V
    .locals 3

    .line 92
    iget-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnail:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 94
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailPath:Ljava/lang/String;

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    new-instance v0, Lorg/osmdroid/bonuspack/location/POI$ThumbnailTask;

    invoke-direct {v0, p0, p1}, Lorg/osmdroid/bonuspack/location/POI$ThumbnailTask;-><init>(Lorg/osmdroid/bonuspack/location/POI;Landroid/widget/ImageView;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/widget/ImageView;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lorg/osmdroid/bonuspack/location/POI$ThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 74
    sget-object v1, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailCache:Lorg/osmdroid/bonuspack/utils/WebImageCache;

    invoke-virtual {v1, v0}, Lorg/osmdroid/bonuspack/utils/WebImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 76
    iget v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailLoadingFailures:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailLoadingFailures:I

    .line 77
    sget v1, Lorg/osmdroid/bonuspack/location/POI;->MAX_LOADING_ATTEMPTS:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailPath:Ljava/lang/String;

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 151
    iget p2, p0, Lorg/osmdroid/bonuspack/location/POI;->mServiceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-wide v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 153
    iget-object p2, p0, Lorg/osmdroid/bonuspack/location/POI;->mLocation:Lorg/osmdroid/util/GeoPoint;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 154
    iget-object p2, p0, Lorg/osmdroid/bonuspack/location/POI;->mCategory:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object p2, p0, Lorg/osmdroid/bonuspack/location/POI;->mType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object p2, p0, Lorg/osmdroid/bonuspack/location/POI;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object p2, p0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object p2, p0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 159
    iget-object p2, p0, Lorg/osmdroid/bonuspack/location/POI;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget p2, p0, Lorg/osmdroid/bonuspack/location/POI;->mRank:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget p2, p0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailLoadingFailures:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
