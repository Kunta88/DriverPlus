.class Lcom/txdriver/ui/adapter/StoreArchiveAdapter$StoreArchiveViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StoreArchiveAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/adapter/StoreArchiveAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StoreArchiveViewHolder"
.end annotation


# instance fields
.field storeItemDescriptionTextView:Landroid/widget/TextView;

.field storeItemNameTextView:Landroid/widget/TextView;

.field storeItemPriceTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 91
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0902c4

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/StoreArchiveAdapter$StoreArchiveViewHolder;->storeItemNameTextView:Landroid/widget/TextView;

    const v0, 0x7f0902c3

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/StoreArchiveAdapter$StoreArchiveViewHolder;->storeItemDescriptionTextView:Landroid/widget/TextView;

    const v0, 0x7f0902c5

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/adapter/StoreArchiveAdapter$StoreArchiveViewHolder;->storeItemPriceTextView:Landroid/widget/TextView;

    return-void
.end method
