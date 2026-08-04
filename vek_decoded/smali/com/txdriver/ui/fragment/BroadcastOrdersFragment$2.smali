.class Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$2;
.super Ljava/lang/Object;
.source "BroadcastOrdersFragment.java"

# interfaces
.implements Lcom/txdriver/ui/adapter/OrdersAdapter$OnOrderClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$2;->this$0:Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrderClick(Lcom/txdriver/db/Order;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$2;->this$0:Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;

    invoke-virtual {v0, p1}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->showOrder(Lcom/txdriver/db/Order;)V

    return-void
.end method
