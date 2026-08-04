.class public Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;
.super Lru/yandex/yandexmapkit/overlay/Overlay;

# interfaces
.implements Lru/yandex/yandexmapkit/map/OnMapListener;
.implements Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;


# static fields
.field public static final ID:I


# instance fields
.field a:Z

.field b:Z

.field f:Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

.field private volatile g:Lru/yandex/ao;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lru/yandex/ar;

.field private m:Lru/yandex/ce;

.field private n:Lru/yandex/by;

.field private o:Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;

.field private p:Landroid/os/Handler;

.field private q:Landroid/content/Context;

.field private r:Z

.field private s:Lru/yandex/bx;

.field private t:Lru/yandex/cc;

.field private u:Lru/yandex/cb;

.field private v:Lru/yandex/ca;

.field private w:Ljava/util/List;

.field private x:Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;

.field private y:Lru/yandex/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lru/yandex/cj;->a()I

    move-result v0

    sput v0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->ID:I

    return-void
.end method

.method public constructor <init>(Lru/yandex/yandexmapkit/MapController;)V
    .locals 6

    invoke-direct {p0, p1}, Lru/yandex/yandexmapkit/overlay/Overlay;-><init>(Lru/yandex/yandexmapkit/MapController;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->a:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->h:Z

    iput-boolean v1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->i:Z

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->j:Z

    iput-boolean v1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->k:Z

    iput-boolean v1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->b:Z

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->r:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->w:Ljava/util/List;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->setPriority(B)V

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->q:Landroid/content/Context;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->getMapRotator()Lru/yandex/ap;

    move-result-object p1

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->y:Lru/yandex/ap;

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->q:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v0, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;

    iget-object v1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->q:Landroid/content/Context;

    new-instance v2, Lru/yandex/yandexmapkit/utils/GeoPoint;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4, v3, v4}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;-><init>(Landroid/content/Context;Lru/yandex/yandexmapkit/utils/GeoPoint;)V

    iget-object v1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->q:Landroid/content/Context;

    sget v2, Lru/yandex/yandexmapkit/R$string;->ymk_my_place:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lru/yandex/bx;

    new-instance v2, Lru/yandex/yandexmapkit/utils/GeoPoint;

    invoke-direct {v2, v3, v4, v3, v4}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>(DD)V

    sget v5, Lru/yandex/yandexmapkit/R$drawable;->ymk_user_location_gps:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lru/yandex/bx;-><init>(Lru/yandex/yandexmapkit/utils/GeoPoint;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->s:Lru/yandex/bx;

    invoke-virtual {v1, v0}, Lru/yandex/bx;->setBalloonItem(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V

    new-instance v1, Lru/yandex/cc;

    new-instance v2, Lru/yandex/yandexmapkit/utils/GeoPoint;

    invoke-direct {v2, v3, v4, v3, v4}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>(DD)V

    sget v3, Lru/yandex/yandexmapkit/R$drawable;->ymk_user_location_lbs:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lru/yandex/cc;-><init>(Lru/yandex/yandexmapkit/utils/GeoPoint;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->t:Lru/yandex/cc;

    sget v2, Lru/yandex/yandexmapkit/R$drawable;->ymk_user_location_gps:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lru/yandex/cc;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->t:Lru/yandex/cc;

    invoke-virtual {p1, v0}, Lru/yandex/cc;->setBalloonItem(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V

    invoke-virtual {v0, p0}, Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;->setOnBalloonListener(Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;)V

    new-instance p1, Lru/yandex/cb;

    invoke-direct {p1}, Lru/yandex/cb;-><init>()V

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->u:Lru/yandex/cb;

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->s:Lru/yandex/bx;

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->addOverlayItem(Lru/yandex/yandexmapkit/overlay/OverlayItem;)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->t:Lru/yandex/cc;

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->addOverlayItem(Lru/yandex/yandexmapkit/overlay/OverlayItem;)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->u:Lru/yandex/cb;

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->addOverlayItem(Lru/yandex/yandexmapkit/overlay/OverlayItem;)V

    new-instance p1, Lru/yandex/bz;

    invoke-direct {p1, p0}, Lru/yandex/bz;-><init>(Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;)V

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->p:Landroid/os/Handler;

    new-instance p1, Lru/yandex/ca;

    invoke-direct {p1}, Lru/yandex/ca;-><init>()V

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->v:Lru/yandex/ca;

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->setIRender(Lru/yandex/yandexmapkit/overlay/IRender;)V

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lru/yandex/yandexmapkit/MapController;->addMapListener(Lru/yandex/yandexmapkit/map/OnMapListener;)V

    new-instance p1, Lru/yandex/by;

    invoke-direct {p1, p0}, Lru/yandex/by;-><init>(Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;)V

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->n:Lru/yandex/by;

    new-instance p1, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;

    invoke-direct {p1, p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;-><init>(Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;)V

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->o:Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;

    new-instance p1, Lru/yandex/ce;

    invoke-direct {p1, p0}, Lru/yandex/ce;-><init>(Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;)V

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->m:Lru/yandex/ce;

    return-void
.end method

.method public static synthetic a(Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;Lru/yandex/ar;)Lru/yandex/ar;
    .locals 0

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->l:Lru/yandex/ar;

    return-object p1
.end method

.method public static synthetic a(Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->n:Lru/yandex/by;

    invoke-virtual {v0, p0}, Lru/yandex/by;->a(Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;)V

    return-void
.end method

.method public static synthetic b(Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;)Lru/yandex/ar;
    .locals 0

    iget-object p0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->l:Lru/yandex/ar;

    return-object p0
.end method

.method public static synthetic c(Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->q:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic d(Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->p:Landroid/os/Handler;

    return-object p0
.end method

.method private n()V
    .locals 10

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getMyLocationItem()Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Lru/yandex/yandexmapkit/utils/Point;

    invoke-direct {v1}, Lru/yandex/yandexmapkit/utils/Point;-><init>()V

    iget-object v3, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    new-instance v4, Lru/yandex/yandexmapkit/utils/ScreenPoint;

    iget-object v5, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v5}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    shr-int/2addr v5, v2

    int-to-float v5, v5

    iget-object v6, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v6}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    shr-int/2addr v6, v2

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Lru/yandex/yandexmapkit/utils/ScreenPoint;-><init>(FF)V

    invoke-virtual {v3, v4}, Lru/yandex/yandexmapkit/MapController;->get23Point(Lru/yandex/yandexmapkit/utils/ScreenPoint;)Lru/yandex/yandexmapkit/utils/Point;

    move-result-object v3

    iget-object v4, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    new-instance v5, Lru/yandex/yandexmapkit/utils/ScreenPoint;

    iget-object v6, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v6}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    shr-int/2addr v6, v2

    int-to-float v6, v6

    iget-object v7, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v7}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    shl-int/lit8 v2, v7, 0x1

    int-to-float v2, v2

    invoke-direct {v5, v6, v2}, Lru/yandex/yandexmapkit/utils/ScreenPoint;-><init>(FF)V

    invoke-virtual {v4, v5}, Lru/yandex/yandexmapkit/MapController;->get23Point(Lru/yandex/yandexmapkit/utils/ScreenPoint;)Lru/yandex/yandexmapkit/utils/Point;

    move-result-object v2

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getPoint()Lru/yandex/yandexmapkit/utils/Point;

    move-result-object v4

    iget-wide v4, v4, Lru/yandex/yandexmapkit/utils/Point;->x:J

    iget-wide v6, v2, Lru/yandex/yandexmapkit/utils/Point;->x:J

    iget-wide v8, v3, Lru/yandex/yandexmapkit/utils/Point;->x:J

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    iput-wide v4, v1, Lru/yandex/yandexmapkit/utils/Point;->x:J

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getPoint()Lru/yandex/yandexmapkit/utils/Point;

    move-result-object v0

    iget-wide v4, v0, Lru/yandex/yandexmapkit/utils/Point;->y:J

    iget-wide v6, v2, Lru/yandex/yandexmapkit/utils/Point;->y:J

    iget-wide v2, v3, Lru/yandex/yandexmapkit/utils/Point;->y:J

    sub-long/2addr v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, v1, Lru/yandex/yandexmapkit/utils/Point;->y:J

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/MapController;->setPositionAnimationTo(Lru/yandex/yandexmapkit/utils/Point;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lru/yandex/ar;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->l:Lru/yandex/ar;

    return-object v0
.end method

.method a(I)V
    .locals 1

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->a(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "msg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->p:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lru/yandex/ao;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->g:Lru/yandex/ao;

    return-void
.end method

.method public a(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->s:Lru/yandex/bx;

    invoke-virtual {v0, p1}, Lru/yandex/bx;->setBalloonItem(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->t:Lru/yandex/cc;

    invoke-virtual {v0, p1}, Lru/yandex/cc;->setBalloonItem(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V

    return-void
.end method

.method public a(Lru/yandex/yandexmapkit/utils/GeoPoint;IZ)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->u:Lru/yandex/cb;

    invoke-virtual {v0, p1}, Lru/yandex/cb;->setGeoPoint(Lru/yandex/yandexmapkit/utils/GeoPoint;)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->u:Lru/yandex/cb;

    invoke-virtual {v0, p2}, Lru/yandex/cb;->a(I)V

    iget-object p2, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->t:Lru/yandex/cc;

    invoke-virtual {p2, p1}, Lru/yandex/cc;->setGeoPoint(Lru/yandex/yandexmapkit/utils/GeoPoint;)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->t:Lru/yandex/cc;

    invoke-virtual {p1, p3}, Lru/yandex/cc;->a(Z)V

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->i()Lru/yandex/by;

    move-result-object p1

    invoke-virtual {p1}, Lru/yandex/by;->b()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->k()Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->s:Lru/yandex/bx;

    invoke-virtual {v0, p1}, Lru/yandex/bx;->setVisible(Z)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->u:Lru/yandex/cb;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lru/yandex/cb;->setVisible(Z)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->t:Lru/yandex/cc;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lru/yandex/cc;->setVisible(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->s:Lru/yandex/bx;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->t:Lru/yandex/cc;

    :goto_0
    iput-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->f:Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    return-void
.end method

.method public addMyLocationListener(Lru/yandex/yandexmapkit/overlay/location/OnMyLocationListener;)V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->w:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->w:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public b()Lru/yandex/ao;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->g:Lru/yandex/ao;

    return-object v0
.end method

.method public b(Z)V
    .locals 2

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->k:Z

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->s:Lru/yandex/bx;

    invoke-virtual {v0, p1}, Lru/yandex/bx;->b(Z)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->t:Lru/yandex/cc;

    invoke-virtual {v0, p1}, Lru/yandex/cc;->b(Z)V

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->k:Z

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->y:Lru/yandex/ap;

    invoke-virtual {v0, p1}, Lru/yandex/ap;->a(Z)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->f:Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->n()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->m:Lru/yandex/ce;

    invoke-virtual {p1}, Lru/yandex/ce;->b()V

    return-void

    :cond_1
    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->m:Lru/yandex/ce;

    invoke-virtual {p1}, Lru/yandex/ce;->c()V

    :cond_2
    return-void
.end method

.method public c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->q:Landroid/content/Context;

    return-object v0
.end method

.method public d()Lru/yandex/bx;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->s:Lru/yandex/bx;

    return-object v0
.end method

.method public declared-synchronized e()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->j:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->a:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->i:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->n:Lru/yandex/by;

    invoke-virtual {v0}, Lru/yandex/by;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->d:Ljava/util/List;

    iget-object v1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->s:Lru/yandex/bx;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->s:Lru/yandex/bx;

    invoke-virtual {v0}, Lru/yandex/bx;->b()Lru/yandex/yandexmapkit/utils/Point;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->h:Z

    if-nez v0, :cond_3

    new-instance v0, Lru/yandex/yandexmapkit/utils/Point;

    invoke-direct {v0}, Lru/yandex/yandexmapkit/utils/Point;-><init>()V

    iget-object v1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    new-instance v2, Lru/yandex/yandexmapkit/utils/ScreenPoint;

    iget-object v3, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget-object v4, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Lru/yandex/yandexmapkit/utils/ScreenPoint;-><init>(FF)V

    invoke-virtual {v1, v2}, Lru/yandex/yandexmapkit/MapController;->get23Point(Lru/yandex/yandexmapkit/utils/ScreenPoint;)Lru/yandex/yandexmapkit/utils/Point;

    move-result-object v1

    iget-object v2, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->s:Lru/yandex/bx;

    invoke-virtual {v2}, Lru/yandex/bx;->b()Lru/yandex/yandexmapkit/utils/Point;

    move-result-object v2

    iget-object v3, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->s:Lru/yandex/bx;

    invoke-virtual {v3}, Lru/yandex/bx;->getPoint()Lru/yandex/yandexmapkit/utils/Point;

    move-result-object v3

    iget-wide v4, v3, Lru/yandex/yandexmapkit/utils/Point;->x:J

    iget-wide v6, v2, Lru/yandex/yandexmapkit/utils/Point;->x:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    iget-wide v4, v3, Lru/yandex/yandexmapkit/utils/Point;->y:J

    iget-wide v6, v2, Lru/yandex/yandexmapkit/utils/Point;->y:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    :cond_1
    iget-wide v4, v1, Lru/yandex/yandexmapkit/utils/Point;->x:J

    iget-wide v6, v3, Lru/yandex/yandexmapkit/utils/Point;->x:J

    add-long/2addr v4, v6

    iget-wide v6, v2, Lru/yandex/yandexmapkit/utils/Point;->x:J

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lru/yandex/yandexmapkit/utils/Point;->x:J

    iget-wide v4, v1, Lru/yandex/yandexmapkit/utils/Point;->y:J

    iget-wide v6, v3, Lru/yandex/yandexmapkit/utils/Point;->y:J

    add-long/2addr v4, v6

    iget-wide v1, v2, Lru/yandex/yandexmapkit/utils/Point;->y:J

    sub-long/2addr v4, v1

    iput-wide v4, v0, Lru/yandex/yandexmapkit/utils/Point;->y:J

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lru/yandex/yandexmapkit/MapController;->setPositionAnimationTo(Lru/yandex/yandexmapkit/utils/Point;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->a:Z

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getMyLocationItem()Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    move-result-object v1

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getGeoPoint()Lru/yandex/yandexmapkit/utils/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/MapController;->setPositionAnimationTo(Lru/yandex/yandexmapkit/utils/GeoPoint;)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->y:Lru/yandex/ap;

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getMyLocationItem()Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    move-result-object v1

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Lru/yandex/ap;->a(F)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->y:Lru/yandex/ap;

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getMyLocationItem()Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    move-result-object v1

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getPoint()Lru/yandex/yandexmapkit/utils/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/yandex/ap;->a(Lru/yandex/yandexmapkit/utils/Point;)V

    :cond_4
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->notifyRepaint()V

    :cond_5
    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->w:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/yandex/yandexmapkit/overlay/location/OnMyLocationListener;

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getMyLocationItem()Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    move-result-object v3

    invoke-interface {v2, v3}, Lru/yandex/yandexmapkit/overlay/location/OnMyLocationListener;->onMyLocationChange(Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;)V

    goto :goto_2

    :cond_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->k:Z

    return v0
.end method

.method public findMe()V
    .locals 7

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getMyLocationItem()Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->i:Z

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-direct {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->n()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v3

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getPoint()Lru/yandex/yandexmapkit/utils/Point;

    move-result-object v4

    invoke-virtual {v3, v4}, Lru/yandex/yandexmapkit/MapController;->setPositionAnimationTo(Lru/yandex/yandexmapkit/utils/Point;)V

    :goto_0
    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iput-boolean v2, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->b:Z

    invoke-virtual {p0, v1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->a(Lru/yandex/ao;)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->p:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->y:Lru/yandex/ap;

    iget-object v3, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    new-instance v4, Lru/yandex/yandexmapkit/utils/ScreenPoint;

    iget-object v5, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v5}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    shr-int/2addr v5, v2

    int-to-float v5, v5

    iget-object v6, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v6}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    shr-int/2addr v6, v2

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Lru/yandex/yandexmapkit/utils/ScreenPoint;-><init>(FF)V

    invoke-virtual {v3, v4}, Lru/yandex/yandexmapkit/MapController;->get23Point(Lru/yandex/yandexmapkit/utils/ScreenPoint;)Lru/yandex/yandexmapkit/utils/Point;

    move-result-object v3

    invoke-virtual {v0, v3}, Lru/yandex/ap;->a(Lru/yandex/yandexmapkit/utils/Point;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->b(Z)V

    :cond_2
    iput-boolean v2, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->b:Z

    invoke-virtual {p0, v1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->a(Lru/yandex/ao;)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->p:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method public g()Z
    .locals 6

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->f:Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getScreenPoint()Lru/yandex/yandexmapkit/utils/ScreenPoint;

    move-result-object v0

    iget-object v2, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    shr-int/2addr v2, v3

    iget-object v4, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    shr-int/2addr v4, v3

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->f()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->f:Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    invoke-virtual {v5}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getType()I

    move-result v5

    if-ne v5, v3, :cond_0

    iget-object v4, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v4}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    shl-int/2addr v4, v3

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-ne v5, v2, :cond_1

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/utils/ScreenPoint;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ne v0, v4, :cond_1

    return v3

    :cond_1
    return v1
.end method

.method public getId()I
    .locals 1

    sget v0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->ID:I

    return v0
.end method

.method public getMyLocationItem()Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->f:Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    return-object v0
.end method

.method public h()Lru/yandex/ce;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->m:Lru/yandex/ce;

    return-object v0
.end method

.method public i()Lru/yandex/by;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->n:Lru/yandex/by;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->r:Z

    return v0
.end method

.method public j()Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->o:Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;

    return-object v0
.end method

.method public k()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->p:Landroid/os/Handler;

    return-object v0
.end method

.method public l()V
    .locals 2

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lru/yandex/cd;

    invoke-direct {v1, p0}, Lru/yandex/cd;-><init>(Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->n:Lru/yandex/by;

    invoke-virtual {v0}, Lru/yandex/by;->c()V

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->m:Lru/yandex/ce;

    invoke-virtual {v0}, Lru/yandex/ce;->c()V

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->l:Lru/yandex/ar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/yandex/ar;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->l:Lru/yandex/ar;

    :cond_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->p:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onBalloonAnimationEnd(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V
    .locals 0

    return-void
.end method

.method public onBalloonAnimationStart(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V
    .locals 0

    return-void
.end method

.method public onBalloonHide(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V
    .locals 0

    return-void
.end method

.method public onBalloonShow(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;)V
    .locals 0

    return-void
.end method

.method public onBalloonViewClick(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->x:Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lru/yandex/yandexmapkit/overlay/balloon/OnBalloonListener;->onBalloonViewClick(Lru/yandex/yandexmapkit/overlay/balloon/BalloonItem;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onLongPress(FF)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->a(FF)Lru/yandex/yandexmapkit/overlay/OverlayItem;

    move-result-object p1

    check-cast p1, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getType()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onMapActionEvent(Lru/yandex/yandexmapkit/map/MapEvent;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->a:Z

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->i:Z

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/MapEvent;->getMsg()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/16 v2, 0x9

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->g()Z

    move-result p1

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->i:Z

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->h:Z

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->y:Lru/yandex/ap;

    invoke-virtual {p1, v1}, Lru/yandex/ap;->b(Z)V

    :cond_2
    iput-boolean v1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->h:Z

    return-void
.end method

.method public onSingleTapUp(FF)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lru/yandex/yandexmapkit/overlay/Overlay;->onSingleTapUp(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->a(FF)Lru/yandex/yandexmapkit/overlay/OverlayItem;

    move-result-object p1

    check-cast p1, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getType()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->o:Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getMyLocationItem()Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    move-result-object p2

    invoke-virtual {p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getGeoPoint()Lru/yandex/yandexmapkit/utils/GeoPoint;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/yandex/yandexmapkit/overlay/location/MyLocationDownloader;->a(Lru/yandex/yandexmapkit/utils/GeoPoint;)V

    :cond_1
    return v0
.end method

.method public prepareDraw()Ljava/util/List;
    .locals 10

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->f:Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/yandexmapkit/overlay/OverlayItem;

    move-object v3, v1

    check-cast v3, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;

    :try_start_0
    invoke-virtual {v3}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->isVisible()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getPoint()Lru/yandex/yandexmapkit/utils/Point;

    move-result-object v5

    invoke-virtual {v4, v5}, Lru/yandex/yandexmapkit/MapController;->getScreenPoint(Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/ScreenPoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->setScreenPoint(Lru/yandex/yandexmapkit/utils/ScreenPoint;)V

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    invoke-virtual {v3}, Lru/yandex/yandexmapkit/overlay/location/MyLocationItem;->getRadius()I

    move-result v4

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v5

    invoke-virtual {v5}, Lru/yandex/yandexmapkit/MapController;->getTiledSurface()Lru/yandex/yandexmapkit/map/TiledSurface;

    move-result-object v5

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/high16 v8, 0x41b80000    # 23.0f

    invoke-virtual {v5}, Lru/yandex/yandexmapkit/map/TiledSurface;->i()F

    move-result v5

    sub-float/2addr v8, v5

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorSizeTile()F

    move-result v6

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorScaleTile()F

    move-result v7

    mul-float v6, v6, v7

    int-to-float v4, v4

    mul-float v4, v4, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    move-object v5, v1

    check-cast v5, Lru/yandex/cb;

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Lru/yandex/cb;->c(F)V

    :cond_3
    invoke-virtual {v1}, Lru/yandex/yandexmapkit/overlay/OverlayItem;->getRectBounds()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v5}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->e:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v6}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v4, v2, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v1, v4}, Lru/yandex/yandexmapkit/utils/Utils;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    nop

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->h:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->y:Lru/yandex/ap;

    invoke-virtual {v0}, Lru/yandex/ap;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->y:Lru/yandex/ap;

    invoke-virtual {v0, v2}, Lru/yandex/ap;->b(Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->y:Lru/yandex/ap;

    invoke-virtual {v0}, Lru/yandex/ap;->f()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->y:Lru/yandex/ap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lru/yandex/ap;->b(Z)V

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->getPrepareDrawList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_7
    :goto_2
    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->d:Ljava/util/List;

    return-object v0
.end method

.method public refreshPermission()V
    .locals 0

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->m()V

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->l()V

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->findMe()V

    return-void
.end method

.method public removeMyLocationListener(Lru/yandex/yandexmapkit/overlay/location/OnMyLocationListener;)V
    .locals 2

    iget-object v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->w:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->w:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public setAutoScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->j:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->r:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->r:Z

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->l()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lru/yandex/yandexmapkit/overlay/location/MyLocationOverlay;->m()V

    :cond_1
    return-void
.end method
