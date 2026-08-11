.class public Lorg/osmdroid/bonuspack/kml/IconStyle;
.super Lorg/osmdroid/bonuspack/kml/ColorStyle;
.source "IconStyle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/bonuspack/kml/IconStyle;",
            ">;"
        }
    .end annotation
.end field

.field private static mIconCache:Lorg/osmdroid/bonuspack/utils/WebImageCache;


# instance fields
.field public mHeading:F

.field public mHotSpot:Lorg/osmdroid/bonuspack/kml/HotSpot;

.field public mHref:Ljava/lang/String;

.field public mIcon:Landroid/graphics/Bitmap;

.field public mScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lorg/osmdroid/bonuspack/utils/WebImageCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lorg/osmdroid/bonuspack/utils/WebImageCache;-><init>(I)V

    sput-object v0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mIconCache:Lorg/osmdroid/bonuspack/utils/WebImageCache;

    .line 137
    new-instance v0, Lorg/osmdroid/bonuspack/kml/IconStyle$1;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/IconStyle$1;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/kml/IconStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/ColorStyle;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 41
    iput v0, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mScale:F

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mHeading:F

    .line 43
    new-instance v0, Lorg/osmdroid/bonuspack/kml/HotSpot;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/HotSpot;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mHotSpot:Lorg/osmdroid/bonuspack/kml/HotSpot;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 147
    invoke-direct {p0, p1}, Lorg/osmdroid/bonuspack/kml/ColorStyle;-><init>(Landroid/os/Parcel;)V

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mScale:F

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mHeading:F

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mHref:Ljava/lang/String;

    .line 151
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mIcon:Landroid/graphics/Bitmap;

    .line 152
    const-class v0, Lorg/osmdroid/bonuspack/kml/HotSpot;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/bonuspack/kml/HotSpot;

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mHotSpot:Lorg/osmdroid/bonuspack/kml/HotSpot;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFinalIcon(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    .line 77
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 79
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mScale:F

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 80
    iget-object v2, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mScale:F

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eqz v0, :cond_3

    if-nez v2, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mIcon:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 87
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/kml/IconStyle;->getFinalColor()I

    move-result p1

    if-eqz p1, :cond_2

    .line 89
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    const-string p1, "BONUSPACK"

    const-string v0, "KML icon has size=0"

    .line 82
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public setIcon(Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipFile;)V
    .locals 3

    .line 52
    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mHref:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 54
    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_0
    const-string v1, "http://"

    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mHref:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_3

    if-eqz p2, :cond_2

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x2f

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mHref:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 62
    :cond_2
    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 65
    :cond_3
    :try_start_0
    invoke-virtual {p3, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    .line 66
    invoke-virtual {p3, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    .line 67
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mIcon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 69
    :catch_0
    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 56
    :cond_4
    :goto_0
    sget-object p1, Lorg/osmdroid/bonuspack/kml/IconStyle;->mIconCache:Lorg/osmdroid/bonuspack/utils/WebImageCache;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mHref:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/osmdroid/bonuspack/utils/WebImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mIcon:Landroid/graphics/Bitmap;

    :goto_1
    return-void
.end method

.method public styleMarker(Lorg/osmdroid/views/overlay/Marker;Landroid/content/Context;)V
    .locals 4

    .line 95
    invoke-virtual {p0, p2}, Lorg/osmdroid/bonuspack/kml/IconStyle;->getFinalIcon(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2

    .line 96
    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Marker;->setIcon(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_0

    .line 98
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mHotSpot:Lorg/osmdroid/bonuspack/kml/HotSpot;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mScale:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/osmdroid/bonuspack/kml/HotSpot;->getX(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mHotSpot:Lorg/osmdroid/bonuspack/kml/HotSpot;

    .line 99
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result p2

    int-to-float p2, p2

    iget v3, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mScale:F

    div-float/2addr p2, v3

    invoke-virtual {v2, p2}, Lorg/osmdroid/bonuspack/kml/HotSpot;->getY(F)F

    move-result p2

    sub-float/2addr v1, p2

    .line 98
    invoke-virtual {p1, v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setAnchor(FF)V

    .line 101
    :cond_0
    iget p2, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mHeading:F

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/overlay/Marker;->setRotation(F)V

    return-void
.end method

.method public writeAsKML(Ljava/io/Writer;)V
    .locals 2

    :try_start_0
    const-string v0, "<IconStyle>\n"

    .line 106
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 107
    invoke-super {p0, p1}, Lorg/osmdroid/bonuspack/kml/ColorStyle;->writeAsKML(Ljava/io/Writer;)V

    .line 109
    iget v0, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<scale>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</scale>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 111
    :cond_0
    iget v0, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mHeading:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<heading>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mHeading:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</heading>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 113
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mHref:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Icon><href>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mHref:Ljava/lang/String;

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

    .line 115
    :cond_2
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mHotSpot:Lorg/osmdroid/bonuspack/kml/HotSpot;

    invoke-virtual {v0, p1}, Lorg/osmdroid/bonuspack/kml/HotSpot;->writeAsKML(Ljava/io/Writer;)V

    const-string v0, "</IconStyle>\n"

    .line 116
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 129
    invoke-super {p0, p1, p2}, Lorg/osmdroid/bonuspack/kml/ColorStyle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 130
    iget v0, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 131
    iget v0, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mHeading:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 132
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mHref:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 134
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mHotSpot:Lorg/osmdroid/bonuspack/kml/HotSpot;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
