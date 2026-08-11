.class Lcom/txdriver/ui/fragment/map/YandexMap$1;
.super Ljava/lang/Object;
.source "YandexMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/map/YandexMap;->setZoomToSpanAllItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/map/YandexMap;

.field final synthetic val$latSub:D

.field final synthetic val$latSum:D

.field final synthetic val$lonSub:D

.field final synthetic val$lonSum:D


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/map/YandexMap;DDDD)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/txdriver/ui/fragment/map/YandexMap$1;->this$0:Lcom/txdriver/ui/fragment/map/YandexMap;

    iput-wide p2, p0, Lcom/txdriver/ui/fragment/map/YandexMap$1;->val$latSub:D

    iput-wide p4, p0, Lcom/txdriver/ui/fragment/map/YandexMap$1;->val$lonSub:D

    iput-wide p6, p0, Lcom/txdriver/ui/fragment/map/YandexMap$1;->val$latSum:D

    iput-wide p8, p0, Lcom/txdriver/ui/fragment/map/YandexMap$1;->val$lonSum:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 130
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/YandexMap$1;->this$0:Lcom/txdriver/ui/fragment/map/YandexMap;

    invoke-static {v0}, Lcom/txdriver/ui/fragment/map/YandexMap;->access$000(Lcom/txdriver/ui/fragment/map/YandexMap;)Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    iget-wide v1, p0, Lcom/txdriver/ui/fragment/map/YandexMap$1;->val$latSub:D

    iget-wide v3, p0, Lcom/txdriver/ui/fragment/map/YandexMap$1;->val$lonSub:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lru/yandex/yandexmapkit/MapController;->setZoomToSpan(DD)V

    .line 131
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/YandexMap$1;->this$0:Lcom/txdriver/ui/fragment/map/YandexMap;

    invoke-static {v0}, Lcom/txdriver/ui/fragment/map/YandexMap;->access$000(Lcom/txdriver/ui/fragment/map/YandexMap;)Lru/yandex/yandexmapkit/MapController;

    move-result-object v0

    new-instance v1, Lru/yandex/yandexmapkit/utils/GeoPoint;

    iget-wide v2, p0, Lcom/txdriver/ui/fragment/map/YandexMap$1;->val$latSum:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    iget-wide v6, p0, Lcom/txdriver/ui/fragment/map/YandexMap$1;->val$lonSum:D

    div-double/2addr v6, v4

    invoke-direct {v1, v2, v3, v6, v7}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/MapController;->setPositionAnimationTo(Lru/yandex/yandexmapkit/utils/GeoPoint;)V

    return-void
.end method
