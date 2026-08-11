.class Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "MapQuestRoadManager.java"


# instance fields
.field isBB:Z

.field isGuidanceNodeCollection:Z

.field mEast:D

.field mLat:D

.field mLink:Lorg/osmdroid/bonuspack/routing/RoadLink;

.field public mLinks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/bonuspack/routing/RoadLink;",
            ">;"
        }
    .end annotation
.end field

.field mLng:D

.field mNode:Lorg/osmdroid/bonuspack/routing/RoadNode;

.field mNorth:D

.field public mRoad:Lorg/osmdroid/bonuspack/routing/Road;

.field mSouth:D

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field mWest:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 203
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->isGuidanceNodeCollection:Z

    iput-boolean v0, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->isBB:Z

    .line 205
    new-instance v0, Lorg/osmdroid/bonuspack/routing/Road;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/routing/Road;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mRoad:Lorg/osmdroid/bonuspack/routing/Road;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mLinks:Ljava/util/ArrayList;

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

    .line 227
    iget-object v0, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "lat"

    .line 232
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 233
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mLat:D

    goto/16 :goto_0

    :cond_0
    const-string p1, "lng"

    .line 234
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 235
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mLng:D

    goto/16 :goto_0

    :cond_1
    const-string p1, "shapePoints"

    .line 236
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 p3, 0xa

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 237
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mRoad:Lorg/osmdroid/bonuspack/routing/Road;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3, v0}, Lorg/osmdroid/bonuspack/utils/PolylineEncoder;->decode(Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p1, Lorg/osmdroid/bonuspack/routing/Road;->mRouteHigh:Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_2
    const-string p1, "generalizedShape"

    .line 239
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 240
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mRoad:Lorg/osmdroid/bonuspack/routing/Road;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3, v0}, Lorg/osmdroid/bonuspack/utils/PolylineEncoder;->decode(Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/osmdroid/bonuspack/routing/Road;->setRouteLow(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_3
    const-string p1, "length"

    .line 242
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 243
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mLink:Lorg/osmdroid/bonuspack/routing/RoadLink;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    iput-wide p2, p1, Lorg/osmdroid/bonuspack/routing/RoadLink;->mLength:D

    goto/16 :goto_0

    :cond_4
    const-string p1, "speed"

    .line 244
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 245
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mLink:Lorg/osmdroid/bonuspack/routing/RoadLink;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    iput-wide p2, p1, Lorg/osmdroid/bonuspack/routing/RoadLink;->mSpeed:D

    goto/16 :goto_0

    :cond_5
    const-string p1, "shapeIndex"

    .line 246
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 247
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mLink:Lorg/osmdroid/bonuspack/routing/RoadLink;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lorg/osmdroid/bonuspack/routing/RoadLink;->mShapeIndex:I

    goto/16 :goto_0

    :cond_6
    const-string p1, "link"

    .line 248
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_7

    .line 252
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mLink:Lorg/osmdroid/bonuspack/routing/RoadLink;

    iget-wide v0, p1, Lorg/osmdroid/bonuspack/routing/RoadLink;->mLength:D

    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mLink:Lorg/osmdroid/bonuspack/routing/RoadLink;

    iget-wide v2, p2, Lorg/osmdroid/bonuspack/routing/RoadLink;->mSpeed:D

    div-double/2addr v0, v2

    const-wide v2, 0x40ac200000000000L    # 3600.0

    mul-double v0, v0, v2

    iput-wide v0, p1, Lorg/osmdroid/bonuspack/routing/RoadLink;->mDuration:D

    .line 253
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mLinks:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mLink:Lorg/osmdroid/bonuspack/routing/RoadLink;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mRoad:Lorg/osmdroid/bonuspack/routing/Road;

    iget-wide v0, p1, Lorg/osmdroid/bonuspack/routing/Road;->mLength:D

    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mLink:Lorg/osmdroid/bonuspack/routing/RoadLink;

    iget-wide v2, p2, Lorg/osmdroid/bonuspack/routing/RoadLink;->mLength:D

    add-double/2addr v0, v2

    iput-wide v0, p1, Lorg/osmdroid/bonuspack/routing/Road;->mLength:D

    .line 255
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mRoad:Lorg/osmdroid/bonuspack/routing/Road;

    iget-wide v0, p1, Lorg/osmdroid/bonuspack/routing/Road;->mDuration:D

    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mLink:Lorg/osmdroid/bonuspack/routing/RoadLink;

    iget-wide v2, p2, Lorg/osmdroid/bonuspack/routing/RoadLink;->mDuration:D

    add-double/2addr v0, v2

    iput-wide v0, p1, Lorg/osmdroid/bonuspack/routing/Road;->mDuration:D

    .line 256
    iput-object p3, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mLink:Lorg/osmdroid/bonuspack/routing/RoadLink;

    goto/16 :goto_0

    :cond_7
    const-string p1, "turnCost"

    .line 257
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 258
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 259
    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mNode:Lorg/osmdroid/bonuspack/routing/RoadNode;

    iget-wide v0, p2, Lorg/osmdroid/bonuspack/routing/RoadNode;->mDuration:D

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/osmdroid/bonuspack/routing/RoadNode;->mDuration:D

    .line 260
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mRoad:Lorg/osmdroid/bonuspack/routing/Road;

    iget-wide p2, p1, Lorg/osmdroid/bonuspack/routing/Road;->mDuration:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p2, v2

    iput-wide p2, p1, Lorg/osmdroid/bonuspack/routing/Road;->mDuration:D

    goto/16 :goto_0

    :cond_8
    const-string p1, "maneuverType"

    .line 261
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 262
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mNode:Lorg/osmdroid/bonuspack/routing/RoadNode;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lorg/osmdroid/bonuspack/routing/RoadNode;->mManeuverType:I

    goto/16 :goto_0

    :cond_9
    const-string p1, "info"

    .line 263
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 264
    iget-boolean p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->isGuidanceNodeCollection:Z

    if-eqz p1, :cond_11

    .line 265
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mNode:Lorg/osmdroid/bonuspack/routing/RoadNode;

    iget-object p1, p1, Lorg/osmdroid/bonuspack/routing/RoadNode;->mInstructions:Ljava/lang/String;

    if-nez p1, :cond_11

    .line 267
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mNode:Lorg/osmdroid/bonuspack/routing/RoadNode;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/osmdroid/bonuspack/routing/RoadNode;->mInstructions:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string p1, "linkId"

    .line 269
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 270
    iget-boolean p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->isGuidanceNodeCollection:Z

    if-eqz p1, :cond_11

    .line 271
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mNode:Lorg/osmdroid/bonuspack/routing/RoadNode;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lorg/osmdroid/bonuspack/routing/RoadNode;->mNextRoadLink:I

    goto/16 :goto_0

    :cond_b
    const-string p1, "node"

    .line 272
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 273
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mRoad:Lorg/osmdroid/bonuspack/routing/Road;

    iget-object p1, p1, Lorg/osmdroid/bonuspack/routing/Road;->mNodes:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mNode:Lorg/osmdroid/bonuspack/routing/RoadNode;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iput-object p3, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mNode:Lorg/osmdroid/bonuspack/routing/RoadNode;

    goto :goto_0

    :cond_c
    const-string p1, "GuidanceNodeCollection"

    .line 275
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 276
    iput-boolean v0, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->isGuidanceNodeCollection:Z

    goto :goto_0

    :cond_d
    const-string p1, "ul"

    .line 277
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 278
    iget-boolean p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->isBB:Z

    if-eqz p1, :cond_11

    .line 279
    iget-wide p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mLat:D

    iput-wide p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mNorth:D

    .line 280
    iget-wide p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mLng:D

    iput-wide p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mWest:D

    goto :goto_0

    :cond_e
    const-string p1, "lr"

    .line 282
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 283
    iget-boolean p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->isBB:Z

    if-eqz p1, :cond_11

    .line 284
    iget-wide p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mLat:D

    iput-wide p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mSouth:D

    .line 285
    iget-wide p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mLng:D

    iput-wide p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mEast:D

    goto :goto_0

    :cond_f
    const-string p1, "boundingBox"

    .line 287
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 288
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mRoad:Lorg/osmdroid/bonuspack/routing/Road;

    new-instance p2, Lorg/osmdroid/util/BoundingBox;

    iget-wide v2, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mNorth:D

    iget-wide v4, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mEast:D

    iget-wide v6, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mSouth:D

    iget-wide v8, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mWest:D

    move-object v1, p2

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object p2, p1, Lorg/osmdroid/bonuspack/routing/Road;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    .line 289
    iput-boolean v0, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->isBB:Z

    goto :goto_0

    :cond_10
    const-string p1, "statusCode"

    .line 290
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 291
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mRoad:Lorg/osmdroid/bonuspack/routing/Road;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lorg/osmdroid/bonuspack/routing/Road;->mStatus:I

    :cond_11
    :goto_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "boundingBox"

    .line 211
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    .line 212
    iput-boolean p3, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->isBB:Z

    goto :goto_0

    :cond_0
    const-string p1, "link"

    .line 213
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 214
    new-instance p1, Lorg/osmdroid/bonuspack/routing/RoadLink;

    invoke-direct {p1}, Lorg/osmdroid/bonuspack/routing/RoadLink;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mLink:Lorg/osmdroid/bonuspack/routing/RoadLink;

    goto :goto_0

    :cond_1
    const-string p1, "node"

    .line 215
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 216
    new-instance p1, Lorg/osmdroid/bonuspack/routing/RoadNode;

    invoke-direct {p1}, Lorg/osmdroid/bonuspack/routing/RoadNode;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mNode:Lorg/osmdroid/bonuspack/routing/RoadNode;

    goto :goto_0

    :cond_2
    const-string p1, "GuidanceNodeCollection"

    .line 217
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 218
    iput-boolean p3, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->isGuidanceNodeCollection:Z

    .line 219
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/MapQuestGuidanceHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method
