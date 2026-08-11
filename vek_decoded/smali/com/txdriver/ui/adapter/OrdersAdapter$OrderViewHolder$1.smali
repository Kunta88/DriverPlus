.class Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder$1;
.super Ljava/lang/Object;
.source "OrdersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;-><init>(Lcom/txdriver/ui/adapter/OrdersAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;

.field final synthetic val$this$0:Lcom/txdriver/ui/adapter/OrdersAdapter;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;Lcom/txdriver/ui/adapter/OrdersAdapter;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;

    iput-object p2, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder$1;->val$this$0:Lcom/txdriver/ui/adapter/OrdersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 211
    iget-object p1, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;

    iget-object p1, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->this$0:Lcom/txdriver/ui/adapter/OrdersAdapter;

    invoke-static {p1}, Lcom/txdriver/ui/adapter/OrdersAdapter;->access$200(Lcom/txdriver/ui/adapter/OrdersAdapter;)Lcom/txdriver/ui/adapter/OrdersAdapter$OnOrderClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;

    iget-object p1, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->this$0:Lcom/txdriver/ui/adapter/OrdersAdapter;

    invoke-static {p1}, Lcom/txdriver/ui/adapter/OrdersAdapter;->access$200(Lcom/txdriver/ui/adapter/OrdersAdapter;)Lcom/txdriver/ui/adapter/OrdersAdapter$OnOrderClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;

    iget-object v0, v0, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->this$0:Lcom/txdriver/ui/adapter/OrdersAdapter;

    invoke-static {v0}, Lcom/txdriver/ui/adapter/OrdersAdapter;->access$300(Lcom/txdriver/ui/adapter/OrdersAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;

    invoke-virtual {v1}, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/db/Order;

    invoke-interface {p1, v0}, Lcom/txdriver/ui/adapter/OrdersAdapter$OnOrderClickListener;->onOrderClick(Lcom/txdriver/db/Order;)V

    :cond_0
    return-void
.end method
