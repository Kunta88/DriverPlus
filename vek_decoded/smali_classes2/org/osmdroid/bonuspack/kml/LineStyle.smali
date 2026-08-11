.class public Lorg/osmdroid/bonuspack/kml/LineStyle;
.super Lorg/osmdroid/bonuspack/kml/ColorStyle;
.source "LineStyle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/bonuspack/kml/LineStyle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lorg/osmdroid/bonuspack/kml/LineStyle$1;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/LineStyle$1;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/kml/LineStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    invoke-direct {p0, v0, v1}, Lorg/osmdroid/bonuspack/kml/LineStyle;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lorg/osmdroid/bonuspack/kml/ColorStyle;-><init>(I)V

    .line 20
    iput p2, p0, Lorg/osmdroid/bonuspack/kml/LineStyle;->mWidth:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lorg/osmdroid/bonuspack/kml/ColorStyle;-><init>(Landroid/os/Parcel;)V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lorg/osmdroid/bonuspack/kml/LineStyle;->mWidth:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOutlinePaint()Landroid/graphics/Paint;
    .locals 2

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 28
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/kml/LineStyle;->getFinalColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    iget v1, p0, Lorg/osmdroid/bonuspack/kml/LineStyle;->mWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 30
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0
.end method

.method public writeAsKML(Ljava/io/Writer;)V
    .locals 2

    :try_start_0
    const-string v0, "<LineStyle>\n"

    .line 36
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 37
    invoke-super {p0, p1}, Lorg/osmdroid/bonuspack/kml/ColorStyle;->writeAsKML(Ljava/io/Writer;)V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<width>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/bonuspack/kml/LineStyle;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</width>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "</LineStyle>\n"

    .line 40
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Lorg/osmdroid/bonuspack/kml/ColorStyle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 54
    iget p2, p0, Lorg/osmdroid/bonuspack/kml/LineStyle;->mWidth:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
