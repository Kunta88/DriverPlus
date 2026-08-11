.class public Lru/yandex/yandexmapkit/MapView;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static final ANDROID_NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final API_KEY:Ljava/lang/String; = "apiKey"

.field private static final SHARE_MEMORY:Ljava/lang/String; = "share_memory"

.field private static final STATIC_MAP:Ljava/lang/String; = "static"

.field private static isShareMemory:I = -0x1


# instance fields
.field private final apiKey:Ljava/lang/String;

.field private final mapView:Landroid/view/View;

.field private mapViewInterface:Lru/yandex/yandexmapkit/MapViewInterface;

.field private screenButtons:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "apiKey"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lru/yandex/yandexmapkit/MapView;->apiKey:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apiKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapView;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget v0, Lru/yandex/yandexmapkit/MapView;->isShareMemory:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "share_memory"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Lru/yandex/yandexmapkit/MapView;->isShareMemory:I

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "static"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lru/yandex/yandexmapkit/MapStaticView;

    invoke-direct {p2, p1, p0}, Lru/yandex/yandexmapkit/MapStaticView;-><init>(Landroid/content/Context;Lru/yandex/yandexmapkit/MapView;)V

    goto :goto_1

    :cond_2
    new-instance p2, Lru/yandex/yandexmapkit/MapSurfaceView;

    invoke-direct {p2, p1, p0}, Lru/yandex/yandexmapkit/MapSurfaceView;-><init>(Landroid/content/Context;Lru/yandex/yandexmapkit/MapView;)V

    :goto_1
    iput-object p2, p0, Lru/yandex/yandexmapkit/MapView;->mapView:Landroid/view/View;

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapView;->mapView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/MapView;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapView;->mapView:Landroid/view/View;

    check-cast p1, Lru/yandex/yandexmapkit/MapViewInterface;

    iput-object p1, p0, Lru/yandex/yandexmapkit/MapView;->mapViewInterface:Lru/yandex/yandexmapkit/MapViewInterface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lru/yandex/yandexmapkit/MapView;->apiKey:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apiKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/MapView;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget v0, Lru/yandex/yandexmapkit/MapView;->isShareMemory:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "share_memory"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Lru/yandex/yandexmapkit/MapView;->isShareMemory:I

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "static"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lru/yandex/yandexmapkit/MapStaticView;

    invoke-direct {p2, p1, p0}, Lru/yandex/yandexmapkit/MapStaticView;-><init>(Landroid/content/Context;Lru/yandex/yandexmapkit/MapView;)V

    goto :goto_1

    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p2, v0, :cond_3

    new-instance p2, Lru/yandex/yandexmapkit/MapTextureView;

    invoke-direct {p2, p1, p0}, Lru/yandex/yandexmapkit/MapTextureView;-><init>(Landroid/content/Context;Lru/yandex/yandexmapkit/MapView;)V

    goto :goto_1

    :cond_3
    new-instance p2, Lru/yandex/yandexmapkit/MapSurfaceView;

    invoke-direct {p2, p1, p0}, Lru/yandex/yandexmapkit/MapSurfaceView;-><init>(Landroid/content/Context;Lru/yandex/yandexmapkit/MapView;)V

    :goto_1
    iput-object p2, p0, Lru/yandex/yandexmapkit/MapView;->mapView:Landroid/view/View;

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapView;->mapView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/MapView;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapView;->mapView:Landroid/view/View;

    check-cast p1, Lru/yandex/yandexmapkit/MapViewInterface;

    iput-object p1, p0, Lru/yandex/yandexmapkit/MapView;->mapViewInterface:Lru/yandex/yandexmapkit/MapViewInterface;

    return-void
.end method

.method public static isShareMemory()Z
    .locals 2

    sget v0, Lru/yandex/yandexmapkit/MapView;->isShareMemory:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapView;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMapController()Lru/yandex/yandexmapkit/MapController;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapView;->mapViewInterface:Lru/yandex/yandexmapkit/MapViewInterface;

    invoke-interface {v0}, Lru/yandex/yandexmapkit/MapViewInterface;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapView;->mapView:Landroid/view/View;

    return-object v0
.end method

.method public showBuiltInScreenButtons(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapView;->screenButtons:Landroid/view/View;

    if-nez p1, :cond_0

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapView;->mapViewInterface:Lru/yandex/yandexmapkit/MapViewInterface;

    invoke-interface {p1}, Lru/yandex/yandexmapkit/MapViewInterface;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object p1

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/MapController;->initializeScreenButtons()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lru/yandex/yandexmapkit/MapView;->screenButtons:Landroid/view/View;

    :cond_0
    iget-object p1, p0, Lru/yandex/yandexmapkit/MapView;->screenButtons:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/MapView;->screenButtons:Landroid/view/View;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lru/yandex/yandexmapkit/MapView;->screenButtons:Landroid/view/View;

    const/4 v0, 0x4

    goto :goto_0
.end method

.method public showFindMeButton(Z)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapView;->screenButtons:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapView;->mapViewInterface:Lru/yandex/yandexmapkit/MapViewInterface;

    invoke-interface {v0}, Lru/yandex/yandexmapkit/MapViewInterface;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->initializeScreenButtons()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lru/yandex/yandexmapkit/MapView;->screenButtons:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapView;->mapViewInterface:Lru/yandex/yandexmapkit/MapViewInterface;

    invoke-interface {v0}, Lru/yandex/yandexmapkit/MapViewInterface;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/MapController;->showFindMeButton(Z)V

    return-void
.end method

.method public showJamsButton(Z)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapView;->screenButtons:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapView;->mapViewInterface:Lru/yandex/yandexmapkit/MapViewInterface;

    invoke-interface {v0}, Lru/yandex/yandexmapkit/MapViewInterface;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->initializeScreenButtons()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lru/yandex/yandexmapkit/MapView;->screenButtons:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapView;->mapViewInterface:Lru/yandex/yandexmapkit/MapViewInterface;

    invoke-interface {v0}, Lru/yandex/yandexmapkit/MapViewInterface;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/MapController;->showJamsButton(Z)V

    return-void
.end method

.method public showScaleView(Z)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapView;->screenButtons:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapView;->mapViewInterface:Lru/yandex/yandexmapkit/MapViewInterface;

    invoke-interface {v0}, Lru/yandex/yandexmapkit/MapViewInterface;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->initializeScreenButtons()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lru/yandex/yandexmapkit/MapView;->screenButtons:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapView;->mapViewInterface:Lru/yandex/yandexmapkit/MapViewInterface;

    invoke-interface {v0}, Lru/yandex/yandexmapkit/MapViewInterface;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/MapController;->showScaleView(Z)V

    return-void
.end method

.method public showZoomButtons(Z)V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapView;->screenButtons:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/yandex/yandexmapkit/MapView;->mapViewInterface:Lru/yandex/yandexmapkit/MapViewInterface;

    invoke-interface {v0}, Lru/yandex/yandexmapkit/MapViewInterface;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->initializeScreenButtons()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lru/yandex/yandexmapkit/MapView;->screenButtons:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lru/yandex/yandexmapkit/MapView;->mapViewInterface:Lru/yandex/yandexmapkit/MapViewInterface;

    invoke-interface {v0}, Lru/yandex/yandexmapkit/MapViewInterface;->getMapController()Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/yandex/yandexmapkit/MapController;->showZoomButtons(Z)V

    return-void
.end method
