.class public Lru/yandex/yandexmapkit/MapController;
.super Ljava/lang/Object;

# interfaces
.implements Lru/yandex/ag;
.implements Lru/yandex/yandexmapkit/StartupController$StartupListener;


# static fields
.field private static final CONFIG:Ljava/lang/String; = "config"

.field public static final PREFS_NAME:Ljava/lang/String; = "COMMON_PREFS"

.field public static final PREF_UUID:Ljava/lang/String; = "pref.uuid"

.field private static final SYSTEM_XML:Ljava/lang/String; = "system"

.field private static startStopCouner:I


# instance fields
.field private checkZoomButtons:Ljava/lang/Runnable;

.field private final downloader:Lru/yandex/yandexmapkit/net/Downloader;

.field private fileCache:Lru/yandex/am;

.field private findMeButton:Landroid/view/View;

.field private fling:Z

.field private final gesture:Lru/yandex/af;

.field private final jams:Lru/yandex/be;

.field private mApiKey:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mExtraStartupParams:Ljava/util/HashMap;

.field private final mMapModel:Lru/yandex/yandexmapkit/MapModel;

.field private mMapView:Landroid/view/View;

.field private mMapViewInterface:Lru/yandex/yandexmapkit/MapViewInterface;

.field private mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

.field private mParentViewGroup:Lru/yandex/yandexmapkit/MapView;

.field private final mResources:Landroid/content/res/Resources;

.field private mStartupController:Lru/yandex/yandexmapkit/StartupController;

.field public mapLayers:Ljava/util/List;

.field private final mapRotator:Lru/yandex/ap;

.field private scaleView:Lru/yandex/yandexmapkit/map/scale/ScaleView;

.field private screenButtonListener:Landroid/view/View$OnClickListener;

.field private screenButtons:Landroid/view/View;

.field private scrolling:Z

.field private semaphoreButton:Lru/yandex/yandexmapkit/map/jams/JamsButton;

.field private final tileDownloader:Lru/yandex/bs;

.field private final tileStorage:Lru/yandex/ay;

.field private final tiledSurface:Lru/yandex/yandexmapkit/map/TiledSurface;

.field private viewport:Landroid/graphics/Rect;

.field private zoomInButton:Landroid/view/View;

