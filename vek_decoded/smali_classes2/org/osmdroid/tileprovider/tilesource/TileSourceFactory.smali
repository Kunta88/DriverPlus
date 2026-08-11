.class public Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;
.super Ljava/lang/Object;
.source "TileSourceFactory.java"


# static fields
.field public static final BASE_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final CLOUDMADESMALLTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final CLOUDMADESTANDARDTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final CYCLEMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final ChartbundleENRH:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final ChartbundleENRL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final ChartbundleWAC:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final DEFAULT_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final FIETS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final HIKEBIKEMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final OPEN_SEAMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final OpenTopo:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final PUBLIC_TRANSPORT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final ROADS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final USGS_SAT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field public static final USGS_TOPO:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

.field private static mTileSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/tileprovider/tilesource/ITileSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 35

    .line 78
    new-instance v8, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const/4 v9, 0x3

    new-array v6, v9, [Ljava/lang/String;

    const-string v0, "http://a.tile.openstreetmap.org/"

    const/4 v10, 0x0

    aput-object v0, v6, v10

    const-string v0, "http://b.tile.openstreetmap.org/"

    const/4 v11, 0x1

    aput-object v0, v6, v11

    const-string v0, "http://c.tile.openstreetmap.org/"

    const/4 v12, 0x2

    aput-object v0, v6, v12

    const-string v1, "Mapnik"

    const/4 v2, 0x0

    const/16 v3, 0x13

    const/16 v4, 0x100

    const-string v5, ".png"

    const-string v7, "\u00a9 OpenStreetMap contributors"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 84
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "http://a.tile.opencyclemap.org/cycle/"

    aput-object v2, v1, v10

    const-string v2, "http://b.tile.opencyclemap.org/cycle/"

    aput-object v2, v1, v11

    const-string v2, "http://c.tile.opencyclemap.org/cycle/"

    aput-object v2, v1, v12

    const-string v14, "CycleMap"

    const/4 v15, 0x0

    const/16 v16, 0x11

    const/16 v17, 0x100

    const-string v18, ".png"

    const-string v20, "Maps \u00a9 Thunderforest, Data \u00a9 OpenStreetMap contributors."

    move-object v13, v0

    move-object/from16 v19, v1

    invoke-direct/range {v13 .. v20}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->CYCLEMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 90
    new-instance v1, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "http://openptmap.org/tiles/"

    aput-object v3, v2, v10

    const-string v22, "OSMPublicTransport"

    const/16 v23, 0x0

    const/16 v24, 0x11

    const/16 v25, 0x100

    const-string v26, ".png"

    const-string v28, "\u00a9 OpenStreetMap contributors"

    move-object/from16 v21, v1

    move-object/from16 v27, v2

    invoke-direct/range {v21 .. v28}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->PUBLIC_TRANSPORT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 96
    sput-object v8, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->DEFAULT_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 101
    new-instance v2, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "http://a.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v4, v3, v10

    const-string v5, "http://b.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v5, v3, v11

    const-string v6, "http://c.tile.cloudmade.com/%s/%d/%d/%d/%d/%d%s?token=%s"

    aput-object v6, v3, v12

    const-string v14, "CloudMadeStandardTiles"

    const/16 v16, 0x12

    const-string v18, ".png"

    move-object v13, v2

    move-object/from16 v19, v3

    invoke-direct/range {v13 .. v19}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->CLOUDMADESTANDARDTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 108
    new-instance v2, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;

    new-array v3, v9, [Ljava/lang/String;

    aput-object v4, v3, v10

    aput-object v5, v3, v11

    aput-object v6, v3, v12

    const-string v20, "CloudMadeSmallTiles"

    const/16 v21, 0x0

    const/16 v22, 0x15

    const/16 v23, 0x40

    const-string v24, ".png"

    move-object/from16 v19, v2

    move-object/from16 v25, v3

    invoke-direct/range {v19 .. v25}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->CLOUDMADESMALLTILES:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 117
    new-instance v2, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    new-array v3, v11, [Ljava/lang/String;

    const-string v4, "http://overlay.openstreetmap.nl/openfietskaart-overlay/"

    aput-object v4, v3, v10

    const-string v26, "Fiets"

    const/16 v27, 0x3

    const/16 v28, 0x12

    const/16 v29, 0x100

    const-string v30, ".png"

    const-string v32, "\u00a9 OpenStreetMap contributors"

    move-object/from16 v25, v2

    move-object/from16 v31, v3

    invoke-direct/range {v25 .. v32}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->FIETS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 121
    new-instance v2, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    new-array v3, v11, [Ljava/lang/String;

    const-string v4, "http://overlay.openstreetmap.nl/basemap/"

    aput-object v4, v3, v10

    const-string v14, "BaseNL"

    const-string v18, ".png"

    move-object v13, v2

    move-object/from16 v19, v3

    invoke-direct/range {v13 .. v19}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->BASE_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 125
    new-instance v2, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    new-array v3, v11, [Ljava/lang/String;

    const-string v4, "http://overlay.openstreetmap.nl/roads/"

    aput-object v4, v3, v10

    const-string v20, "RoadsNL"

    const/16 v22, 0x12

    const/16 v23, 0x100

    const-string v24, ".png"

    const-string v26, "\u00a9 OpenStreetMap contributors"

    move-object/from16 v19, v2

    move-object/from16 v25, v3

    invoke-direct/range {v19 .. v26}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->ROADS_OVERLAY_NL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 129
    new-instance v2, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "http://a.tiles.wmflabs.org/hikebike/"

    aput-object v4, v3, v10

    const-string v4, "http://b.tiles.wmflabs.org/hikebike/"

    aput-object v4, v3, v11

    const-string v4, "http://c.tiles.wmflabs.org/hikebike/"

    aput-object v4, v3, v12

    const-string v14, "HikeBikeMap"

    const-string v18, ".png"

    move-object v13, v2

    move-object/from16 v19, v3

    invoke-direct/range {v13 .. v19}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->HIKEBIKEMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 139
    new-instance v3, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "http://tiles.openseamap.org/seamark/"

    aput-object v5, v4, v10

    const-string v20, "OpenSeaMap"

    const/16 v21, 0x3

    const-string v24, ".png"

    const-string v26, "OpenSeaMap"

    move-object/from16 v19, v3

    move-object/from16 v25, v4

    invoke-direct/range {v19 .. v26}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->OPEN_SEAMAP:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 143
    new-instance v3, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory$1;

    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "https://basemap.nationalmap.gov/arcgis/rest/services/USGSTopo/MapServer/tile/"

    aput-object v5, v4, v10

    const-string v28, "USGS National Map Topo"

    const/16 v29, 0x0

    const/16 v30, 0xf

    const/16 v31, 0x100

    const-string v32, ""

    const-string v34, "USGS"

    move-object/from16 v27, v3

    move-object/from16 v33, v4

    invoke-direct/range {v27 .. v34}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory$1;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->USGS_TOPO:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 150
    new-instance v4, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory$2;

    new-array v5, v11, [Ljava/lang/String;

    const-string v6, "https://basemap.nationalmap.gov/arcgis/rest/services/USGSImageryTopo/MapServer/tile/"

    aput-object v6, v5, v10

    const-string v14, "USGS National Map Sat"

    const/16 v16, 0xf

    const-string v18, ""

    const-string v20, "USGS"

    move-object v13, v4

    move-object/from16 v19, v5

    invoke-direct/range {v13 .. v20}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory$2;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->USGS_SAT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 163
    new-instance v5, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "http://wms.chartbundle.com/tms/v1.0/wac/"

    aput-object v7, v6, v10

    const-string v22, "ChartbundleWAC"

    const/16 v23, 0x4

    const/16 v24, 0xc

    const/16 v25, 0x100

    const-string v26, ".png?type=google"

    const-string v28, "chartbundle.com"

    move-object/from16 v21, v5

    move-object/from16 v27, v6

    invoke-direct/range {v21 .. v28}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->ChartbundleWAC:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 170
    new-instance v6, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    new-array v7, v12, [Ljava/lang/String;

    const-string v9, "http://wms.chartbundle.com/tms/v1.0/enrh/"

    aput-object v9, v7, v10

    const-string v9, "chartbundle.com"

    aput-object v9, v7, v11

    const-string v14, "ChartbundleENRH"

    const/4 v15, 0x4

    const/16 v16, 0xc

    const-string v18, ".png?type=google"

    move-object v13, v6

    move-object/from16 v19, v7

    invoke-direct/range {v13 .. v19}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v6, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->ChartbundleENRH:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 176
    new-instance v7, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    new-array v12, v12, [Ljava/lang/String;

    const-string v13, "http://wms.chartbundle.com/tms/v1.0/enrl/"

    aput-object v13, v12, v10

    aput-object v9, v12, v11

    const-string v20, "ChartbundleENRL"

    const/16 v21, 0x4

    const/16 v22, 0xc

    const/16 v23, 0x100

    const-string v24, ".png?type=google"

    move-object/from16 v19, v7

    move-object/from16 v25, v12

    invoke-direct/range {v19 .. v25}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    sput-object v7, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->ChartbundleENRL:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 183
    new-instance v9, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    new-array v11, v11, [Ljava/lang/String;

    const-string v12, "https://opentopomap.org/"

    aput-object v12, v11, v10

    const-string v26, "OpenTopoMap"

    const/16 v27, 0x0

    const/16 v28, 0x13

    const/16 v29, 0x100

    const-string v30, ".png"

    const-string v32, "Kartendaten: \u00a9 OpenStreetMap-Mitwirkende, SRTM | Kartendarstellung: \u00a9 OpenTopoMap (CC-BY-SA)"

    move-object/from16 v25, v9

    move-object/from16 v31, v11

    invoke-direct/range {v25 .. v32}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->OpenTopo:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 190
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sput-object v10, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    .line 191
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v8, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1

    .line 75
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static containsTileSource(Ljava/lang/String;)Z
    .locals 2

    .line 35
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 36
    invoke-interface {v1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getTileSource(I)Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 54
    invoke-interface {v1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->ordinal()I

    move-result v2

    if-ne v2, p0, :cond_0

    return-object v1

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No tile source at position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public static getTileSource(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 26
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 27
    invoke-interface {v1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such tile source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public static getTileSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/tileprovider/tilesource/ITileSource;",
            ">;"
        }
    .end annotation

    .line 67
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->mTileSources:Ljava/util/List;

    return-object v0
.end method
