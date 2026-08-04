.class Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ArchiveAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/adapter/ArchiveAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArchiveOrderViewHolder"
.end annotation


# instance fields
.field addressTextView:Landroid/widget/TextView;

.field statusTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/txdriver/ui/adapter/ArchiveAdapter;

.field timeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/txdriver/ui/adapter/ArchiveAdapter;Landroid/view/View;)V
    .locals 1

    .line 91
    iput-object p1, p0, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;->this$0:Lcom/txdriver/ui/adapter/ArchiveAdapter;

    .line 92
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901fa

    .line 93
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;->addressTextView:Landroid/widget/TextView;

    const v0, 0x7f09020d

    .line 94
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;->timeTextView:Landroid/widget/TextView;

    const v0, 0x7f0901fd

    .line 95
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;->statusTextView:Landroid/widget/TextView;

    .line 96
    new-instance v0, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder$1;-><init>(Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;Lcom/txdriver/ui/adapter/ArchiveAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