.field private zoomOutButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lru/yandex/yandexmapkit/MapViewInterface;Lru/yandex/yandexmapkit/MapView;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapController;->mEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lru/yandex/yandexmapkit/MapController;->fling:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lru/yandex/yandexmapkit/MapController;->viewport:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput-object v2, p0, Lru/yandex/yandexmapkit/MapController;->mStartupController:Lru/yandex/yandexmapkit/StartupController;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lru/yandex/yandexmapkit/MapController;->mExtraStartupParams:Ljava/util/HashMap;

    iput-object v2, p0, Lru/yandex/yandexmapkit/MapController;->mApiKey:Ljava/lang/String;

    new-instance v2, Lru/yandex/x;

    invoke-direct {v2, p0}, Lru/yandex/x;-><init>(Lru/yandex/yandexmapkit/MapController;)V

    iput-object v2, p0, Lru/yandex/yandexmapkit/MapController;->screenButtonListener:Landroid/view/View$OnClickListener;

    new-instance v2, Lru/yandex/z;

    invoke-direct {v2, p0}, Lru/yandex/z;-><init>(Lru/yandex/yandexmapkit/MapController;)V

    iput-object v2, p0, Lru/yandex/yandexmapkit/MapController;->checkZoomButtons:Ljava/lang/Runnable;

    iput-object p2, p0, Lru/yandex/yandexmapkit/MapController;->mParentViewGroup:Lru/yandex/yandexmapkit/MapView;

    iput-object p1, p0, Lru/yandex/yandexmapkit/MapController;->mMapViewInterface:Lru/yandex/yandexmapkit/MapViewInterface;

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lru/yandex/yandexmapkit/MapController;->mMapView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lru/yandex/yandexmapkit/MapController;->mContext:Landroid/content/Context;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lru/yandex/yandexmapkit/MapController;->mapLayers:Ljava/util/List;

    new-instance p2, Lru/yandex/ap;

    invoke-direct {p2, p0}, Lru/yandex/ap;-><init>(Lru/yandex/yandexmapkit/MapController;)V

    iput-object p2, p0, Lru/yandex/yandexmapkit/MapController;->mapRotator:Lru/yandex/ap;

    new-instance v2, Lru/yandex/yandexmapkit/MapModel;

    invoke-direct {v2, p0}, Lru/yandex/yandexmapkit/MapModel;-><init>(Lru/yandex/yandexmapkit/MapController;)V

    iput-object v2, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lru/yandex/yandexmapkit/MapController;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lru/yandex/yandexmapkit/MapController;->mParentViewGroup:Lru/yandex/yandexmapkit/MapView;

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/MapView;->getApiKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lru/yandex/yandexmapkit/MapController;->mApiKey:Ljava/lang/String;

    new-instance v3, Lru/yandex/yandexmapkit/net/Downloader;

    iget-object v4, p0, Lru/yandex/yandexmapkit/MapController;->mApiKey:Ljava/lang/String;

    invoke-direct {v3, v4}, Lru/yandex/yandexmapkit/net/Downloader;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lru/yandex/yandexmapkit/MapController;->downloader:Lru/yandex/yandexmapkit/net/Downloader;

    new-instance v3, Lru/yandex/bs;

    iget-object v4, p0, Lru/yandex/yandexmapkit/MapController;->mApiKey:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lru/yandex/bs;-><init>(Lru/yandex/yandexmapkit/MapController;Ljava/lang/String;)V

    iput-object v3, p0, Lru/yandex/yandexmapkit/MapController;->tileDownloader:Lru/yandex/bs;

    new-instance v3, Lru/yandex/yandexmapkit/StartupController;

    invoke-direct {v3, p0}, Lru/yandex/yandexmapkit/StartupController;-><init>(Lru/yandex/yandexmapkit/MapController;)V

    iput-object v3, p0, Lru/yandex/yandexmapkit/MapController;->mStartupController:Lru/yandex/yandexmapkit/StartupController;

    invoke-virtual {v3, p0}, Lru/yandex/yandexmapkit/StartupController;->addStartupListener(Lru/yandex/yandexmapkit/StartupController$StartupListener;)V

    new-instance v3, Lru/yandex/am;

    invoke-static {}, Lru/yandex/cm;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lru/yandex/am;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lru/yandex/yandexmapkit/MapController;->fileCache:Lru/yandex/am;

    new-instance v3, Lru/yandex/ay;

    iget-object v4, p0, Lru/yandex/yandexmapkit/MapController;->fileCache:Lru/yandex/am;

    invoke-direct {v3, v4, p0}, Lru/yandex/ay;-><init>(Lru/yandex/am;Lru/yandex/yandexmapkit/MapController;)V

    iput-object v3, p0, Lru/yandex/yandexmapkit/MapController;->tileStorage:Lru/yandex/ay;

    iget-object v4, p0, Lru/yandex/yandexmapkit/MapController;->fileCache:Lru/yandex/am;

    invoke-virtual {v4, v3}, Lru/yandex/am;->a(Lru/yandex/ay;)V

    new-instance v4, Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-direct {v4, p0, v2, v3}, Lru/yandex/yandexmapkit/map/TiledSurface;-><init>(Lru/yandex/yandexmapkit/MapController;Lru/yandex/yandexmapkit/MapModel;Lru/yandex/ay;)V

    iput-object v4, p0, Lru/yandex/yandexmapkit/MapController;->tiledSurface:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-static {p1}, Lru/yandex/yandexmapkit/utils/Utils;->a(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0xf0

    if-lt v3, v4, :cond_0

    invoke-virtual {v2, v0}, Lru/yandex/yandexmapkit/MapModel;->setHDMap(Z)V

    :cond_0
    new-instance v2, Lru/yandex/be;

    invoke-direct {v2, p0}, Lru/yandex/be;-><init>(Lru/yandex/yandexmapkit/MapController;)V

    iput-object v2, p0, Lru/yandex/yandexmapkit/MapController;->jams:Lru/yandex/be;

    invoke-virtual {v2, v0}, Lru/yandex/be;->b(Z)V

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lru/yandex/ap;->a(F)V

    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapController;->restoreMapLayers()V

    new-instance p2, Lru/yandex/yandexmapkit/OverlayManager;

    invoke-direct {p2, p0}, Lru/yandex/yandexmapkit/OverlayManager;-><init>(Lru/yandex/yandexmapkit/MapController;)V

    iput-object p2, p0, Lru/yandex/yandexmapkit/MapController;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    invoke-virtual {p2, v2}, Lru/yandex/yandexmapkit/OverlayManager;->addOverlay(Lru/yandex/yandexmapkit/overlay/Overlay;)V

    sget-object p2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-eqz p2, :cond_1

    sget-object p2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/4 v2, 0x5

    if-lt p2, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    new-instance p2, Lru/yandex/ae;

    invoke-direct {p2, p1, p0}, Lru/yandex/ae;-><init>(Landroid/content/Context;Lru/yandex/ag;)V

    goto :goto_1

    :cond_2
    new-instance p2, Lru/yandex/af;

    invoke-direct {p2, p1, p0}, Lru/yandex/af;-><init>(Landroid/content/Context;Lru/yandex/ag;)V

    :goto_1
    iput-object p2, p0, Lru/yandex/yandexmapkit/MapController;->gesture:Lru/yandex/af;

    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapController;->loadPreferences()V

    return-void
.end method

.method public static synthetic access$000(Lru/yandex/yandexmapkit/MapController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lru/yandex/yandexmapkit/MapController;->zoomInButton:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lru/yandex/yandexmapkit/MapController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lru/yandex/yandexmapkit/MapController;->zoomOutButton:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lru/yandex/yandexmapkit/MapController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lru/yandex/yandexmapkit/MapController;->findMeButton:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$300(Lru/yandex/yandexmapkit/MapController;)Lru/yandex/yandexmapkit/OverlayManager;
    .locals 0

    iget-object p0, p0, Lru/yandex/yandexmapkit/MapController;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    return-object p0
.end method

.method public static synthetic access$400(Lru/yandex/yandexmapkit/MapController;)Lru/yandex/yandexmapkit/map/jams/JamsButton;
    .locals 0

    iget-object p0, p0, Lru/yandex/yandexmapkit/MapController;->semaphoreButton:Lru/yandex/yandexmapkit/map/jams/JamsButton;

    return-object p0
.end method

.method public static synthetic access$500(Lru/yandex/yandexmapkit/MapController;)Lru/yandex/be;
    .locals 0

    iget-object p0, p0, Lru/yandex/yandexmapkit/MapController;->jams:Lru/yandex/be;

    return-object p0
.end method

.method public static synthetic access$600(Lru/yandex/yandexmapkit/MapController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lru/yandex/yandexmapkit/MapController;->screenButtons:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$700(Lru/yandex/yandexmapkit/MapController;)Lru/yandex/yandexmapkit/MapModel;
    .locals 0

    iget-object p0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    return-object p0
.end method

.method private createDefaultMapLayers()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->fileCache:Lru/yandex/am;

    invoke-virtual {v0}, Lru/yandex/am;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lru/yandex/yandexmapkit/MapController;->fileCache:Lru/yandex/am;

    invoke-virtual {v2}, Lru/yandex/am;->b()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "config"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lru/yandex/yandexmapkit/MapController;->fileCache:Lru/yandex/am;

    invoke-virtual {v2}, Lru/yandex/am;->b()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "system"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lru/yandex/yandexmapkit/map/MapLayer;->a(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mResources:Landroid/content/res/Resources;

    sget v1, Lru/yandex/yandexmapkit/R$xml;->ymk_map_layers:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-static {v0}, Lru/yandex/yandexmapkit/map/MapLayer;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private createUserLayers(Ljava/util/List;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->fileCache:Lru/yandex/am;

    invoke-virtual {v1}, Lru/yandex/am;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->fileCache:Lru/yandex/am;

    invoke-virtual {v1}, Lru/yandex/am;->b()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const-string v2, "xml"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lru/yandex/yandexmapkit/utils/Utils;->a(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v2, v1

    if-lez v2, :cond_4

    const/4 v2, 0x0

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_4

    aget-object v4, v1, v2

    const-string v5, "system"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lru/yandex/yandexmapkit/MapController;->fileCache:Lru/yandex/am;

    invoke-virtual {v6}, Lru/yandex/am;->b()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_3

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v5}, Lru/yandex/yandexmapkit/map/MapLayer;->a(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/yandex/yandexmapkit/map/MapLayer;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lru/yandex/yandexmapkit/map/MapLayer;

    iget v7, v7, Lru/yandex/yandexmapkit/map/MapLayer;->layerId:I

    iget v9, v5, Lru/yandex/yandexmapkit/map/MapLayer;->layerId:I

    if-ne v7, v9, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_0

    iget-boolean v6, v5, Lru/yandex/yandexmapkit/map/MapLayer;->isService:Z

    if-nez v6, :cond_0

    iput-boolean v8, v5, Lru/yandex/yandexmapkit/map/MapLayer;->isCustom:Z

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private getMapType()I
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->tiledSurface:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/map/TiledSurface;->e()I

    move-result v0

    return v0
.end method

.method private loadPreferences()V
    .locals 3

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mContext:Landroid/content/Context;

    const-string v1, "COMMON_PREFS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref.uuid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/yandex/yandexmapkit/net/Downloader;->a(Ljava/lang/String;)V

    return-void
.end method

.method private restoreMapLayers()V
    .locals 3

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mapLayers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapController;->createDefaultMapLayers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lru/yandex/yandexmapkit/MapController;->createUserLayers(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lru/yandex/yandexmapkit/MapController;->mapLayers:Ljava/util/List;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private saveMapLayers()V
    .locals 6

    const-string v0, "config"

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->fileCache:Lru/yandex/am;

    invoke-virtual {v1}, Lru/yandex/am;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lru/yandex/yandexmapkit/MapController;->fileCache:Lru/yandex/am;

    invoke-virtual {v5}, Lru/yandex/am;->b()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lru/yandex/yandexmapkit/MapController;->fileCache:Lru/yandex/am;

    invoke-virtual {v4}, Lru/yandex/am;->b()C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->fileCache:Lru/yandex/am;

    invoke-virtual {v1}, Lru/yandex/am;->b()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->mapLayers:Ljava/util/List;

    invoke-static {v1}, Lru/yandex/yandexmapkit/map/MapLayer;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-object v2, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_0
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_2
    throw v0

    :catch_3
    nop

    :goto_1
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_3
    return-void
.end method

.method private savePreferences()V
    .locals 3

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mContext:Landroid/content/Context;

    const-string v1, "COMMON_PREFS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lru/yandex/yandexmapkit/net/Downloader;->getUUID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref.uuid"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public addMapListener(Lru/yandex/yandexmapkit/map/OnMapListener;)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/MapModel;->addMapListener(Lru/yandex/yandexmapkit/map/OnMapListener;)V

    return-void
.end method

.method checkZoomButtonsVisibility()V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapView:Landroid/view/View;

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->checkZoomButtons:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method drawMap(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mapRotator:Lru/yandex/ap;

    invoke-virtual {v0}, Lru/yandex/ap;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mapRotator:Lru/yandex/ap;

    invoke-virtual {v0}, Lru/yandex/ap;->e()Lru/yandex/yandexmapkit/utils/ScreenPoint;

    move-result-object v0

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->mapRotator:Lru/yandex/ap;

    invoke-virtual {v1}, Lru/yandex/ap;->c()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getX()F

    move-result v2

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getY()F

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->tiledSurface:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/map/TiledSurface;->a(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mapRotator:Lru/yandex/ap;

    invoke-virtual {v0}, Lru/yandex/ap;->e()Lru/yandex/yandexmapkit/utils/ScreenPoint;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getX()F

    move-result v1

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getY()F

    move-result v0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public get23Point(Lru/yandex/yandexmapkit/utils/ScreenPoint;)Lru/yandex/yandexmapkit/utils/Point;
    .locals 3

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapController;->getTiledSurface()Lru/yandex/yandexmapkit/map/TiledSurface;

    move-result-object v0

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getX()F

    move-result v1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getY()F

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lru/yandex/yandexmapkit/map/TiledSurface;->c(FFLru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/Point;

    move-result-object p1

    return-object p1
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mApiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentMapLayer()Lru/yandex/yandexmapkit/map/MapLayer;
    .locals 1

    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapController;->getMapType()I

    move-result v0

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/MapController;->getMapLayerByLayerId(I)Lru/yandex/yandexmapkit/map/MapLayer;

    move-result-object v0

    return-object v0
.end method

.method public getDownloader()Lru/yandex/yandexmapkit/net/Downloader;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->downloader:Lru/yandex/yandexmapkit/net/Downloader;

    return-object v0
.end method

.method public getFileCache()Lru/yandex/am;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->fileCache:Lru/yandex/am;

    return-object v0
.end method

.method public getGeoPoint(Lru/yandex/yandexmapkit/utils/ScreenPoint;)Lru/yandex/yandexmapkit/utils/GeoPoint;
    .locals 0

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/MapController;->get23Point(Lru/yandex/yandexmapkit/utils/ScreenPoint;)Lru/yandex/yandexmapkit/utils/Point;

    move-result-object p1

    invoke-static {p1}, Lru/yandex/yandexmapkit/utils/CoordConversion;->toLL(Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/GeoPoint;

    move-result-object p1

    return-object p1
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getJams()Lru/yandex/be;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->jams:Lru/yandex/be;

    return-object v0
.end method

.method public getListMapLayer()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->mapLayers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/yandex/yandexmapkit/map/MapLayer;

    iget-boolean v3, v2, Lru/yandex/yandexmapkit/map/MapLayer;->isService:Z

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getMapCenter()Lru/yandex/yandexmapkit/utils/GeoPoint;
    .locals 5

    new-instance v0, Lru/yandex/yandexmapkit/utils/Point;

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    iget v1, v1, Lru/yandex/yandexmapkit/MapModel;->x:I

    int-to-long v1, v1

    iget-object v3, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    iget v3, v3, Lru/yandex/yandexmapkit/MapModel;->y:I

    int-to-long v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lru/yandex/yandexmapkit/utils/Point;-><init>(JJ)V

    invoke-static {v0}, Lru/yandex/yandexmapkit/utils/CoordConversion;->toLL(Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getMapLayerByLayerId(I)Lru/yandex/yandexmapkit/map/MapLayer;
    .locals 4

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mapLayers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->mapLayers:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->mapLayers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/yandex/yandexmapkit/map/MapLayer;

    iget v3, v2, Lru/yandex/yandexmapkit/map/MapLayer;->layerId:I

    if-ne v3, p1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public getMapLayerByLayerRequestName(Ljava/lang/String;)Lru/yandex/yandexmapkit/map/MapLayer;
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mapLayers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->mapLayers:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->mapLayers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/yandex/yandexmapkit/map/MapLayer;

    iget-object v3, v2, Lru/yandex/yandexmapkit/map/MapLayer;->requestName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMapModel()Lru/yandex/yandexmapkit/MapModel;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    return-object v0
.end method

.method public getMapRotator()Lru/yandex/ap;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mapRotator:Lru/yandex/ap;

    return-object v0
.end method

.method public getMapView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapView:Landroid/view/View;

    return-object v0
.end method

.method public getOverlayManager()Lru/yandex/yandexmapkit/OverlayManager;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    return-object v0
.end method

.method public getParentViewGroup()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mParentViewGroup:Lru/yandex/yandexmapkit/MapView;

    return-object v0
.end method

.method public getScreenPoint(Lru/yandex/yandexmapkit/utils/GeoPoint;)Lru/yandex/yandexmapkit/utils/ScreenPoint;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1, v0}, Lru/yandex/yandexmapkit/utils/CoordConversion;->toXY(Lru/yandex/yandexmapkit/utils/GeoPoint;Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/Point;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/MapController;->getScreenPoint(Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/ScreenPoint;

    move-result-object p1

    return-object p1
.end method

.method public getScreenPoint(Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/ScreenPoint;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->tiledSurface:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/map/TiledSurface;->b(Lru/yandex/yandexmapkit/utils/Point;)Landroid/graphics/PointF;

    move-result-object p1

    new-instance v0, Lru/yandex/yandexmapkit/utils/ScreenPoint;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p1}, Lru/yandex/yandexmapkit/utils/ScreenPoint;-><init>(FF)V

    return-object v0
.end method

.method public getServiceMapLayer()Lru/yandex/yandexmapkit/map/MapLayer;
    .locals 4

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mapLayers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->mapLayers:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->mapLayers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/yandex/yandexmapkit/map/MapLayer;

    iget-boolean v3, v2, Lru/yandex/yandexmapkit/map/MapLayer;->isService:Z

    if-eqz v3, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_1

    :goto_0
    throw v1

    :goto_1
    goto :goto_0
.end method

.method public getStartupController()Lru/yandex/yandexmapkit/StartupController;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mStartupController:Lru/yandex/yandexmapkit/StartupController;

    return-object v0
.end method

.method public getTileDownloader()Lru/yandex/bs;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->tileDownloader:Lru/yandex/bs;

    return-object v0
.end method

.method public getTileStorage()Lru/yandex/ay;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->tileStorage:Lru/yandex/ay;

    return-object v0
.end method

.method public getTiledSurface()Lru/yandex/yandexmapkit/map/TiledSurface;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->tiledSurface:Lru/yandex/yandexmapkit/map/TiledSurface;

    return-object v0
.end method

.method public getViewport()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->viewport:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getZoomCurrent()F
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapModel;->getZoomCurrent()F

    move-result v0

    return v0
.end method

.method public hideBalloon()V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/OverlayManager;->getBalloon()Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/OverlayManager;->getBalloon()Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->setVisible(Z)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/OverlayManager;->getBalloon()Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->getBalloonItem()Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOnBalloonListener()Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOnBalloonListener()Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;->onBalloonHide(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V

    :cond_0
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    :cond_1
    return-void
.end method

.method public declared-synchronized initializeScreenButtons()Landroid/view/View;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->screenButtons:Landroid/view/View;

    if-nez v0, :cond_4

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lru/yandex/yandexmapkit/R$layout;->ymk_screen_buttons_layout:I

    iget-object v2, p0, Lru/yandex/yandexmapkit/MapController;->mParentViewGroup:Lru/yandex/yandexmapkit/MapView;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lru/yandex/yandexmapkit/MapController;->screenButtons:Landroid/view/View;

    sget v1, Lru/yandex/yandexmapkit/R$id;->ymk_zoom_in:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lru/yandex/yandexmapkit/MapController;->zoomInButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->screenButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->screenButtons:Landroid/view/View;

    sget v1, Lru/yandex/yandexmapkit/R$id;->ymk_zoom_out:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lru/yandex/yandexmapkit/MapController;->zoomOutButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->screenButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->screenButtons:Landroid/view/View;

    sget v1, Lru/yandex/yandexmapkit/R$id;->ymk_find_me:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lru/yandex/yandexmapkit/MapController;->findMeButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->screenButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->screenButtons:Landroid/view/View;

    sget v1, Lru/yandex/yandexmapkit/R$id;->ymk_semaphore:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/yandex/yandexmapkit/map/jams/JamsButton;

    iput-object v0, p0, Lru/yandex/yandexmapkit/MapController;->semaphoreButton:Lru/yandex/yandexmapkit/map/jams/JamsButton;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/map/jams/JamsButton;->b()V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->semaphoreButton:Lru/yandex/yandexmapkit/map/jams/JamsButton;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->screenButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/map/jams/JamsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->semaphoreButton:Lru/yandex/yandexmapkit/map/jams/JamsButton;

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->jams:Lru/yandex/be;

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/map/jams/JamsButton;->a(Lru/yandex/be;)V

    :cond_3
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->screenButtons:Landroid/view/View;

    sget v1, Lru/yandex/yandexmapkit/R$id;->ymk_scale:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/yandex/yandexmapkit/map/scale/ScaleView;

    iput-object v0, p0, Lru/yandex/yandexmapkit/MapController;->scaleView:Lru/yandex/yandexmapkit/map/scale/ScaleView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Lru/yandex/yandexmapkit/map/scale/ScaleView;->a(Lru/yandex/yandexmapkit/MapController;)V

    :cond_4
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->screenButtons:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapController;->mEnabled:Z

    return v0
.end method

.method public isHDMode()Z
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapModel;->isHDMap()Z

    move-result v0

    return v0
.end method

.method public isJamsVisible()Z
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->jams:Lru/yandex/be;

    invoke-virtual {v0}, Lru/yandex/be;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isNightMode()Z
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapModel;->isNightMap()Z

    move-result v0

    return v0
.end method

.method public isTileVisible(Lru/yandex/yandexmapkit/map/Tile;)Z
    .locals 2

    iget v0, p1, Lru/yandex/yandexmapkit/map/Tile;->type:I

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->tiledSurface:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/map/TiledSurface;->e()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p1, Lru/yandex/yandexmapkit/map/Tile;->e:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->tiledSurface:Lru/yandex/yandexmapkit/map/TiledSurface;

    iget v1, p1, Lru/yandex/yandexmapkit/map/Tile;->i:I

    iget p1, p1, Lru/yandex/yandexmapkit/map/Tile;->j:I

    invoke-virtual {v0, v1, p1}, Lru/yandex/yandexmapkit/map/TiledSurface;->b(II)Z

    move-result p1

    return p1
.end method

.method public jamsInformerIsUpdated(Lru/yandex/bh;)V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->semaphoreButton:Lru/yandex/yandexmapkit/map/jams/JamsButton;

    if-eqz v0, :cond_0

    new-instance v1, Lru/yandex/y;

    invoke-direct {v1, p0, p1}, Lru/yandex/y;-><init>(Lru/yandex/yandexmapkit/MapController;Lru/yandex/bh;)V

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/map/jams/JamsButton;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public notifyRepaint()V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapViewInterface:Lru/yandex/yandexmapkit/MapViewInterface;

    invoke-interface {v0}, Lru/yandex/yandexmapkit/MapViewInterface;->notifyRepaint()V

    return-void
.end method

.method public onDoubleTap(FF)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    invoke-virtual {v0, p1, p2}, Lru/yandex/yandexmapkit/OverlayManager;->onDoubleTap(FF)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lru/yandex/yandexmapkit/MapController;->zoomIn(FF)V

    :cond_0
    return-void
.end method

.method public onDown(FF)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    invoke-virtual {v0, p1, p2}, Lru/yandex/yandexmapkit/OverlayManager;->onDown(FF)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapController;->scrolling:Z

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapModel;->stop()V

    :cond_0
    return-void
.end method

.method public onFling(FF)V
    .locals 2

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapController;->scrolling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/MapController;->fling:Z

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    neg-float p1, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    neg-float p2, p2

    div-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lru/yandex/yandexmapkit/MapModel;->start(FF)V

    :cond_0
    return-void
.end method

.method public onLongPress(FF)V
    .locals 4

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    invoke-virtual {v0, p1, p2}, Lru/yandex/yandexmapkit/OverlayManager;->onLongPress(FF)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapController;->getMapModel()Lru/yandex/yandexmapkit/MapModel;

    move-result-object v0

    new-instance v1, Lru/yandex/yandexmapkit/map/MapEvent;

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v1, v2, p1, p2, v3}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(IFFZ)V

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/MapModel;->actionYMapListener(Lru/yandex/yandexmapkit/map/MapEvent;)V

    :cond_0
    return-void
.end method

.method public onScale(FFF)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v0, p1, p2, p3}, Lru/yandex/yandexmapkit/MapModel;->processManualZoom(FFF)V

    return-void
.end method

.method public onScaleBegin(FF)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v0, p1, p2}, Lru/yandex/yandexmapkit/MapModel;->startManualZoom(FF)V

    return-void
.end method

.method public onScaleEnd()V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapModel;->endManualZoom()V

    return-void
.end method

.method public onScroll(FFFF)V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lru/yandex/yandexmapkit/OverlayManager;->onScroll(FFFF)Z

    move-result p3

    if-nez p3, :cond_2

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p4, p1, p3

    if-gtz p4, :cond_0

    cmpl-float p3, p2, p3

    if-gtz p3, :cond_0

    const/high16 p3, -0x40800000    # -1.0f

    cmpg-float p4, p1, p3

    if-ltz p4, :cond_0

    cmpg-float p3, p2, p3

    if-gez p3, :cond_2

    :cond_0
    iget-boolean p3, p0, Lru/yandex/yandexmapkit/MapController;->scrolling:Z

    const/4 p4, 0x1

    if-nez p3, :cond_1

    iget-object p3, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    new-instance v0, Lru/yandex/yandexmapkit/map/MapEvent;

    invoke-direct {v0, p4, p4}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(IZ)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    new-instance v0, Lru/yandex/yandexmapkit/map/MapEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p4}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(IZ)V

    :goto_0
    invoke-virtual {p3, v0}, Lru/yandex/yandexmapkit/MapModel;->actionYMapListener(Lru/yandex/yandexmapkit/map/MapEvent;)V

    iput-boolean p4, p0, Lru/yandex/yandexmapkit/MapController;->scrolling:Z

    iget-object p3, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {p3, p1, p2}, Lru/yandex/yandexmapkit/MapModel;->moveMapInPixels(FF)V

    :cond_2
    return-void
.end method

.method public onSingleTapUp(FF)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    invoke-virtual {v0, p1, p2}, Lru/yandex/yandexmapkit/OverlayManager;->onSingleTapUp(FF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapController;->hideBalloon()V

    :cond_0
    return-void
.end method

.method public onStartup(Lru/yandex/br;)V
    .locals 0

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/MapController;->processMapLayers(Lru/yandex/br;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapController;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/OverlayManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->gesture:Lru/yandex/af;

    invoke-virtual {v0, p1}, Lru/yandex/af;->a(Landroid/view/MotionEvent;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/OverlayManager;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTwoFingersSingleTap(FF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lru/yandex/yandexmapkit/MapController;->zoomOut(FF)V

    return-void
.end method

.method public onUp(FF)V
    .locals 5

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapController;->scrolling:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/MapController;->fling:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    new-instance v2, Lru/yandex/yandexmapkit/map/MapEvent;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(IZ)V

    invoke-virtual {v0, v2}, Lru/yandex/yandexmapkit/MapModel;->actionYMapListener(Lru/yandex/yandexmapkit/map/MapEvent;)V

    iput-boolean v1, p0, Lru/yandex/yandexmapkit/MapController;->scrolling:Z

    :cond_0
    iput-boolean v1, p0, Lru/yandex/yandexmapkit/MapController;->fling:Z

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    invoke-virtual {v0, p1, p2}, Lru/yandex/yandexmapkit/OverlayManager;->onUp(FF)Z

    return-void
.end method

.method processMapLayers(Lru/yandex/br;)V
    .locals 4

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mapLayers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p1, p1, Lru/yandex/br;->h:Ljava/util/List;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapController;->mapLayers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/yandex/yandexmapkit/map/MapLayer;

    iget-boolean v3, v2, Lru/yandex/yandexmapkit/map/MapLayer;->isCustom:Z

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lru/yandex/yandexmapkit/MapController;->mapLayers:Ljava/util/List;

    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapController;->saveMapLayers()V

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public removeMapListener(Lru/yandex/yandexmapkit/map/OnMapListener;)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/MapModel;->removeMapListener(Lru/yandex/yandexmapkit/map/OnMapListener;)V

    return-void
.end method

.method public setCurrentMapLayer(Lru/yandex/yandexmapkit/map/MapLayer;)V
    .locals 0

    iget p1, p1, Lru/yandex/yandexmapkit/map/MapLayer;->layerId:I

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/MapController;->setMapType(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/MapController;->mEnabled:Z

    return-void
.end method

.method public setExtraStartupParams(Ljava/util/HashMap;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lru/yandex/yandexmapkit/MapController;->mExtraStartupParams:Ljava/util/HashMap;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "extraStartupParams can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHDMode(Z)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/MapModel;->setHDMap(Z)V

    return-void
.end method

.method public setJamsVisible(Z)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->jams:Lru/yandex/be;

    invoke-virtual {v0}, Lru/yandex/be;->isVisible()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->jams:Lru/yandex/be;

    invoke-virtual {v0, p1}, Lru/yandex/be;->setVisible(Z)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapController;->jams:Lru/yandex/be;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/yandex/be;->b(Z)V

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    :cond_0
    return-void
.end method

.method setMapType(I)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->tiledSurface:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/map/TiledSurface;->e()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->tiledSurface:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/map/TiledSurface;->a(I)V

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    :cond_0
    return-void
.end method

.method public setNightMode(Z)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    if-eqz p1, :cond_0

    sget-object p1, Lru/yandex/aq;->a:Lru/yandex/aq;

    goto :goto_0

    :cond_0
    sget-object p1, Lru/yandex/aq;->b:Lru/yandex/aq;

    :goto_0
    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/MapModel;->setNightMode(Lru/yandex/aq;)V

    return-void
.end method

.method public setPositionAnimationTo(Lru/yandex/yandexmapkit/utils/GeoPoint;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/yandex/yandexmapkit/utils/CoordConversion;->toXY(Lru/yandex/yandexmapkit/utils/GeoPoint;Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/Point;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/MapController;->setPositionAnimationTo(Lru/yandex/yandexmapkit/utils/Point;)V

    return-void
.end method

.method public setPositionAnimationTo(Lru/yandex/yandexmapkit/utils/GeoPoint;F)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/yandex/yandexmapkit/utils/CoordConversion;->toXY(Lru/yandex/yandexmapkit/utils/GeoPoint;Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/Point;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lru/yandex/yandexmapkit/MapController;->setPositionAnimationTo(Lru/yandex/yandexmapkit/utils/Point;F)V

    return-void
.end method

.method public setPositionAnimationTo(Lru/yandex/yandexmapkit/utils/Point;)V
    .locals 8

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    iget-wide v1, p1, Lru/yandex/yandexmapkit/utils/Point;->x:J

    iget-wide v3, p1, Lru/yandex/yandexmapkit/utils/Point;->y:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lru/yandex/yandexmapkit/MapModel;->setPositionInRotateMode(JJZZZ)V

    return-void
.end method

.method public setPositionAnimationTo(Lru/yandex/yandexmapkit/utils/Point;F)V
    .locals 9

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    iget-wide v1, p1, Lru/yandex/yandexmapkit/utils/Point;->x:J

    iget-wide v3, p1, Lru/yandex/yandexmapkit/utils/Point;->y:J

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lru/yandex/yandexmapkit/MapModel;->setPositionInRotateMode(JJFZZZ)V

    return-void
.end method

.method public setPositionNoAnimationTo(Lru/yandex/yandexmapkit/utils/GeoPoint;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/yandex/yandexmapkit/utils/CoordConversion;->toXY(Lru/yandex/yandexmapkit/utils/GeoPoint;Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/Point;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/MapController;->setPositionNoAnimationTo(Lru/yandex/yandexmapkit/utils/Point;)V

    return-void
.end method

.method public setPositionNoAnimationTo(Lru/yandex/yandexmapkit/utils/GeoPoint;F)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/yandex/yandexmapkit/utils/CoordConversion;->toXY(Lru/yandex/yandexmapkit/utils/GeoPoint;Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/Point;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lru/yandex/yandexmapkit/MapController;->setPositionNoAnimationTo(Lru/yandex/yandexmapkit/utils/Point;F)V

    return-void
.end method

.method public setPositionNoAnimationTo(Lru/yandex/yandexmapkit/utils/Point;)V
    .locals 8

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    iget-wide v1, p1, Lru/yandex/yandexmapkit/utils/Point;->x:J

    iget-wide v3, p1, Lru/yandex/yandexmapkit/utils/Point;->y:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lru/yandex/yandexmapkit/MapModel;->setPositionInRotateMode(JJZZZ)V

    return-void
.end method

.method public setPositionNoAnimationTo(Lru/yandex/yandexmapkit/utils/Point;F)V
    .locals 9

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    iget-wide v1, p1, Lru/yandex/yandexmapkit/utils/Point;->x:J

    iget-wide v3, p1, Lru/yandex/yandexmapkit/utils/Point;->y:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lru/yandex/yandexmapkit/MapModel;->setPositionInRotateMode(JJFZZZ)V

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapController;->getTiledSurface()Lru/yandex/yandexmapkit/map/TiledSurface;

    move-result-object p1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/TiledSurface;->d()Z

    return-void
.end method

.method public setRotateAnimtionTo(F)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mapRotator:Lru/yandex/ap;

    invoke-virtual {v0, p1}, Lru/yandex/ap;->a(F)V

    return-void
.end method

.method public setRotateNoAnimtionTo(F)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mapRotator:Lru/yandex/ap;

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lru/yandex/ap;->b(F)V

    return-void
.end method

.method public setViewport(IIII)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->viewport:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapController;->viewport:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapController;->viewport:Landroid/graphics/Rect;

    iput p3, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapController;->viewport:Landroid/graphics/Rect;

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setZoomCurrent(F)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/MapModel;->setZoomCurrent(F)V

    return-void
.end method

.method public setZoomToSpan(DD)V
    .locals 10

    new-instance v0, Lru/yandex/yandexmapkit/utils/GeoPoint;

    invoke-direct {v0, p1, p2, p3, p4}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>(DD)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lru/yandex/yandexmapkit/utils/CoordConversion;->toXY(Lru/yandex/yandexmapkit/utils/GeoPoint;Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/Point;

    move-result-object p2

    new-instance p3, Lru/yandex/yandexmapkit/utils/GeoPoint;

    const-wide/16 v0, 0x0

    invoke-direct {p3, v0, v1, v0, v1}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>(DD)V

    invoke-static {p3, p1}, Lru/yandex/yandexmapkit/utils/CoordConversion;->toXY(Lru/yandex/yandexmapkit/utils/GeoPoint;Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/Point;

    move-result-object p1

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapController;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/4 p4, 0x0

    mul-float p3, p3, p4

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorScaleTile()F

    move-result p4

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorSizeTile()F

    move-result v0

    mul-float p4, p4, v0

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->viewport:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->viewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float p3, p3, v1

    sub-float/2addr v0, p3

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x4037000000000000L    # 23.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v6

    iget-wide v6, p2, Lru/yandex/yandexmapkit/utils/Point;->x:J

    iget-wide v8, p1, Lru/yandex/yandexmapkit/utils/Point;->x:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    long-to-float v6, v6

    mul-float v6, v6, p4

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v0, v6

    double-to-float v0, v0

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->viewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lru/yandex/yandexmapkit/MapController;->viewport:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    sub-float/2addr v1, p3

    float-to-double v6, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    iget-wide p2, p2, Lru/yandex/yandexmapkit/utils/Point;->y:J

    iget-wide v4, p1, Lru/yandex/yandexmapkit/utils/Point;->y:J

    sub-long/2addr p2, v4

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    long-to-float p1, p1

    mul-float p4, p4, p1

    float-to-double p1, p4

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide p3

    div-double/2addr p1, p3

    double-to-float p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, 0x41880000    # 17.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    rsub-int/lit8 p2, p1, 0x17

    add-int/lit8 p2, p2, -0x3

    int-to-double p2, p2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->pow(DD)D

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/MapController;->setZoomCurrent(F)V

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    return-void
.end method

.method public showBalloon(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/OverlayManager;->getBalloon()Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->setVisible(Z)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/OverlayManager;->getBalloon()Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonOverlay;->setBalloonItem(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOnBalloonListener()Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->getOnBalloonListener()Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;->onBalloonShow(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V

    :cond_0
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    return-void
.end method

.method public showFindMeButton(Z)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->findMeButton:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showJamsButton(Z)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->semaphoreButton:Lru/yandex/yandexmapkit/map/jams/JamsButton;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/map/jams/JamsButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showRegion(IIII)V
    .locals 20

    move-object/from16 v0, p0

    shr-int/lit8 v1, p2, 0x1

    shr-int/lit8 v2, p1, 0x1

    add-int/2addr v1, v2

    int-to-long v1, v1

    shr-int/lit8 v3, p4, 0x1

    shr-int/lit8 v4, p3, 0x1

    add-int/2addr v3, v4

    int-to-long v3, v3

    invoke-virtual/range {p0 .. p0}, Lru/yandex/yandexmapkit/MapController;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/4 v6, 0x0

    mul-float v5, v5, v6

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorScaleTile()F

    move-result v6

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorSizeTile()F

    move-result v7

    mul-float v6, v6, v7

    iget-object v7, v0, Lru/yandex/yandexmapkit/MapController;->viewport:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, v0, Lru/yandex/yandexmapkit/MapController;->viewport:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v5, v5, v8

    sub-float/2addr v7, v5

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    const-wide/high16 v11, 0x4037000000000000L    # 23.0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v13

    sub-int v13, p2, p1

    int-to-float v13, v13

    mul-float v13, v13, v6

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    div-double/2addr v7, v13

    double-to-float v7, v7

    iget-object v8, v0, Lru/yandex/yandexmapkit/MapController;->viewport:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v13, v0, Lru/yandex/yandexmapkit/MapController;->viewport:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v13

    int-to-float v8, v8

    sub-float/2addr v8, v5

    float-to-double v13, v8

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v11

    sub-int v5, p4, p3

    int-to-float v5, v5

    mul-float v5, v5, v6

    float-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    div-double/2addr v11, v13

    double-to-float v5, v11

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v7, 0x41880000    # 17.0f

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v5, v5

    rsub-int/lit8 v7, v5, 0x17

    add-int/lit8 v7, v7, -0x3

    int-to-double v7, v7

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    iget-object v8, v0, Lru/yandex/yandexmapkit/MapController;->mapRotator:Lru/yandex/ap;

    iget-object v9, v0, Lru/yandex/yandexmapkit/MapController;->viewport:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v10, v0, Lru/yandex/yandexmapkit/MapController;->viewport:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lru/yandex/ap;->e(FF)Landroid/graphics/PointF;

    move-result-object v8

    iget v9, v8, Landroid/graphics/PointF;->x:F

    div-float/2addr v9, v6

    mul-float v9, v9, v7

    float-to-long v9, v9

    iget v8, v8, Landroid/graphics/PointF;->y:F

    div-float/2addr v8, v6

    mul-float v8, v8, v7

    float-to-long v6, v8

    sub-long v12, v1, v9

    sub-long v14, v3, v6

    iget-object v11, v0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    int-to-float v1, v5

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v16, v1

    invoke-virtual/range {v11 .. v19}, Lru/yandex/yandexmapkit/MapModel;->setPositionInRotateMode(JJFZZZ)V

    invoke-virtual/range {p0 .. p0}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    return-void
.end method

.method public showScaleView(Z)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->scaleView:Lru/yandex/yandexmapkit/map/scale/ScaleView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/map/scale/ScaleView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showZoomButtons(Z)V
    .locals 4

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->zoomInButton:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->zoomOutButton:Landroid/view/View;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public sizeChanged(II)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->tiledSurface:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-virtual {v0, p1, p2}, Lru/yandex/yandexmapkit/map/TiledSurface;->a(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Lru/yandex/yandexmapkit/MapController;->setViewport(IIII)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapController;->jams:Lru/yandex/be;

    invoke-virtual {p1, v0}, Lru/yandex/be;->a(Z)V

    return-void
.end method

.method startAll()V
    .locals 2

    sget v0, Lru/yandex/yandexmapkit/MapController;->startStopCouner:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lru/yandex/yandexmapkit/MapController;->startStopCouner:I

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapModel;->startThread()V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mapRotator:Lru/yandex/ap;

    invoke-virtual {v0}, Lru/yandex/ap;->g()V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->tiledSurface:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/map/TiledSurface;->a()V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->downloader:Lru/yandex/yandexmapkit/net/Downloader;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/net/Downloader;->a()V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->tileDownloader:Lru/yandex/bs;

    invoke-virtual {v0}, Lru/yandex/bs;->a()V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->fileCache:Lru/yandex/am;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lru/yandex/am;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->fileCache:Lru/yandex/am;

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lru/yandex/am;->a(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->tiledSurface:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/map/TiledSurface;->f()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mapController: startAll: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->mExtraStartupParams:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mStartupController:Lru/yandex/yandexmapkit/StartupController;

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->mExtraStartupParams:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/StartupController;->resume(Ljava/util/HashMap;)V

    return-void
.end method

.method stopAll()V
    .locals 3

    sget v0, Lru/yandex/yandexmapkit/MapController;->startStopCouner:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lru/yandex/yandexmapkit/MapController;->startStopCouner:I

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mStartupController:Lru/yandex/yandexmapkit/StartupController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/StartupController;->pause()V

    invoke-direct {p0}, Lru/yandex/yandexmapkit/MapController;->savePreferences()V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->fileCache:Lru/yandex/am;

    invoke-virtual {v0}, Lru/yandex/am;->e()V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->fileCache:Lru/yandex/am;

    if-eqz v0, :cond_0

    sget v2, Lru/yandex/yandexmapkit/MapController;->startStopCouner:I

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lru/yandex/am;->a(Z)Ljava/lang/Thread;

    :cond_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->semaphoreButton:Lru/yandex/yandexmapkit/map/jams/JamsButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/map/jams/JamsButton;->c()V

    :cond_1
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->downloader:Lru/yandex/yandexmapkit/net/Downloader;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/net/Downloader;->f()V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->tileDownloader:Lru/yandex/bs;

    invoke-virtual {v0}, Lru/yandex/bs;->c()V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapModel;->destroy()Ljava/lang/Thread;

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mapRotator:Lru/yandex/ap;

    invoke-virtual {v0}, Lru/yandex/ap;->h()Ljava/lang/Thread;

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->tiledSurface:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/map/TiledSurface;->g()Ljava/lang/Thread;

    return-void
.end method

.method public surfaceCreated()V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/OverlayManager;->resume()V

    return-void
.end method

.method public surfaceDestroyed()V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mOverlayManager:Lru/yandex/yandexmapkit/OverlayManager;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/OverlayManager;->destroyed()V

    return-void
.end method

.method public zoomIn()V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->mMapView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lru/yandex/yandexmapkit/MapController;->zoomIn(FF)V

    return-void
.end method

.method public zoomIn(FF)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->tiledSurface:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/map/TiledSurface;->h()V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v0, p1, p2}, Lru/yandex/yandexmapkit/MapModel;->zoomIn(FF)V

    return-void
.end method

.method public zoomOut()V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iget-object v1, p0, Lru/yandex/yandexmapkit/MapController;->mMapView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lru/yandex/yandexmapkit/MapController;->zoomOut(FF)V

    return-void
.end method

.method public zoomOut(FF)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->tiledSurface:Lru/yandex/yandexmapkit/map/TiledSurface;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/map/TiledSurface;->h()V

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapController;->mMapModel:Lru/yandex/yandexmapkit/MapModel;

    invoke-virtual {v0, p1, p2}, Lru/yandex/yandexmapkit/MapModel;->zoomOut(FF)V

    return-void
.end method
