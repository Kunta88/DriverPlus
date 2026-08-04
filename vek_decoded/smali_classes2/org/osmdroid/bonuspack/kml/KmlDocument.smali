.class public Lorg/osmdroid/bonuspack/kml/KmlDocument;
.super Ljava/lang/Object;
.source "KmlDocument.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;,
        Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/bonuspack/kml/KmlDocument;",
            ">;"
        }
    .end annotation
.end field

.field protected static KEYWORDS_DICTIONARY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mKmlRoot:Lorg/osmdroid/bonuspack/kml/KmlFolder;

.field protected mLocalFile:Ljava/io/File;

.field protected mMaxStyleId:I

.field protected mStyles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/osmdroid/bonuspack/kml/StyleSelector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 326
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    .line 327
    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->Document:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "Document"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->Folder:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "Folder"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->NetworkLink:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "NetworkLink"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->GroundOverlay:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "GroundOverlay"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->Placemark:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "Placemark"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->Point:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "Point"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->LineString:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "LineString"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->gx_Track:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "gx:Track"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->Polygon:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "Polygon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->innerBoundaryIs:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "innerBoundaryIs"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->MultiGeometry:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "MultiGeometry"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->Style:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "Style"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->StyleMap:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "StyleMap"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->LineStyle:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "LineStyle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->PolyStyle:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "PolyStyle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->IconStyle:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "IconStyle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->hotSpot:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "hotSpot"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->Data:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "Data"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->SimpleData:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "SimpleData"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->name:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->description:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->visibility:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "visibility"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->open:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "open"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->coordinates:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "coordinates"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->gx_coord:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "gx:coord"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->when:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "when"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->styleUrl:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "styleUrl"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->key:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->color:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "color"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->colorMode:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "colorMode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->width:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->scale:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "scale"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->heading:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "heading"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->href:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "href"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->north:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "north"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->south:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "south"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->east:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "east"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->west:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "west"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->rotation:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "rotation"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->LatLonBox:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "LatLonBox"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->KEYWORDS_DICTIONARY:Ljava/util/HashMap;

    sget-object v1, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;->value:Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlKeywords;

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlDocument$1;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/KmlDocument$1;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mStyles:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mMaxStyleId:I

    .line 81
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlFolder;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/KmlFolder;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mKmlRoot:Lorg/osmdroid/bonuspack/kml/KmlFolder;

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mLocalFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 1167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1168
    const-class v0, Lorg/osmdroid/bonuspack/kml/KmlFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/bonuspack/kml/KmlFolder;

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mKmlRoot:Lorg/osmdroid/bonuspack/kml/KmlFolder;

    .line 1170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1171
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mStyles:Ljava/util/HashMap;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1174
    const-class v3, Lorg/osmdroid/bonuspack/kml/Style;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/bonuspack/kml/Style;

    .line 1175
    iget-object v4, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1177
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mMaxStyleId:I

    .line 1178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 1179
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 1180
    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mLocalFile:Ljava/io/File;

    goto :goto_1

    .line 1182
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mLocalFile:Ljava/io/File;

    :goto_1
    return-void
.end method

.method protected static parseKmlCoord(Ljava/lang/String;)Lorg/osmdroid/util/GeoPoint;
    .locals 12

    const/16 v0, 0x2c

    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 141
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne v0, v3, :cond_0

    .line 144
    :try_start_0
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 145
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 146
    new-instance p0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object p0

    .line 148
    :cond_0
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 149
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    add-int/lit8 v0, v0, 0x1

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 151
    new-instance p0, Lorg/osmdroid/util/GeoPoint;

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v4
.end method

