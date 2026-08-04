.class public abstract Lcom/txdriver/ui/fragment/map/Map;
.super Ljava/lang/Object;
.source "Map.java"


# instance fields
.field private mBalloonItemClickListener:Lcom/txdriver/ui/fragment/map/BalloonItemClickListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/txdriver/ui/fragment/map/Map;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract addOverlayItem(Lcom/txdriver/ui/fragment/map/Item;)V
.end method

.method public abstract addOverlays()V
.end method

.method public buildRoute(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/ui/fragment/map/Point;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public clearCache()V
    .locals 0

    return-void
.end method

.method public abstract clearOverlayItems()V
.end method

.method public abstract createView()Landroid/view/View;
.end method

.method public abstract findMe()V
.end method

.method public abstract getCenter()Lcom/txdriver/ui/fragment/map/Point;
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/Map;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract getZoomLevel()I
.end method

.method public onBalloonItemClick(Lcom/txdriver/ui/fragment/map/Item;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/Map;->mBalloonItemClickListener:Lcom/txdriver/ui/fragment/map/BalloonItemClickListener;

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0, p1}, Lcom/txdriver/ui/fragment/map/BalloonItemClickListener;->onBalloonClick(Lcom/txdriver/ui/fragment/map/Item;)V

    :cond_0
    return-void
.end method

.method public abstract scrollToLocation(Landroid/location/Location;)V
.end method

.method public setBalloonItemClickListener(Lcom/txdriver/ui/fragment/map/BalloonItemClickListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/txdriver/ui/fragment/map/Map;->mBalloonItemClickListener:Lcom/txdriver/ui/fragment/map/BalloonItemClickListener;

    return-void
.end method

.method public abstract setCenter(Lcom/txdriver/ui/fragment/map/Point;)V
.end method

.method public setEnabledMyLocation(Z)V
    .locals 0

    return-void
.end method

.method public abstract setZoomLevel(I)V
.end method

.method public setZoomToSpanAllItems()V
    .locals 0

    return-void
.end method

.method public abstract zoomIn()V
.end method

.method public abstract zoomOut()V
.end method
