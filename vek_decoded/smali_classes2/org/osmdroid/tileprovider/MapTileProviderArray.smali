.class public Lorg/osmdroid/tileprovider/MapTileProviderArray;
.super Lorg/osmdroid/tileprovider/MapTileProviderBase;
.source "MapTileProviderArray.java"


# instance fields
.field protected mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

.field protected final mTileProviderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWorking:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/osmdroid/tileprovider/MapTile;",
            "Lorg/osmdroid/tileprovider/MapTileRequestState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;[Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;[Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    .line 66
    iput-object p2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    .line 68
    invoke-static {p1, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 3

    .line 74
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 76
    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->detach()V

    goto :goto_0

    .line 79
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileCache;->clear()V

    .line 82
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    monitor-enter v1

    .line 83
    :try_start_1
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 84
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->clearTileCache()V

    .line 86
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

    if-eqz v0, :cond_1

    .line 87
    invoke-interface {v0}, Lorg/osmdroid/tileprovider/IRegisterReceiver;->destroy()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

    .line 90
    :cond_1
    invoke-super {p0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->detach()V

    return-void

    :catchall_0
    move-exception v0

    .line 84
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 79
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method protected findNextAppropriateProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 203
    :cond_0
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getNextProvider()Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 207
    invoke-virtual {p0, v4}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->getProviderExists(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 208
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->useDataConnection()Z

    move-result v3

    if-nez v3, :cond_1

    .line 209
    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getUsesDataConnection()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 210
    :goto_0
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v5

    invoke-virtual {v5}, Lorg/osmdroid/tileprovider/MapTile;->getZoomLevel()I

    move-result v5

    .line 211
    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMaximumZoomLevel()I

    move-result v6

    if-gt v5, v6, :cond_3

    .line 212
    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMinimumZoomLevel()I

    move-result v6

    if-ge v5, v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    move v7, v3

    move v3, v2

    move v2, v7

    :cond_4
    if-eqz v4, :cond_5

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    :cond_5
    return-object v4
.end method

.method public getMapTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 95
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {v0}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->isDrawableExpired(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 100
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 102
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_4

    .line 105
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "OsmDroid"

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MapTileProviderArray.getMapTile() requested but not in cache, trying from async providers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v1

    .line 112
    :try_start_1
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    .line 113
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 114
    new-instance v3, Lorg/osmdroid/tileprovider/MapTileRequestState;

    iget-object v4, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    .line 115
    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-direct {v3, p1, v2, p0}, Lorg/osmdroid/tileprovider/MapTileRequestState;-><init>(Lorg/osmdroid/tileprovider/MapTile;[Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;Lorg/osmdroid/tileprovider/IMapTileProviderCallback;)V

    .line 116
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    monitor-enter v2

    .line 120
    :try_start_2
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    monitor-exit v2

    return-object v0

    .line 125
    :cond_2
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    invoke-virtual {p0, v3}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->findNextAppropriateProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 130
    invoke-virtual {p1, v3}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->loadMapTileAsync(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    goto :goto_0

    .line 132
    :cond_3
    invoke-virtual {p0, v3}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 126
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 116
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_4
    :goto_0
    return-object v0

    :catchall_2
    move-exception p1

    .line 102
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method public getMaximumZoomLevel()I
    .locals 5

    .line 241
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 243
    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMaximumZoomLevel()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 244
    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMaximumZoomLevel()I

    move-result v2

    goto :goto_0

    .line 247
    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public getMinimumZoomLevel()I
    .locals 5

    .line 227
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v0

    .line 228
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 230
    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMinimumZoomLevel()I

    move-result v4

    if-ge v4, v0, :cond_0

    .line 231
    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMinimumZoomLevel()I

    move-result v0

    goto :goto_0

    .line 234
    :cond_1
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getProviderExists(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)Z
    .locals 2

    .line 220
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 222
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getQueueSize()J
    .locals 2

    .line 187
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getTileWriter()Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public mapTileRequestCompleted(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 141
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/osmdroid/tileprovider/MapTileCache;->putTile(Lorg/osmdroid/tileprovider/MapTile;Landroid/graphics/drawable/Drawable;)V

    .line 145
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-super {p0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mapTileRequestCompleted(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 145
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public mapTileRequestExpiredTile(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 167
    invoke-super {p0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mapTileRequestExpiredTile(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V

    .line 170
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->findNextAppropriateProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 172
    invoke-virtual {p2, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->loadMapTileAsync(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object p2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    monitor-enter p2

    .line 175
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    monitor-exit p2

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V
    .locals 3

    .line 152
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->findNextAppropriateProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->loadMapTileAsync(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    monitor-enter v0

    .line 157
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-super {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 158
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 3

    .line 253
    invoke-super {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 255
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 257
    invoke-virtual {v2, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 258
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->clearTileCache()V

    goto :goto_0

    .line 260
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
