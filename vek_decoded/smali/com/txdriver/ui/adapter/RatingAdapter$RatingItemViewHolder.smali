.class Lcom/txdriver/ui/adapter/RatingAdapter$RatingItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RatingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/adapter/RatingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RatingItemViewHolder"
.end annotation


# instance fields
.field eventTextView:Landroid/widget/TextView;

.field expire:Landroid/widget/TextView;

.field pointsTextView:Landroid/widget/TextView;

.field timeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 95
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090242

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/RatingAdapter$RatingItemViewHolder;->eventTextView:Landroid/widget/TextView;

    const v0, 0x7f090245

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/RatingAdapter$RatingItemViewHolder;->timeTextView:Landroid/widget/TextView;

    const v0, 0x7f090244

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/RatingAdapter$RatingItemViewHolder;->pointsTextView:Landroid/widget/TextView;

    const v0, 0x7f090243

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/adapter/RatingAdapter$RatingItemViewHolder;->expire:Landroid/widget/TextView;

    return-void
.end method
