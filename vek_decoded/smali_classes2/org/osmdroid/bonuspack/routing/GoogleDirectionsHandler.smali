.class Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GoogleRoadManager.java"


# instance fields
.field isBB:Z

.field isDistance:Z

.field isDuration:Z

.field isLeg:Z

.field isOverviewPolyline:Z

.field isPolyline:Z

.field isStep:Z

.field mCurrentRoad:Lorg/osmdroid/bonuspack/routing/Road;

.field mEast:D

.field mLat:D

.field mLeg:Lorg/osmdroid/bonuspack/routing/RoadLeg;

.field mLng:D

.field mNode:Lorg/osmdroid/bonuspack/routing/RoadNode;

.field mNorth:D

.field mRoads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/bonuspack/routing/Road;",
            ">;"
        }
    .end annotation
.end field

.field mSouth:D

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field mValue:I

.field mWest:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 138
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isDistance:Z

    iput-boolean v0, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isDuration:Z

    iput-boolean v0, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isStep:Z

    iput-boolean v0, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isLeg:Z

    iput-boolean v0, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isPolyline:Z

    iput-boolean v0, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isBB:Z

    iput-boolean v0, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isOverviewPolyline:Z

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mRoads:Ljava/util/ArrayList;

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

    .line 173
    iget-object v0, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "points"

    .line 178
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 179
    iget-boolean p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isPolyline:Z

    const/16 p2, 0xa

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lorg/osmdroid/bonuspack/utils/PolylineEncoder;->decode(Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object p1

    .line 182
    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mCurrentRoad:Lorg/osmdroid/bonuspack/routing/Road;

    iget-object p2, p2, Lorg/osmdroid/bonuspack/routing/Road;->mRouteHigh:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 183
    :cond_0
    iget-boolean p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isOverviewPolyline:Z

    if-eqz p1, :cond_11

    .line 185
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mCurrentRoad:Lorg/osmdroid/bonuspack/routing/Road;

    iget-object v0, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lorg/osmdroid/bonuspack/utils/PolylineEncoder;->decode(Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/osmdroid/bonuspack/routing/Road;->setRouteLow(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_1
    const-string p1, "polyline"

    .line 187
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 188
    iput-boolean p3, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isPolyline:Z

    goto/16 :goto_2

    :cond_2
    const-string p1, "overview_polyline"

    .line 189
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 190
    iput-boolean p3, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isOverviewPolyline:Z

    goto/16 :goto_2

    :cond_3
    const-string p1, "value"

    .line 191
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 192
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mValue:I

    goto/16 :goto_2

    :cond_4
    const-string p1, "duration"

    .line 193
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 194
    iget-boolean p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isStep:Z

    if-eqz p1, :cond_5

    .line 195
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mNode:Lorg/osmdroid/bonuspack/routing/RoadNode;

    iget p2, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mValue:I

    int-to-double v0, p2

    iput-wide v0, p1, Lorg/osmdroid/bonuspack/routing/RoadNode;->mDuration:D

    goto :goto_0

    .line 197
    :cond_5
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mLeg:Lorg/osmdroid/bonuspack/routing/RoadLeg;

    iget p2, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mValue:I

    int-to-double v0, p2

    iput-wide v0, p1, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mDuration:D

    .line 198
    :goto_0
    iput-boolean p3, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isDuration:Z

    goto/16 :goto_2

    :cond_6
    const-string p1, "distance"

    .line 199
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 200
    iget-boolean p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isStep:Z

    const-wide v0, 0x408f400000000000L    # 1000.0

    if-eqz p1, :cond_7

    .line 201
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mNode:Lorg/osmdroid/bonuspack/routing/RoadNode;

    iget p2, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mValue:I

    int-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    iput-wide v2, p1, Lorg/osmdroid/bonuspack/routing/RoadNode;->mLength:D

    goto :goto_1

    .line 203
    :cond_7
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mLeg:Lorg/osmdroid/bonuspack/routing/RoadLeg;

    iget p2, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mValue:I

    int-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    iput-wide v2, p1, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mLength:D

    .line 204
    :goto_1
    iput-boolean p3, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isDistance:Z

    goto/16 :goto_2

    :cond_8
    const-string p1, "html_instructions"

    .line 205
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 206
    iget-boolean p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isStep:Z

    if-eqz p1, :cond_11

    .line 207
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 210
    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mNode:Lorg/osmdroid/bonuspack/routing/RoadNode;

    iput-object p1, p2, Lorg/osmdroid/bonuspack/routing/RoadNode;->mInstructions:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    const-string p1, "start_location"

    .line 213
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 214
    iget-boolean p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isStep:Z

    if-eqz p1, :cond_11

    .line 215
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mNode:Lorg/osmdroid/bonuspack/routing/RoadNode;

    new-instance p2, Lorg/osmdroid/util/GeoPoint;

    iget-wide v0, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mLat:D

    iget-wide v2, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mLng:D

    invoke-direct {p2, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object p2, p1, Lorg/osmdroid/bonuspack/routing/RoadNode;->mLocation:Lorg/osmdroid/util/GeoPoint;

    goto/16 :goto_2

    :cond_a
    const-string p1, "step"

    .line 216
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 217
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mCurrentRoad:Lorg/osmdroid/bonuspack/routing/Road;

    iget-object p1, p1, Lorg/osmdroid/bonuspack/routing/Road;->mNodes:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mNode:Lorg/osmdroid/bonuspack/routing/RoadNode;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iput-boolean p3, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isStep:Z

    goto/16 :goto_2

    :cond_b
    const-string p1, "leg"

    .line 219
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 220
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mCurrentRoad:Lorg/osmdroid/bonuspack/routing/Road;

    iget-object p1, p1, Lorg/osmdroid/bonuspack/routing/Road;->mLegs:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mLeg:Lorg/osmdroid/bonuspack/routing/RoadLeg;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iput-boolean p3, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isLeg:Z

    goto/16 :goto_2

    :cond_c
    const-string p1, "lat"

    .line 222
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 223
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mLat:D

    goto :goto_2

    :cond_d
    const-string p1, "lng"

    .line 224
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 225
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mLng:D

    goto :goto_2

    :cond_e
    const-string p1, "northeast"

    .line 226
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 227
    iget-boolean p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isBB:Z

    if-eqz p1, :cond_11

    .line 228
    iget-wide p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mLat:D

    iput-wide p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mNorth:D

    .line 229
    iget-wide p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mLng:D

    iput-wide p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mEast:D

    goto :goto_2

    :cond_f
    const-string p1, "southwest"

    .line 231
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 232
    iget-boolean p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isBB:Z

    if-eqz p1, :cond_11

    .line 233
    iget-wide p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mLat:D

    iput-wide p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mSouth:D

    .line 234
    iget-wide p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mLng:D

    iput-wide p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mWest:D

    goto :goto_2

    :cond_10
    const-string p1, "bounds"

    .line 236
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 237
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mCurrentRoad:Lorg/osmdroid/bonuspack/routing/Road;

    new-instance p2, Lorg/osmdroid/util/BoundingBox;

    iget-wide v1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mNorth:D

    iget-wide v3, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mEast:D

    iget-wide v5, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mSouth:D

    iget-wide v7, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mWest:D

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object p2, p1, Lorg/osmdroid/bonuspack/routing/Road;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    .line 238
    iput-boolean p3, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isBB:Z

    :cond_11
    :goto_2
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "route"

    .line 145
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    new-instance p1, Lorg/osmdroid/bonuspack/routing/Road;

    invoke-direct {p1}, Lorg/osmdroid/bonuspack/routing/Road;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mCurrentRoad:Lorg/osmdroid/bonuspack/routing/Road;

    .line 147
    iget-object p2, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mRoads:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "polyline"

    .line 148
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    .line 149
    iput-boolean p3, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isPolyline:Z

    goto :goto_0

    :cond_1
    const-string p1, "overview_polyline"

    .line 150
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 151
    iput-boolean p3, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isOverviewPolyline:Z

    goto :goto_0

    :cond_2
    const-string p1, "leg"

    .line 152
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 153
    new-instance p1, Lorg/osmdroid/bonuspack/routing/RoadLeg;

    invoke-direct {p1}, Lorg/osmdroid/bonuspack/routing/RoadLeg;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mLeg:Lorg/osmdroid/bonuspack/routing/RoadLeg;

    .line 154
    iput-boolean p3, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isLeg:Z

    goto :goto_0

    :cond_3
    const-string p1, "step"

    .line 155
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 156
    new-instance p1, Lorg/osmdroid/bonuspack/routing/RoadNode;

    invoke-direct {p1}, Lorg/osmdroid/bonuspack/routing/RoadNode;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mNode:Lorg/osmdroid/bonuspack/routing/RoadNode;

    .line 157
    iput-boolean p3, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isStep:Z

    goto :goto_0

    :cond_4
    const-string p1, "duration"

    .line 158
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 159
    iput-boolean p3, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isDuration:Z

    goto :goto_0

    :cond_5
    const-string p1, "distance"

    .line 160
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 161
    iput-boolean p3, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isDistance:Z

    goto :goto_0

    :cond_6
    const-string p1, "bounds"

    .line 162
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 163
    iput-boolean p3, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->isBB:Z

    .line 165
    :cond_7
    :goto_0
    iget-object p1, p0, Lorg/osmdroid/bonuspack/routing/GoogleDirectionsHandler;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method
