.class Lcom/txdriver/ui/adapter/FinOperationAdapter$FinOperationItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FinOperationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/adapter/FinOperationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinOperationItemViewHolder"
.end annotation


# instance fields
.field balanceTextView:Landroid/widget/TextView;

.field commentTextView:Landroid/widget/TextView;

.field sumTextView:Landroid/widget/TextView;

.field timeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 103
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09010c

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/FinOperationAdapter$FinOperationItemViewHolder;->timeTextView:Landroid/widget/TextView;

    const v0, 0x7f09010b

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/FinOperationAdapter$FinOperationItemViewHolder;->sumTextView:Landroid/widget/TextView;

    const v0, 0x7f090109

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/FinOperationAdapter$FinOperationItemViewHolder;->balanceTextView:Landroid/widget/TextView;

    const v0, 0x7f09010a

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/adapter/FinOperationAdapter$FinOperationItemViewHolder;->commentTextView:Landroid/widget/TextView;

    return-void
.end method
