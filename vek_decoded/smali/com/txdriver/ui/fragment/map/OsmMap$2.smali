.class Lcom/txdriver/ui/fragment/map/OsmMap$2;
.super Ljava/lang/Object;
.source "OsmMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/map/OsmMap;->setZoomToSpanAllItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/map/OsmMap;

.field final synthetic val$latSub:I

.field final synthetic val$latSum:I

.field final synthetic val$lonSub:I

.field final synthetic val$lonSum:I


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/map/OsmMap;IIII)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/txdriver/ui/fragment/map/OsmMap$2;->this$0:Lcom/txdriver/ui/fragment/map/OsmMap;

    iput p2, p0, Lcom/txdriver/ui/fragment/map/OsmMap$2;->val$latSub:I

    iput p3, p0, Lcom/txdriver/ui/fragment/map/OsmMap$2;->val$lonSub:I

    iput p4, p0, Lcom/txdriver/ui/fragment/map/OsmMap$2;->val$latSum:I

    iput p5, p0, Lcom/txdriver/ui/fragment/map/OsmMap$2;->val$lonSum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap$2;->this$0:Lcom/txdriver/ui/fragment/map/OsmMap;

    invoke-static {v0}, Lcom/txdriver/ui/fragment/map/OsmMap;->access$000(Lcom/txdriver/ui/fragment/map/OsmMap;)Lorg/osmdroid/views/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    iget v1, p0, Lcom/txdriver/ui/fragment/map/OsmMap$2;->val$latSub:I

    iget v2, p0, Lcom/txdriver/ui/fragment/map/OsmMap$2;->val$lonSub:I

    invoke-interface {v0, v1, v2}, Lorg/osmdroid/api/IMapController;->zoomToSpan(II)V

    .line 141
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap$2;->this$0:Lcom/txdriver/ui/fragment/map/OsmMap;

    invoke-static {v0}, Lcom/txdriver/ui/fragment/map/OsmMap;->access$000(Lcom/txdriver/ui/fragment/map/OsmMap;)Lorg/osmdroid/views/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    iget v2, p0, Lcom/txdriver/ui/fragment/map/OsmMap$2;->val$latSum:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/txdriver/ui/fragment/map/OsmMap$2;->val$lonSum:I

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    return-void
.end method
