.class Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VirtualCompanyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VirtualCompanyViewHolder"
.end annotation


# instance fields
.field private companyImageView:Landroid/widget/ImageView;

.field private companyName:Landroid/widget/TextView;

.field private selectionState:Landroid/widget/RadioButton;

.field final synthetic this$0:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;


# direct methods
.method public constructor <init>(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;Landroid/view/View;)V
    .locals 1

    .line 55
    iput-object p1, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;->this$0:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;

    .line 56
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900a1

    .line 57
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;->companyImageView:Landroid/widget/ImageView;

    const v0, 0x7f0900a2

    .line 58
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;->companyName:Landroid/widget/TextView;

    const v0, 0x7f0900a3

    .line 59
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;->selectionState:Landroid/widget/RadioButton;

    .line 61
    new-instance v0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder$1;-><init>(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;->companyImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;->companyName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;)Landroid/widget/RadioButton;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;->selectionState:Landroid/widget/RadioButton;

    return-object p0
.end method
