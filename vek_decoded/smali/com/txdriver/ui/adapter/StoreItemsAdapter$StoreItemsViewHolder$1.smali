.class Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder$1;
.super Ljava/lang/Object;
.source "StoreItemsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;-><init>(Lcom/txdriver/ui/adapter/StoreItemsAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;

.field final synthetic val$this$0:Lcom/txdriver/ui/adapter/StoreItemsAdapter;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;Lcom/txdriver/ui/adapter/StoreItemsAdapter;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;

    iput-object p2, p0, Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder$1;->val$this$0:Lcom/txdriver/ui/adapter/StoreItemsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 70
    iget-object p1, p0, Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;

    iget-object p1, p1, Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;->this$0:Lcom/txdriver/ui/adapter/StoreItemsAdapter;

    invoke-static {p1}, Lcom/txdriver/ui/adapter/StoreItemsAdapter;->access$000(Lcom/txdriver/ui/adapter/StoreItemsAdapter;)Lcom/txdriver/ui/adapter/StoreItemsAdapter$OnStoreItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;

    iget-object p1, p1, Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;->this$0:Lcom/txdriver/ui/adapter/StoreItemsAdapter;

    invoke-static {p1}, Lcom/txdriver/ui/adapter/StoreItemsAdapter;->access$000(Lcom/txdriver/ui/adapter/StoreItemsAdapter;)Lcom/txdriver/ui/adapter/StoreItemsAdapter$OnStoreItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;

    iget-object v0, v0, Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;->this$0:Lcom/txdriver/ui/adapter/StoreItemsAdapter;

    invoke-static {v0}, Lcom/txdriver/ui/adapter/StoreItemsAdapter;->access$100(Lcom/txdriver/ui/adapter/StoreItemsAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder$1;->this$1:Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;

    invoke-virtual {v1}, Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/json/StoreItem;

    invoke-interface {p1, v0}, Lcom/txdriver/ui/adapter/StoreItemsAdapter$OnStoreItemClickListener;->onStoreItemClick(Lcom/txdriver/json/StoreItem;)V

    :cond_0
    return-void
.end method
