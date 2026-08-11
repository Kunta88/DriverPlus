.class public Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "KmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/bonuspack/kml/KmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KmlSaxHandler"
.end annotation


# instance fields
.field mColorStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;

.field mCurrentStyle:Lorg/osmdroid/bonuspack/kml/Style;

.field mCurrentStyleId:Ljava/lang/String;

.field mCurrentStyleKey:Ljava/lang/String;

.field mCurrentStyleMap:Lorg/osmdroid/bonuspack/kml/StyleMap;

.field mDataName:Ljava/lang/String;

.field mEast:D

.field mFile:Ljava/io/File;

.field mIsInnerBoundary:Z

.field mIsNetworkLink:Z

.field mKMZFile:Ljava/util/zip/ZipFile;

.field private mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

.field private mKmlCurrentGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

.field private mKmlCurrentGroundOverlay:Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;

.field private mKmlFeatureStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/bonuspack/kml/KmlFeature;",
            ">;"
        }
    .end annotation
.end field

.field private mKmlGeometryStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/bonuspack/kml/KmlGeometry;",
            ">;"
        }
    .end annotation
.end field

.field public mKmlRoot:Lorg/osmdroid/bonuspack/kml/KmlFolder;

.field mNorth:D

.field mSouth:D

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field mWest:D

.field final synthetic this$0:Lorg/osmdroid/bonuspack/kml/KmlDocument;


