.class Lcom/txdriver/ui/fragment/ReservedOrdersFragment$1;
.super Ljava/lang/Object;
.source "ReservedOrdersFragment.java"

# interfaces
.implements Lcom/txdriver/ui/adapter/OrdersAdapter$OnOrderClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/ReservedOrdersFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/ReservedOrdersFragment;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment$1;->this$0:Lcom/txdriver/ui/fragment/ReservedOrdersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrderClick(Lcom/txdriver/db/Order;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment$1;->this$0:Lcom/txdriver/ui/fragment/ReservedOrdersFragment;

    invoke-static {v0, p1}, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->access$000(Lcom/txdriver/ui/fragment/ReservedOrdersFragment;Lcom/txdriver/db/Order;)V

    return-void
.end method
