.class Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StoreItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/adapter/StoreItemsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoreItemsViewHolder"
.end annotation


# instance fields
.field storeItemDescriptionTextView:Landroid/widget/TextView;

.field storeItemNameTextView:Landroid/widget/TextView;

.field storeItemPriceTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/txdriver/ui/adapter/StoreItemsAdapter;


# direct methods
.method public constructor <init>(Lcom/txdriver/ui/adapter/StoreItemsAdapter;Landroid/view/View;)V
    .locals 1

    .line 62
    iput-object p1, p0, Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;->this$0:Lcom/txdriver/ui/adapter/StoreItemsAdapter;

    .line 63
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0902c4

    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;->storeItemNameTextView:Landroid/widget/TextView;

    const v0, 0x7f0902c3

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;->storeItemDescriptionTextView:Landroid/widget/TextView;

    const v0, 0x7f0902c5

    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;->storeItemPriceTextView:Landroid/widget/TextView;

    .line 67
    new-instance v0, Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder$1;-><init>(Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;Lcom/txdriver/ui/adapter/StoreItemsAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
