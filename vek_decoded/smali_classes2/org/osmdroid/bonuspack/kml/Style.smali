.class public Lorg/osmdroid/bonuspack/kml/Style;
.super Lorg/osmdroid/bonuspack/kml/StyleSelector;
.source "Style.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/bonuspack/kml/Style;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mIconStyle:Lorg/osmdroid/bonuspack/kml/IconStyle;

.field public mLineStyle:Lorg/osmdroid/bonuspack/kml/LineStyle;

.field public mPolyStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lorg/osmdroid/bonuspack/kml/Style$1;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/Style$1;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/kml/Style;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/StyleSelector;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IFI)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/Style;-><init>()V

    .line 33
    new-instance v0, Lorg/osmdroid/bonuspack/kml/IconStyle;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/IconStyle;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/Style;->mIconStyle:Lorg/osmdroid/bonuspack/kml/IconStyle;

    .line 34
    iput-object p1, v0, Lorg/osmdroid/bonuspack/kml/IconStyle;->mIcon:Landroid/graphics/Bitmap;

    .line 35
    new-instance p1, Lorg/osmdroid/bonuspack/kml/LineStyle;

    invoke-direct {p1, p2, p3}, Lorg/osmdroid/bonuspack/kml/LineStyle;-><init>(IF)V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/Style;->mLineStyle:Lorg/osmdroid/bonuspack/kml/LineStyle;

    .line 36
    new-instance p1, Lorg/osmdroid/bonuspack/kml/ColorStyle;

    invoke-direct {p1, p4}, Lorg/osmdroid/bonuspack/kml/ColorStyle;-><init>(I)V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/Style;->mPolyStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Lorg/osmdroid/bonuspack/kml/StyleSelector;-><init>()V

    .line 109
    const-class v0, Lorg/osmdroid/bonuspack/kml/LineStyle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/bonuspack/kml/LineStyle;

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/Style;->mLineStyle:Lorg/osmdroid/bonuspack/kml/LineStyle;

    .line 110
    const-class v0, Lorg/osmdroid/bonuspack/kml/ColorStyle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/bonuspack/kml/ColorStyle;

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/Style;->mPolyStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;

    .line 111
    const-class v0, Lorg/osmdroid/bonuspack/kml/IconStyle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/bonuspack/kml/IconStyle;

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/Style;->mIconStyle:Lorg/osmdroid/bonuspack/kml/IconStyle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFinalIcon(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/Style;->mIconStyle:Lorg/osmdroid/bonuspack/kml/IconStyle;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p1}, Lorg/osmdroid/bonuspack/kml/IconStyle;->getFinalIcon(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOutlinePaint()Landroid/graphics/Paint;
    .locals 2

    .line 53
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/Style;->mLineStyle:Lorg/osmdroid/bonuspack/kml/LineStyle;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lorg/osmdroid/bonuspack/kml/LineStyle;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 57
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0
.end method

.method public setIcon(Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipFile;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/Style;->mIconStyle:Lorg/osmdroid/bonuspack/kml/IconStyle;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lorg/osmdroid/bonuspack/kml/IconStyle;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/IconStyle;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/Style;->mIconStyle:Lorg/osmdroid/bonuspack/kml/IconStyle;

    .line 42
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/Style;->mIconStyle:Lorg/osmdroid/bonuspack/kml/IconStyle;

    invoke-virtual {v0, p1, p2, p3}, Lorg/osmdroid/bonuspack/kml/IconStyle;->setIcon(Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipFile;)V

    return-void
.end method

.method public writeAsKML(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2

    .line 74
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Style id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\'>\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/Style;->mLineStyle:Lorg/osmdroid/bonuspack/kml/LineStyle;

    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p2, p1}, Lorg/osmdroid/bonuspack/kml/LineStyle;->writeAsKML(Ljava/io/Writer;)V

    .line 77
    :cond_0
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/Style;->mPolyStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;

    if-eqz p2, :cond_1

    .line 78
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/bonuspack/kml/Style;->writePolyStyle(Ljava/io/Writer;Lorg/osmdroid/bonuspack/kml/ColorStyle;)V

    .line 79
    :cond_1
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/Style;->mIconStyle:Lorg/osmdroid/bonuspack/kml/IconStyle;

    if-eqz p2, :cond_2

    .line 80
    invoke-virtual {p2, p1}, Lorg/osmdroid/bonuspack/kml/IconStyle;->writeAsKML(Ljava/io/Writer;)V

    :cond_2
    const-string p2, "</Style>\n"

    .line 81
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected writePolyStyle(Ljava/io/Writer;Lorg/osmdroid/bonuspack/kml/ColorStyle;)V
    .locals 1

    :try_start_0
    const-string v0, "<PolyStyle>\n"

    .line 64
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2, p1}, Lorg/osmdroid/bonuspack/kml/ColorStyle;->writeAsKML(Ljava/io/Writer;)V

    const-string p2, "</PolyStyle>\n"

    .line 66
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/Style;->mLineStyle:Lorg/osmdroid/bonuspack/kml/LineStyle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 95
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/Style;->mPolyStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 96
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/Style;->mIconStyle:Lorg/osmdroid/bonuspack/kml/IconStyle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
