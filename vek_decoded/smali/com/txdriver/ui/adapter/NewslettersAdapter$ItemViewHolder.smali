.class Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NewslettersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/adapter/NewslettersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemViewHolder"
.end annotation


# instance fields
.field textTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/txdriver/ui/adapter/NewslettersAdapter;

.field titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/txdriver/ui/adapter/NewslettersAdapter;Landroid/view/View;)V
    .locals 1

    .line 90
    iput-object p1, p0, Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;->this$0:Lcom/txdriver/ui/adapter/NewslettersAdapter;

    .line 91
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x1020014

    .line 92
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;->titleTextView:Landroid/widget/TextView;

    const v0, 0x1020015

    .line 93
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;->textTextView:Landroid/widget/TextView;

    .line 94
    new-instance v0, Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder$1;-><init>(Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;Lcom/txdriver/ui/adapter/NewslettersAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
