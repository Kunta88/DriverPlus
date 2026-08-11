.class public Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;
.super Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
.source "MapTileSqlCacheProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider$TileLoader;
    }
.end annotation


# static fields
.field private static final columns:[Ljava/lang/String;

.field private static final tile:[Ljava/lang/String;


# instance fields
.field private final mMaximumCachedFileAge:J

.field private final mTileSource:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/osmdroid/tileprovider/tilesource/ITileSource;",
            ">;"
        }
    .end annotation
.end field

.field private mWriter:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "tile"

    aput-object v3, v1, v2

    .line 44
    sput-object v1, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->tile:[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "expires"

    aput-object v2, v1, v0

    .line 45
    sput-object v1, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->columns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 2

    const-wide/32 v0, 0x240c8400

    .line 69
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)V
    .locals 2

    .line 58
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemThreads()S

    move-result v0

    .line 59
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemMaxQueueSize()S

    move-result v1

    .line 57
    invoke-direct {p0, p1, v0, v1}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;II)V

    .line 40
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    .line 61
    invoke-virtual {p0, p2}, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 62
    iput-wide p3, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mMaximumCachedFileAge:J

    .line 63
    new-instance p1, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    invoke-direct {p1}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mWriter:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$100(Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;)Lorg/osmdroid/tileprovider/modules/SqlTileWriter;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mWriter:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    return-object p0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->columns:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mMaximumCachedFileAge:J

    return-wide v0
.end method


# virtual methods
.method public detach()V
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mWriter:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->onDetach()V

    :cond_0
    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mWriter:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    .line 136
    invoke-super {p0}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->detach()V

    return-void
.end method

.method public getMaximumZoomLevel()I
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getMaximumZoomLevel()I

    move-result v0

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMinimumZoomLevel()I
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getMinimumZoomLevel()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    const-string v0, "SQL Cache Archive Provider"

    return-object v0
.end method

.method protected getThreadGroupName()Ljava/lang/String;
    .locals 1

    const-string v0, "sqlcache"

    return-object v0
.end method

.method protected getTileLoader()Ljava/lang/Runnable;
    .locals 1

    .line 97
    new-instance v0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider$TileLoader;

    invoke-direct {v0, p0}, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider$TileLoader;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;)V

    return-object v0
.end method

.method public getUsesDataConnection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasTile(Lorg/osmdroid/tileprovider/MapTile;)Z
    .locals 12

    .line 149
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 153
    :cond_0
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getX()I

    move-result v2

    int-to-long v2, v2

    .line 154
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getY()I

    move-result v4

    int-to-long v4, v4

    .line 155
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getZoomLevel()I

    move-result p1

    int-to-long v6, p1

    long-to-int p1, v6

    shl-long/2addr v6, p1

    add-long/2addr v6, v2

    shl-long v2, v6, p1

    add-long/2addr v2, v4

    .line 157
    iget-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mWriter:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    iget-object v4, p1, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v6, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->columns:[Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " and provider = \'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v5, "tiles"

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 158
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method protected onMediaMounted()V
    .locals 0

    return-void
.end method

.method protected onMediaUnmounted()V
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mWriter:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->onDetach()V

    .line 122
    :cond_0
    new-instance v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mWriter:Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    return-void
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;->mTileSource:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
