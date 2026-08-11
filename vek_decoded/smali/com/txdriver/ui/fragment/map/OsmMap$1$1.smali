.class Lcom/txdriver/ui/fragment/map/OsmMap$1$1;
.super Ljava/lang/Object;
.source "OsmMap.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/map/OsmMap$1;->onOpen(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/txdriver/ui/fragment/map/OsmMap$1;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/map/OsmMap$1;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/txdriver/ui/fragment/map/OsmMap$1$1;->this$1:Lcom/txdriver/ui/fragment/map/OsmMap$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 68
    iget-object p1, p0, Lcom/txdriver/ui/fragment/map/OsmMap$1$1;->this$1:Lcom/txdriver/ui/fragment/map/OsmMap$1;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/map/OsmMap$1;->this$0:Lcom/txdriver/ui/fragment/map/OsmMap;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/OsmMap$1$1;->this$1:Lcom/txdriver/ui/fragment/map/OsmMap$1;

    iget-object v0, v0, Lcom/txdriver/ui/fragment/map/OsmMap$1;->val$item:Lcom/txdriver/ui/fragment/map/Item;

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/fragment/map/OsmMap;->onBalloonItemClick(Lcom/txdriver/ui/fragment/map/Item;)V

    return-void
.end method
