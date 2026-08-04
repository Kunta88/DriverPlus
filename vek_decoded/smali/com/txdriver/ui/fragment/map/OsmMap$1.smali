.class Lcom/txdriver/ui/fragment/map/OsmMap$1;
.super Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;
.source "OsmMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/map/OsmMap;->addOverlayItem(Lcom/txdriver/ui/fragment/map/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/map/OsmMap;

.field final synthetic val$item:Lcom/txdriver/ui/fragment/map/Item;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/map/OsmMap;ILorg/osmdroid/views/MapView;Lcom/txdriver/ui/fragment/map/Item;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/txdriver/ui/fragment/map/OsmMap$1;->this$0:Lcom/txdriver/ui/fragment/map/OsmMap;

    iput-object p4, p0, Lcom/txdriver/ui/fragment/map/OsmMap$1;->val$item:Lcom/txdriver/ui/fragment/map/Item;

    invoke-direct {p0, p2, p3}, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    return-void
.end method


# virtual methods
.method public onOpen(Ljava/lang/Object;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->onOpen(Ljava/lang/Object;)V

    .line 65
    iget-object p1, p0, Lcom/txdriver/ui/fragment/map/OsmMap$1;->mView:Landroid/view/View;

    const v0, 0x7f090076

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/txdriver/ui/fragment/map/OsmMap$1$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/map/OsmMap$1$1;-><init>(Lcom/txdriver/ui/fragment/map/OsmMap$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