# direct methods
.method public constructor <init>(Lorg/osmdroid/bonuspack/kml/KmlDocument;Ljava/io/File;Ljava/util/zip/ZipFile;)V
    .locals 1

    .line 391
    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->this$0:Lorg/osmdroid/bonuspack/kml/KmlDocument;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 372
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 392
    iput-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mFile:Ljava/io/File;

    .line 393
    iput-object p3, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKMZFile:Ljava/util/zip/ZipFile;

    .line 394
    new-instance p1, Lorg/osmdroid/bonuspack/kml/KmlFolder;

    invoke-direct {p1}, Lorg/osmdroid/bonuspack/kml/KmlFolder;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlRoot:Lorg/osmdroid/bonuspack/kml/KmlFolder;

    .line 395
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlFeatureStack:Ljava/util/ArrayList;

    .line 396
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlRoot:Lorg/osmdroid/bonuspack/kml/KmlFolder;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlGeometryStack:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 398
    iput-boolean p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mIsNetworkLink:Z

    .line 399
    iput-boolean p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mIsInnerBoundary:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 627
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 787
    sget-object p1, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    if-nez p1, :cond_0

    return-void

    .line 790
    :cond_0
    sget-object p2, Lorg/osmdroid/bonuspack/kml/KmlDocument$2;->$SwitchMap$org$osmdroid$bonuspack$kml$KmlDocument$KmlKeywords:[I

    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const-string p3, "1"

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 1003
    :pswitch_1
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mDataName:Ljava/lang/String;

    iget-object p3, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/osmdroid/bonuspack/kml/KmlFeature;->setExtendedData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    iput-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mDataName:Ljava/lang/String;

    goto/16 :goto_2

    .line 991
    :pswitch_2
    iget-object v3, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentGroundOverlay:Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;

    if-eqz v3, :cond_d

    .line 992
    iget-wide v4, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mNorth:D

    iget-wide v6, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mSouth:D

    iget-wide v8, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mEast:D

    iget-wide v10, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mWest:D

    invoke-virtual/range {v3 .. v11}, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->setLatLonBox(DDDD)V

    goto/16 :goto_2

    .line 985
    :pswitch_3
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentGroundOverlay:Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;

    if-eqz p1, :cond_d

    .line 986
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p1, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mRotation:F

    goto/16 :goto_2

    .line 981
    :pswitch_4
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mWest:D

    goto/16 :goto_2

    .line 977
    :pswitch_5
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mEast:D

    goto/16 :goto_2

    .line 973
    :pswitch_6
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mSouth:D

    goto/16 :goto_2

    .line 969
    :pswitch_7
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mNorth:D

    goto/16 :goto_2

    .line 925
    :pswitch_8
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyle:Lorg/osmdroid/bonuspack/kml/Style;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mColorStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;

    if-eqz p1, :cond_1

    instance-of p1, p1, Lorg/osmdroid/bonuspack/kml/IconStyle;

    if-eqz p1, :cond_1

    .line 927
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 928
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyle:Lorg/osmdroid/bonuspack/kml/Style;

    iget-object p3, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mFile:Ljava/io/File;

    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKMZFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p2, p1, p3, v0}, Lorg/osmdroid/bonuspack/kml/Style;->setIcon(Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipFile;)V

    goto/16 :goto_2

    .line 929
    :cond_1
    iget-boolean p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mIsNetworkLink:Z

    if-eqz p1, :cond_2

    .line 931
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 932
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKMZFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->loadNetworkLink(Ljava/lang/String;Ljava/util/zip/ZipFile;)V

    goto/16 :goto_2

    .line 933
    :cond_2
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentGroundOverlay:Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;

    if-eqz p1, :cond_d

    .line 935
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mFile:Ljava/io/File;

    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKMZFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p1, p2, p3, v0}, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->setIcon(Ljava/lang/String;Ljava/io/File;Ljava/util/zip/ZipFile;)V

    goto/16 :goto_2

    .line 919
    :pswitch_9
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyle:Lorg/osmdroid/bonuspack/kml/Style;

    if-eqz p1, :cond_d

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mColorStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;

    if-eqz p2, :cond_d

    instance-of p2, p2, Lorg/osmdroid/bonuspack/kml/IconStyle;

    if-eqz p2, :cond_d

    .line 920
    iget-object p1, p1, Lorg/osmdroid/bonuspack/kml/Style;->mIconStyle:Lorg/osmdroid/bonuspack/kml/IconStyle;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p1, Lorg/osmdroid/bonuspack/kml/IconStyle;->mHeading:F

    goto/16 :goto_2

    .line 913
    :pswitch_a
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyle:Lorg/osmdroid/bonuspack/kml/Style;

    if-eqz p1, :cond_d

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mColorStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;

    if-eqz p2, :cond_d

    instance-of p2, p2, Lorg/osmdroid/bonuspack/kml/IconStyle;

    if-eqz p2, :cond_d

    .line 914
    iget-object p1, p1, Lorg/osmdroid/bonuspack/kml/Style;->mIconStyle:Lorg/osmdroid/bonuspack/kml/IconStyle;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p1, Lorg/osmdroid/bonuspack/kml/IconStyle;->mScale:F

    goto/16 :goto_2

    .line 908
    :pswitch_b
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyle:Lorg/osmdroid/bonuspack/kml/Style;

    if-eqz p1, :cond_d

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mColorStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;

    if-eqz p2, :cond_d

    instance-of p2, p2, Lorg/osmdroid/bonuspack/kml/LineStyle;

    if-eqz p2, :cond_d

    .line 909
    iget-object p1, p1, Lorg/osmdroid/bonuspack/kml/Style;->mLineStyle:Lorg/osmdroid/bonuspack/kml/LineStyle;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p1, Lorg/osmdroid/bonuspack/kml/LineStyle;->mWidth:F

    goto/16 :goto_2

    .line 901
    :pswitch_c
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyle:Lorg/osmdroid/bonuspack/kml/Style;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mColorStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;

    if-eqz p1, :cond_d

    .line 902
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "random"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput p2, p1, Lorg/osmdroid/bonuspack/kml/ColorStyle;->mColorMode:I

    goto/16 :goto_2

    .line 892
    :pswitch_d
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyle:Lorg/osmdroid/bonuspack/kml/Style;

    if-eqz p1, :cond_3

    .line 893
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mColorStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;

    if-eqz p1, :cond_d

    .line 894
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/osmdroid/bonuspack/kml/ColorStyle;->parseKMLColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lorg/osmdroid/bonuspack/kml/ColorStyle;->mColor:I

    goto/16 :goto_2

    .line 895
    :cond_3
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentGroundOverlay:Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;

    if-eqz p1, :cond_d

    .line 896
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/osmdroid/bonuspack/kml/ColorStyle;->parseKMLColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;->mColor:I

    goto/16 :goto_2

    .line 888
    :pswitch_e
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyleKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 875
    :pswitch_f
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 p2, 0x23

    if-ne p1, p2, :cond_4

    .line 876
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 878
    :cond_4
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 880
    :goto_0
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyleMap:Lorg/osmdroid/bonuspack/kml/StyleMap;

    if-eqz p2, :cond_5

    .line 881
    iget-object p3, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyleKey:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lorg/osmdroid/bonuspack/kml/StyleMap;->setPair(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 882
    :cond_5
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

    if-eqz p2, :cond_d

    .line 883
    iput-object p1, p2, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mStyle:Ljava/lang/String;

    goto/16 :goto_2

    .line 869
    :pswitch_10
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    if-eqz p1, :cond_d

    instance-of p2, p1, Lorg/osmdroid/bonuspack/kml/KmlTrack;

    if-eqz p2, :cond_d

    .line 870
    check-cast p1, Lorg/osmdroid/bonuspack/kml/KmlTrack;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/osmdroid/bonuspack/kml/KmlTrack;->addWhen(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 864
    :pswitch_11
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    if-eqz p1, :cond_d

    instance-of p2, p1, Lorg/osmdroid/bonuspack/kml/KmlTrack;

    if-eqz p2, :cond_d

    .line 865
    check-cast p1, Lorg/osmdroid/bonuspack/kml/KmlTrack;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/osmdroid/bonuspack/kml/KmlTrack;->addGxCoord(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 850
    :pswitch_12
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

    instance-of p1, p1, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;

    if-eqz p1, :cond_d

    .line 851
    iget-boolean p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mIsInnerBoundary:Z

    if-nez p1, :cond_6

    .line 852
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->parseKmlCoordinates(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p1, Lorg/osmdroid/bonuspack/kml/KmlGeometry;->mCoordinates:Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 854
    :cond_6
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    check-cast p1, Lorg/osmdroid/bonuspack/kml/KmlPolygon;

    .line 855
    iget-object p2, p1, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mHoles:Ljava/util/ArrayList;

    if-nez p2, :cond_7

    .line 856
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mHoles:Ljava/util/ArrayList;

    .line 857
    :cond_7
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->parseKmlCoordinates(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 858
    iget-object p1, p1, Lorg/osmdroid/bonuspack/kml/KmlPolygon;->mHoles:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 846
    :pswitch_13
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p1, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mOpen:Z

    goto/16 :goto_2

    .line 842
    :pswitch_14
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p1, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mVisibility:Z

    goto/16 :goto_2

    .line 838
    :pswitch_15
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mDescription:Ljava/lang/String;

    goto/16 :goto_2

    .line 834
    :pswitch_16
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mName:Ljava/lang/String;

    goto/16 :goto_2

    .line 998
    :pswitch_17
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mDataName:Ljava/lang/String;

    iget-object p3, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/osmdroid/bonuspack/kml/KmlFeature;->setExtendedData(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    iput-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mDataName:Ljava/lang/String;

    goto/16 :goto_2

    .line 942
    :pswitch_18
    iput-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mColorStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;

    goto/16 :goto_2

    .line 960
    :pswitch_19
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyleId:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 961
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->this$0:Lorg/osmdroid/bonuspack/kml/KmlDocument;

    iget-object p3, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyleMap:Lorg/osmdroid/bonuspack/kml/StyleMap;

    invoke-virtual {p2, p1, p3}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->putStyle(Ljava/lang/String;Lorg/osmdroid/bonuspack/kml/StyleSelector;)V

    .line 963
    :cond_8
    iput-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyleMap:Lorg/osmdroid/bonuspack/kml/StyleMap;

    .line 964
    iput-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyleId:Ljava/lang/String;

    .line 965
    iput-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyleKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 946
    :pswitch_1a
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyleId:Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 947
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->this$0:Lorg/osmdroid/bonuspack/kml/KmlDocument;

    iget-object p3, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyle:Lorg/osmdroid/bonuspack/kml/Style;

    invoke-virtual {p2, p1, p3}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->putStyle(Ljava/lang/String;Lorg/osmdroid/bonuspack/kml/StyleSelector;)V

    goto :goto_1

    .line 949
    :cond_9
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->this$0:Lorg/osmdroid/bonuspack/kml/KmlDocument;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyle:Lorg/osmdroid/bonuspack/kml/Style;

    invoke-virtual {p1, p2}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->addStyle(Lorg/osmdroid/bonuspack/kml/StyleSelector;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyleId:Ljava/lang/String;

    .line 951
    :goto_1
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

    if-eqz p1, :cond_a

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlRoot:Lorg/osmdroid/bonuspack/kml/KmlFolder;

    if-eq p1, p2, :cond_a

    .line 953
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyleId:Ljava/lang/String;

    iput-object p2, p1, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mStyle:Ljava/lang/String;

    .line 955
    :cond_a
    iput-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyle:Lorg/osmdroid/bonuspack/kml/Style;

    .line 956
    iput-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyleId:Ljava/lang/String;

    goto/16 :goto_2

    .line 811
    :pswitch_1b
    iput-boolean v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mIsInnerBoundary:Z

    goto/16 :goto_2

    .line 820
    :pswitch_1c
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlGeometryStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_b

    .line 822
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

    check-cast p1, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    iput-object p2, p1, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;->mGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    .line 823
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlGeometryStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 824
    iput-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    goto :goto_2

    .line 826
    :cond_b
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlGeometryStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;

    .line 827
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    invoke-virtual {p1, p2}, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;->addItem(Lorg/osmdroid/bonuspack/kml/KmlGeometry;)V

    .line 828
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlGeometryStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 829
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlGeometryStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    goto :goto_2

    .line 800
    :pswitch_1d
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlFeatureStack:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/osmdroid/bonuspack/kml/KmlFolder;

    .line 801
    iget-object p3, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

    invoke-virtual {p2, p3}, Lorg/osmdroid/bonuspack/kml/KmlFolder;->add(Lorg/osmdroid/bonuspack/kml/KmlFeature;)V

    .line 802
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlFeatureStack:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 803
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlFeatureStack:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/osmdroid/bonuspack/kml/KmlFeature;

    iput-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

    .line 804
    sget-object p2, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->NetworkLink:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    if-ne p1, p2, :cond_c

    .line 805
    iput-boolean v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mIsNetworkLink:Z

    goto :goto_2

    .line 806
    :cond_c
    sget-object p2, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->GroundOverlay:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    if-ne p1, p2, :cond_d

    .line 807
    iput-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentGroundOverlay:Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;

    :cond_d
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1c
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected loadNetworkLink(Ljava/lang/String;Ljava/util/zip/ZipFile;)V
    .locals 5

    .line 403
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/KmlDocument;-><init>()V

    const-string v1, "http://"

    .line 405
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "BONUSPACK"

    if-nez v1, :cond_2

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 408
    new-instance p2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0, p2}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->parseKMLFile(Ljava/io/File;)Z

    move-result p2

    goto :goto_1

    .line 412
    :cond_1
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 413
    invoke-virtual {p2, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load NetworkLink:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v0, v1, p2}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->parseKMLStream(Ljava/io/InputStream;Ljava/util/zip/ZipFile;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p2, 0x0

    goto :goto_1

    .line 406
    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->parseKMLUrl(Ljava/lang/String;)Z

    move-result p2

    :goto_1
    if-eqz p2, :cond_3

    .line 422
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

    check-cast p1, Lorg/osmdroid/bonuspack/kml/KmlFolder;

    iget-object p2, v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mKmlRoot:Lorg/osmdroid/bonuspack/kml/KmlFolder;

    invoke-virtual {p1, p2}, Lorg/osmdroid/bonuspack/kml/KmlFolder;->add(Lorg/osmdroid/bonuspack/kml/KmlFeature;)V

    .line 424
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->this$0:Lorg/osmdroid/bonuspack/kml/KmlDocument;

    iget-object p1, p1, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mStyles:Ljava/util/HashMap;

    iget-object p2, v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mStyles:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_2

    .line 426
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error reading NetworkLink:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 508
    sget-object p1, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    if-eqz p1, :cond_0

    .line 510
    sget-object p2, Lorg/osmdroid/bonuspack/kml/KmlDocument$2;->$SwitchMap$org$osmdroid$bonuspack$kml$KmlDocument$KmlKeywords:[I

    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const-string p3, "id"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "name"

    .line 615
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mDataName:Ljava/lang/String;

    goto/16 :goto_0

    .line 597
    :pswitch_1
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyle:Lorg/osmdroid/bonuspack/kml/Style;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mColorStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;

    if-eqz p2, :cond_0

    instance-of p2, p2, Lorg/osmdroid/bonuspack/kml/IconStyle;

    if-eqz p2, :cond_0

    .line 598
    iget-object p1, p1, Lorg/osmdroid/bonuspack/kml/Style;->mIconStyle:Lorg/osmdroid/bonuspack/kml/IconStyle;

    new-instance p2, Lorg/osmdroid/bonuspack/kml/HotSpot;

    const-string p3, "x"

    .line 599
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    const-string v0, "y"

    .line 600
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const-string v1, "xunits"

    .line 601
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yunits"

    .line 602
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, v0, v1, p4}, Lorg/osmdroid/bonuspack/kml/HotSpot;-><init>(FFLjava/lang/String;Ljava/lang/String;)V

    iput-object p2, p1, Lorg/osmdroid/bonuspack/kml/IconStyle;->mHotSpot:Lorg/osmdroid/bonuspack/kml/HotSpot;

    goto/16 :goto_0

    .line 592
    :pswitch_2
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyle:Lorg/osmdroid/bonuspack/kml/Style;

    new-instance p2, Lorg/osmdroid/bonuspack/kml/IconStyle;

    invoke-direct {p2}, Lorg/osmdroid/bonuspack/kml/IconStyle;-><init>()V

    iput-object p2, p1, Lorg/osmdroid/bonuspack/kml/Style;->mIconStyle:Lorg/osmdroid/bonuspack/kml/IconStyle;

    .line 593
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyle:Lorg/osmdroid/bonuspack/kml/Style;

    iget-object p1, p1, Lorg/osmdroid/bonuspack/kml/Style;->mIconStyle:Lorg/osmdroid/bonuspack/kml/IconStyle;

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mColorStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;

    goto/16 :goto_0

    .line 587
    :pswitch_3
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyle:Lorg/osmdroid/bonuspack/kml/Style;

    new-instance p2, Lorg/osmdroid/bonuspack/kml/ColorStyle;

    invoke-direct {p2}, Lorg/osmdroid/bonuspack/kml/ColorStyle;-><init>()V

    iput-object p2, p1, Lorg/osmdroid/bonuspack/kml/Style;->mPolyStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;

    .line 588
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyle:Lorg/osmdroid/bonuspack/kml/Style;

    iget-object p1, p1, Lorg/osmdroid/bonuspack/kml/Style;->mPolyStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mColorStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;

    goto/16 :goto_0

    .line 582
    :pswitch_4
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyle:Lorg/osmdroid/bonuspack/kml/Style;

    new-instance p2, Lorg/osmdroid/bonuspack/kml/LineStyle;

    invoke-direct {p2}, Lorg/osmdroid/bonuspack/kml/LineStyle;-><init>()V

    iput-object p2, p1, Lorg/osmdroid/bonuspack/kml/Style;->mLineStyle:Lorg/osmdroid/bonuspack/kml/LineStyle;

    .line 583
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyle:Lorg/osmdroid/bonuspack/kml/Style;

    iget-object p1, p1, Lorg/osmdroid/bonuspack/kml/Style;->mLineStyle:Lorg/osmdroid/bonuspack/kml/LineStyle;

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mColorStyle:Lorg/osmdroid/bonuspack/kml/ColorStyle;

    goto/16 :goto_0

    .line 577
    :pswitch_5
    new-instance p1, Lorg/osmdroid/bonuspack/kml/StyleMap;

    invoke-direct {p1}, Lorg/osmdroid/bonuspack/kml/StyleMap;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyleMap:Lorg/osmdroid/bonuspack/kml/StyleMap;

    .line 578
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyleId:Ljava/lang/String;

    goto/16 :goto_0

    .line 572
    :pswitch_6
    new-instance p1, Lorg/osmdroid/bonuspack/kml/Style;

    invoke-direct {p1}, Lorg/osmdroid/bonuspack/kml/Style;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyle:Lorg/osmdroid/bonuspack/kml/Style;

    .line 573
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mCurrentStyleId:Ljava/lang/String;

    goto/16 :goto_0

    .line 567
    :pswitch_7
    new-instance p1, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;

    invoke-direct {p1}, Lorg/osmdroid/bonuspack/kml/KmlMultiGeometry;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    .line 568
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlGeometryStack:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 563
    :pswitch_8
    iput-boolean p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mIsInnerBoundary:Z

    goto/16 :goto_0

    .line 558
    :pswitch_9
    new-instance p1, Lorg/osmdroid/bonuspack/kml/KmlPolygon;

    invoke-direct {p1}, Lorg/osmdroid/bonuspack/kml/KmlPolygon;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    .line 559
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlGeometryStack:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 553
    :pswitch_a
    new-instance p1, Lorg/osmdroid/bonuspack/kml/KmlTrack;

    invoke-direct {p1}, Lorg/osmdroid/bonuspack/kml/KmlTrack;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    .line 554
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlGeometryStack:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 548
    :pswitch_b
    new-instance p1, Lorg/osmdroid/bonuspack/kml/KmlLineString;

    invoke-direct {p1}, Lorg/osmdroid/bonuspack/kml/KmlLineString;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    .line 549
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlGeometryStack:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 543
    :pswitch_c
    new-instance p1, Lorg/osmdroid/bonuspack/kml/KmlPoint;

    invoke-direct {p1}, Lorg/osmdroid/bonuspack/kml/KmlPoint;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentGeometry:Lorg/osmdroid/bonuspack/kml/KmlGeometry;

    .line 544
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlGeometryStack:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 537
    :pswitch_d
    new-instance p1, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;

    invoke-direct {p1}, Lorg/osmdroid/bonuspack/kml/KmlPlacemark;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

    .line 538
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mId:Ljava/lang/String;

    .line 539
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlFeatureStack:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 530
    :pswitch_e
    new-instance p1, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;

    invoke-direct {p1}, Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentGroundOverlay:Lorg/osmdroid/bonuspack/kml/KmlGroundOverlay;

    .line 531
    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

    .line 532
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mId:Ljava/lang/String;

    .line 533
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlFeatureStack:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 523
    :pswitch_f
    new-instance p1, Lorg/osmdroid/bonuspack/kml/KmlFolder;

    invoke-direct {p1}, Lorg/osmdroid/bonuspack/kml/KmlFolder;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

    .line 524
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mId:Ljava/lang/String;

    .line 525
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlFeatureStack:Ljava/util/ArrayList;

    iget-object p3, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    iput-boolean p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mIsNetworkLink:Z

    goto :goto_0

    .line 517
    :pswitch_10
    new-instance p1, Lorg/osmdroid/bonuspack/kml/KmlFolder;

    invoke-direct {p1}, Lorg/osmdroid/bonuspack/kml/KmlFolder;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

    .line 518
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mId:Ljava/lang/String;

    .line 519
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlFeatureStack:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 512
    :pswitch_11
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlRoot:Lorg/osmdroid/bonuspack/kml/KmlFolder;

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlCurrentFeature:Lorg/osmdroid/bonuspack/kml/KmlFeature;

    .line 513
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/osmdroid/bonuspack/kml/KmlFeature;->mId:Ljava/lang/String;

    .line 622
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
