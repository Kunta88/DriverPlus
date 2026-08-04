.class Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "OrdersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/adapter/OrdersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrderViewHolder"
.end annotation


# instance fields
.field addressTextView:Landroid/widget/TextView;

.field carTypeTextView:Landroid/widget/TextView;

.field destinationTextView:Landroid/widget/TextView;

.field discountTextView:Landroid/widget/TextView;

.field distanceTextView:Landroid/widget/TextView;

.field markupTextView:Landroid/widget/TextView;

.field orderTypeTextView:Landroid/widget/TextView;

.field parkingTextView:Landroid/widget/TextView;

.field priceTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/txdriver/ui/adapter/OrdersAdapter;

.field timeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/txdriver/ui/adapter/OrdersAdapter;Landroid/view/View;)V
    .locals 1

    .line 196
    iput-object p1, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->this$0:Lcom/txdriver/ui/adapter/OrdersAdapter;

    .line 197
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901fa

    .line 198
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->addressTextView:Landroid/widget/TextView;

    const v0, 0x7f0901ff

    .line 199
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->destinationTextView:Landroid/widget/TextView;

    const v0, 0x7f0901fd

    .line 200
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->priceTextView:Landroid/widget/TextView;

    const v0, 0x7f090203

    .line 201
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->distanceTextView:Landroid/widget/TextView;

    const v0, 0x7f09020d

    .line 202
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->timeTextView:Landroid/widget/TextView;

    const v0, 0x7f090209

    .line 203
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->parkingTextView:Landroid/widget/TextView;

    const v0, 0x7f0901fb

    .line 204
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->carTypeTextView:Landroid/widget/TextView;

    const v0, 0x7f090208

    .line 205
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->orderTypeTextView:Landroid/widget/TextView;

    const v0, 0x7f090206

    .line 206
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->markupTextView:Landroid/widget/TextView;

    const v0, 0x7f090202

    .line 207
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->discountTextView:Landroid/widget/TextView;

    .line 208
    new-instance v0, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder$1;-><init>(Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;Lcom/txdriver/ui/adapter/OrdersAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
