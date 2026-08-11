.class public Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;
.super Lorg/osmdroid/bonuspack/kml/KmlFeature;
.source "KmlGroundOverlay.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mColor:I

.field public mCoordinates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field public mIcon:Landroid/graphics/Bitmap;

.field public mIconHref:Ljava/lang/String;

.field public mRotation:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 188
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay$1;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay$1;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/KmlFeature;-><init>()V

    const/high16 v0, -0x1000000

    .line 49
    iput v0, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mColor:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 198
    invoke-direct {p0, p1}, Lorg/osmdroid/bonuspack/kml/KmlFeature;-><init>(Landroid/os/Parcel;)V

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mIconHref:Ljava/lang/String;

    .line 200
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mIcon:Landroid/graphics/Bitmap;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mColor:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mRotation:F

    .line 203
    const-class v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mCoordinates:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/bonuspack/overlays/GroundOverlay;)V
    .locals 8

    .line 54
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;-><init>()V

    .line 55
    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->getPosition()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->getHeight()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v4, v1}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->getHeight()F

    move-result v3

    div-float/2addr v3, v2

    float-to-double v3, v3

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v0, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    .line 58
    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->getWidth()F

    move-result v4

    div-float/2addr v4, v2

    float-to-double v4, v4

    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {v0, v4, v5, v6}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    .line 59
    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->getWidth()F

    move-result v5

    div-float/2addr v5, v2

    float-to-double v5, v5

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v5, v6, v2}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mCoordinates:Ljava/util/ArrayList;

    .line 61
    new-instance v5, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-direct {v5, v6, v7, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mCoordinates:Ljava/util/ArrayList;

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v3}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mIcon:Landroid/graphics/Bitmap;

    .line 65
    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->getBearing()F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mRotation:F

    .line 66
    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->getTransparency()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    rsub-int v0, v0, 0xff

    iput v0, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mColor:I

    .line 67
    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mVisibility:Z

    return-void
.end method


# virtual methods
.method public asGeoJSON(Z)Lcom/google/gson/JsonObject;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public buildOverlay(Lorg/osmdroid/views/MapView;Lorg/osmdroid/bonuspack/kml/Style;Lorg/osmdroid/bonuspack/kml/KmlFeature$Styler;Lorg/osmdroid/bonuspack/kml/KmlDocument;)Lorg/osmdroid/views/overlay/Overlay;
    .locals 7

    .line 108
    new-instance p1, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;

    invoke-direct {p1}, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;-><init>()V

    .line 109
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mCoordinates:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p4, 0x2

    if-ne p2, p4, :cond_0

    .line 110
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mCoordinates:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/osmdroid/util/GeoPoint;

    .line 111
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mCoordinates:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    .line 112
    invoke-static {p2, v0}, Lorg/osmdroid/util/GeoPoint;->fromCenterBetween(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 113
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 114
    invoke-virtual {v1, p2}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v1

    .line 115
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 116
    invoke-virtual {v2, p2}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result p2

    int-to-float v0, v1

    int-to-float p2, p2

    .line 117
    invoke-virtual {p1, v0, p2}, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->setDimensions(FF)V

    .line 121
    :cond_0
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mIcon:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_1

    .line 122
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p4, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {p2, p4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->setImage(Landroid/graphics/drawable/Drawable;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 124
    iget p4, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mColor:I

    invoke-static {p4}, Landroid/graphics/Color;->alpha(I)I

    move-result p4

    int-to-float p4, p4

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p4, v0

    sub-float/2addr p2, p4

    .line 125
    invoke-virtual {p1, p2}, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->setTransparency(F)V

    goto :goto_0

    .line 128
    :cond_1
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p4, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 129
    iget p4, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mColor:I

    invoke-virtual {p2, p4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 130
    new-instance p4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p4}, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :goto_0
    iget p2, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mRotation:F

    neg-float p2, p2

    invoke-virtual {p1, p2}, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->setBearing(F)V

    if-nez p3, :cond_2

    .line 135
    iget-boolean p2, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mVisibility:Z

    invoke-virtual {p1, p2}, Lorg/osmdroid/bonuspack/overlays/GroundOverlay;->setEnabled(Z)V

    goto :goto_1

    .line 137
    :cond_2
    invoke-interface {p3, p1, p0}, Lorg/osmdroid/bonuspack/kml/KmlFeature$Styler;->onFeature(Lorg/osmdroid/views/overlay/Overlay;Lorg/osmdroid/bonuspack/kml/KmlFeature;)V

    :goto_1
    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->clone()Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/osmdroid/bonuspack/kml/KmlFeature;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->clone()Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;
    .locals 2

    .line 168
    invoke-super {p0}, Lorg/osmdroid/bonuspack/kml/KmlFeature;->clone()Lorg/osmdroid/bonuspack/kml/KmlFeature;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;

    .line 169
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mCoordinates:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->cloneArrayOfGeoPoint(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mCoordinates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mCoordinates:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/osmdroid/util/BoundingBox;->fromGeoPoints(Ljava/util/List;)Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipFile;)V
    .locals 2

    .line 80
    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mIconHref:Ljava/lang/String;

    const-string v0, "http://"

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mIconHref:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_2

    if-eqz p2, :cond_1

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x2f

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mIconHref:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 88
    :cond_1
    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 91
    :cond_2
    :try_start_0
    invoke-virtual {p3, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    .line 92
    invoke-virtual {p3, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    .line 93
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mIcon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 95
    :catch_0
    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 82
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mIconHref:Ljava/lang/String;

    invoke-static {p1}, Lorg/osmdroid/bonuspack/utils/BonusPackHelper;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mIcon:Landroid/graphics/Bitmap;

    :goto_1
    return-void
.end method

.method public setLatLonBox(DDDD)V
    .locals 2

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mCoordinates:Ljava/util/ArrayList;

    .line 102
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v1, p1, p2, p7, p8}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mCoordinates:Ljava/util/ArrayList;

    new-instance p2, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {p2, p3, p4, p5, p6}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public writeKMLSpecifics(Ljava/io/Writer;)V
    .locals 5

    .line 144
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<color>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mColor:I

    invoke-static {v1}, Lorg/osmdroid/bonuspack/kml/ColorStyle;->colorAsKMLString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</color>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Icon><href>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mIconHref:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/lang3/StringEscapeUtils;->escapeXml10(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</href></Icon>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "<LatLonBox>"

    .line 146
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mCoordinates:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    .line 148
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mCoordinates:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<north>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</north>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<south>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</south>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<east>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</east>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<west>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</west>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<rotation>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mRotation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</rotation>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "</LatLonBox>\n"

    .line 154
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 180
    invoke-super {p0, p1, p2}, Lorg/osmdroid/bonuspack/kml/KmlFeature;->writeToParcel(Landroid/os/Parcel;I)V

    .line 181
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mIconHref:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 183
    iget p2, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget p2, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mRotation:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 185
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mCoordinates:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
