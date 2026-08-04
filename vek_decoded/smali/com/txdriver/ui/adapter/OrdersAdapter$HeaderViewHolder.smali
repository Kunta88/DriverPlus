.class Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "OrdersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/adapter/OrdersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field dateTextView:Landroid/widget/TextView;

.field sortTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/txdriver/ui/adapter/OrdersAdapter;


# direct methods
.method public constructor <init>(Lcom/txdriver/ui/adapter/OrdersAdapter;Landroid/view/View;)V
    .locals 1

    .line 170
    iput-object p1, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder;->this$0:Lcom/txdriver/ui/adapter/OrdersAdapter;

    .line 171
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090210

    .line 172
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder;->dateTextView:Landroid/widget/TextView;

    const v0, 0x7f090211

    .line 173
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder;->sortTextView:Landroid/widget/TextView;

    .line 174
    new-instance v0, Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder$1;-><init>(Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder;Lcom/txdriver/ui/adapter/OrdersAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
