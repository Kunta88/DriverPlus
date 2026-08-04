.class Lcom/txdriver/ui/fragment/MapFragment$4;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/MapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/MapFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/MapFragment;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/txdriver/ui/fragment/MapFragment$4;->this$0:Lcom/txdriver/ui/fragment/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/txdriver/ui/fragment/MapFragment$4;->this$0:Lcom/txdriver/ui/fragment/MapFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/MapFragment;->access$000(Lcom/txdriver/ui/fragment/MapFragment;)Lcom/txdriver/ui/fragment/map/Map;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/map/Map;->setZoomToSpanAllItems()V

    return-void
.end method
