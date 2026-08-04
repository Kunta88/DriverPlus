.class Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder$1;
.super Ljava/lang/Object;
.source "OrdersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder;-><init>(Lcom/txdriver/ui/adapter/OrdersAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder;

.field final synthetic val$this$0:Lcom/txdriver/ui/adapter/OrdersAdapter;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder;Lcom/txdriver/ui/adapter/OrdersAdapter;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder;

    iput-object p2, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder$1;->val$this$0:Lcom/txdriver/ui/adapter/OrdersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder;

    iget-object p1, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder;->this$0:Lcom/txdriver/ui/adapter/OrdersAdapter;

    invoke-static {p1}, Lcom/txdriver/ui/adapter/OrdersAdapter;->access$000(Lcom/txdriver/ui/adapter/OrdersAdapter;)Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder;

    iget-object v0, v0, Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder;->this$0:Lcom/txdriver/ui/adapter/OrdersAdapter;

    invoke-static {v0}, Lcom/txdriver/ui/adapter/OrdersAdapter;->access$100(Lcom/txdriver/ui/adapter/OrdersAdapter;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog;->show(Landroidx/fragment/app/FragmentManager;I)Lcom/txdriver/ui/fragment/dialog/SortOrdersDialog;

    return-void
.end method