.method protected static parseKmlCoordinates(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    .line 168
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_2

    const/16 v7, 0xa

    if-eq v6, v7, :cond_2

    const/16 v7, 0x9

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    if-nez v4, :cond_1

    const/4 v4, 0x1

    move v5, v3

    :cond_1
    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_4

    add-int/lit8 v6, v3, 0x1

    .line 183
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 184
    invoke-static {v6}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->parseKmlCoord(Ljava/lang/String;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 186
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v4, :cond_4

    .line 171
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-static {v4}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->parseKmlCoord(Ljava/lang/String;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 174
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v4, 0x0

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method


# virtual methods
.method public addStyle(Lorg/osmdroid/bonuspack/kml/StyleSelector;)Ljava/lang/String;
    .locals 2

    .line 127
    iget v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mMaxStyleId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mMaxStyleId:I

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mMaxStyleId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p0, v0, p1}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->putStyle(Ljava/lang/String;Lorg/osmdroid/bonuspack/kml/StyleSelector;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultPathForAndroid(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 227
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "kml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 229
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 231
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLocalFile()Ljava/io/File;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mLocalFile:Ljava/io/File;

    return-object v0
.end method

.method public getStyle(Ljava/lang/String;)Lorg/osmdroid/bonuspack/kml/Style;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/bonuspack/kml/StyleSelector;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 103
    :cond_0
    instance-of v0, p1, Lorg/osmdroid/bonuspack/kml/StyleMap;

    if-eqz v0, :cond_1

    .line 104
    check-cast p1, Lorg/osmdroid/bonuspack/kml/StyleMap;

    invoke-virtual {p1, p0}, Lorg/osmdroid/bonuspack/kml/StyleMap;->getNormalStyle(Lorg/osmdroid/bonuspack/kml/KmlDocument;)Lorg/osmdroid/bonuspack/kml/Style;

    move-result-object p1

    return-object p1

    .line 106
    :cond_1
    check-cast p1, Lorg/osmdroid/bonuspack/kml/Style;

    return-object p1
.end method

.method public getStyles()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/osmdroid/bonuspack/kml/StyleSelector;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mStyles:Ljava/util/HashMap;

    return-object v0
.end method

.method public getStylesList()[Ljava/lang/String;
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 94
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public parseGeoJSON(Lcom/google/gson/JsonObject;)Z
    .locals 1

    .line 1098
    invoke-static {p1}, Lorg/osmdroid/bonuspack/kml/KmlFeature;->parseGeoJSON(Lcom/google/gson/JsonObject;)Lorg/osmdroid/bonuspack/kml/KmlFeature;

    move-result-object p1

    .line 1099
    instance-of v0, p1, Lorg/osmdroid/bonuspack/kml/KmlFolder;

    if-eqz v0, :cond_0

    .line 1100
    check-cast p1, Lorg/osmdroid/bonuspack/kml/KmlFolder;

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mKmlRoot:Lorg/osmdroid/bonuspack/kml/KmlFolder;

    goto :goto_0

    .line 1102
    :cond_0
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlFolder;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/kml/KmlFolder;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mKmlRoot:Lorg/osmdroid/bonuspack/kml/KmlFolder;

    .line 1103
    invoke-virtual {v0, p1}, Lorg/osmdroid/bonuspack/kml/KmlFolder;->add(Lorg/osmdroid/bonuspack/kml/KmlFeature;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public parseGeoJSON(Ljava/io/File;)Z
    .locals 2

    .line 1122
    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mLocalFile:Ljava/io/File;

    .line 1124
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mLocalFile:Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1125
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 1126
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/io/Reader;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 1127
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 1128
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->parseGeoJSON(Lcom/google/gson/JsonObject;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1130
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public parseGeoJSON(Ljava/lang/String;)Z
    .locals 1

    .line 1111
    :try_start_0
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 1112
    invoke-virtual {v0, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 1113
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->parseGeoJSON(Lcom/google/gson/JsonObject;)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1115
    invoke-virtual {p1}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public parseKMLFile(Ljava/io/File;)Z
    .locals 3

    .line 243
    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mLocalFile:Ljava/io/File;

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KmlProvider.parseKMLFile:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mLocalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BONUSPACK"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :try_start_0
    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mLocalFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    .line 249
    invoke-virtual {p0, p1, v1}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->parseKMLStream(Ljava/io/InputStream;Ljava/util/zip/ZipFile;)Z

    move-result v1

    .line 250
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 252
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    const-string p1, "KmlProvider.parseFile - end"

    .line 255
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public parseKMLStream(Ljava/io/InputStream;Ljava/util/zip/ZipFile;)Z
    .locals 2

    .line 303
    new-instance v0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;

    iget-object v1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mLocalFile:Ljava/io/File;

    invoke-direct {v0, p0, v1, p2}, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;-><init>(Lorg/osmdroid/bonuspack/kml/KmlDocument;Ljava/io/File;Ljava/util/zip/ZipFile;)V

    .line 306
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p2

    .line 307
    invoke-virtual {p2, p1, v0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 308
    iget-object p1, v0, Lorg/osmdroid/bonuspack/kml/KmlDocument$KmlSaxHandler;->mKmlRoot:Lorg/osmdroid/bonuspack/kml/KmlFolder;

    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mKmlRoot:Lorg/osmdroid/bonuspack/kml/KmlFolder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 311
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public parseKMLUrl(Ljava/lang/String;)Z
    .locals 2

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KmlProvider.parseKMLUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BONUSPACK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v0, Lorg/osmdroid/bonuspack/utils/HttpConnection;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/utils/HttpConnection;-><init>()V

    .line 206
    invoke-virtual {v0, p1}, Lorg/osmdroid/bonuspack/utils/HttpConnection;->doGet(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Lorg/osmdroid/bonuspack/utils/HttpConnection;->getStream()Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 212
    invoke-virtual {p0, p1, v1}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->parseKMLStream(Ljava/io/InputStream;Ljava/util/zip/ZipFile;)Z

    move-result p1

    .line 214
    :goto_0
    invoke-virtual {v0}, Lorg/osmdroid/bonuspack/utils/HttpConnection;->close()V

    return p1
.end method

.method public parseKMZFile(Ljava/io/File;)Z
    .locals 6

    .line 265
    iput-object p1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mLocalFile:Ljava/io/File;

    .line 266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KmlProvider.parseKMZFile:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mLocalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BONUSPACK"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 268
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mLocalFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 271
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 272
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    .line 273
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 274
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".kml"

    .line 275
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 280
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 281
    invoke-virtual {v1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KML root:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {p0, v3, v1}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->parseKMLStream(Ljava/io/InputStream;Ljava/util/zip/ZipFile;)Z

    move-result v0

    goto :goto_1

    :cond_2
    const-string v2, "No .kml entry found."

    .line 285
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 288
    :goto_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return p1
.end method

.method public putStyle(Ljava/lang/String;Lorg/osmdroid/bonuspack/kml/StyleSelector;)V
    .locals 2

    .line 113
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 114
    iget v1, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mMaxStyleId:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mMaxStyleId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :catch_0
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public saveAsGeoJSON(Ljava/io/File;)Z
    .locals 2

    .line 1085
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 1086
    new-instance p1, Ljava/io/BufferedWriter;

    const/16 v1, 0x2000

    invoke-direct {p1, v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 1087
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->saveAsGeoJSON(Ljava/io/Writer;)Z

    move-result v0

    .line 1088
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 1091
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public saveAsGeoJSON(Ljava/io/Writer;)Z
    .locals 5

    .line 1063
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mKmlRoot:Lorg/osmdroid/bonuspack/kml/KmlFolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/osmdroid/bonuspack/kml/KmlFolder;->asGeoJSON(Z)Lcom/google/gson/JsonObject;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 1067
    :cond_0
    :try_start_0
    new-instance v3, Lcom/google/gson/GsonBuilder;

    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 1068
    new-instance v4, Lcom/google/gson/stream/JsonWriter;

    invoke-direct {v4, p1}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 1069
    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 1072
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public saveAsKML(Ljava/io/File;)Z
    .locals 3

    const-string v0, "BONUSPACK"

    .line 1048
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string p1, "UTF-8"

    invoke-direct {v1, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1051
    new-instance p1, Ljava/io/BufferedWriter;

    const/16 v2, 0x2000

    invoke-direct {p1, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 1052
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/kml/KmlDocument;->saveAsKML(Ljava/io/Writer;)Z

    move-result v1

    .line 1053
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    const-string p1, "Saved."

    .line 1054
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 1057
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public saveAsKML(Ljava/io/Writer;)Z
    .locals 2

    :try_start_0
    const-string v0, "<?xml version=\'1.0\' encoding=\'UTF-8\'?>\n"

    .line 1020
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "<kml xmlns=\'http://www.opengis.net/kml/2.2\' xmlns:gx=\'http://www.google.com/kml/ext/2.2\'>\n"

    .line 1021
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mKmlRoot:Lorg/osmdroid/bonuspack/kml/KmlFolder;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1024
    invoke-virtual {v0, p1, v1, p0}, Lorg/osmdroid/bonuspack/kml/KmlFolder;->writeAsKML(Ljava/io/Writer;ZLorg/osmdroid/bonuspack/kml/KmlDocument;)Z

    move-result v1

    :cond_0
    const-string v0, "</kml>\n"

    .line 1025
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 1028
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public writeKMLStyles(Ljava/io/Writer;)V
    .locals 3

    .line 1034
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1035
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1036
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/bonuspack/kml/StyleSelector;

    .line 1037
    invoke-virtual {v1, p1, v2}, Lorg/osmdroid/bonuspack/kml/StyleSelector;->writeAsKML(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1143
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mKmlRoot:Lorg/osmdroid/bonuspack/kml/KmlFolder;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1146
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1147
    iget-object v0, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1148
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1149
    iget-object v2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 1151
    :cond_0
    iget p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mMaxStyleId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1152
    iget-object p2, p0, Lorg/osmdroid/bonuspack/kml/KmlDocument;->mLocalFile:Ljava/io/File;

    if-eqz p2, :cond_1

    .line 1153
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p2, ""

    .line 1155
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
