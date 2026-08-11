.class public Lcom/txdriver/ui/adapter/ArchiveAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ArchiveAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/adapter/ArchiveAdapter$OnArchiveOrderClickListener;,
        Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;,
        Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveHeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_CONTENT_ITEM:I = 0x1

.field private static final TYPE_HEADER_ITEM:I


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/ui/listItemTemplate/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private onArchiveOrderClickListener:Lcom/txdriver/ui/adapter/ArchiveAdapter$OnArchiveOrderClickListener;

.field private final timeFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/ui/listItemTemplate/ListItem;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/adapter/ArchiveAdapter;->timeFormat:Ljava/text/DateFormat;

    .line 31
    iput-object p1, p0, Lcom/txdriver/ui/adapter/ArchiveAdapter;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/adapter/ArchiveAdapter;)Lcom/txdriver/ui/adapter/ArchiveAdapter$OnArchiveOrderClickListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/txdriver/ui/adapter/ArchiveAdapter;->onArchiveOrderClickListener:Lcom/txdriver/ui/adapter/ArchiveAdapter$OnArchiveOrderClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/adapter/ArchiveAdapter;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/txdriver/ui/adapter/ArchiveAdapter;->list:Ljava/util/List;

    return-object p0
.end method

.method private isPositionHeader(I)Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/txdriver/ui/adapter/ArchiveAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/txdriver/ui/listItemTemplate/Header;

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/txdriver/ui/adapter/ArchiveAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/txdriver/ui/adapter/ArchiveAdapter;->isPositionHeader(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 49
    instance-of v0, p1, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveHeaderViewHolder;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/txdriver/ui/adapter/ArchiveAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/ui/listItemTemplate/Header;

    .line 51
    check-cast p1, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveHeaderViewHolder;

    .line 52
    iget-object p1, p1, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveHeaderViewHolder;->headerTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/txdriver/ui/listItemTemplate/Header;->getHeader()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 53
    :cond_0
    instance-of v0, p1, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/txdriver/ui/adapter/ArchiveAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/json/ArchiveOrder;

    .line 55
    check-cast p1, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;

    .line 56
    iget-object v0, p1, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;->addressTextView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/txdriver/json/ArchiveOrder;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p1, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;->timeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/adapter/ArchiveAdapter;->timeFormat:Ljava/text/DateFormat;

    iget-object v2, p2, Lcom/txdriver/json/ArchiveOrder;->date:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p1, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;->statusTextView:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/txdriver/json/ArchiveOrder;->state:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p1, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;->statusTextView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const p2, 0x7f0c0064

    .line 39
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    new-instance p2, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveHeaderViewHolder;

    invoke-direct {p2, p1}, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveHeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const p2, 0x7f0c0035

    .line 42
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 43
    new-instance p2, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/txdriver/ui/adapter/ArchiveAdapter$ArchiveOrderViewHolder;-><init>(Lcom/txdriver/ui/adapter/ArchiveAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnArchiveOrderClickListener(Lcom/txdriver/ui/adapter/ArchiveAdapter$OnArchiveOrderClickListener;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/txdriver/ui/adapter/ArchiveAdapter;->onArchiveOrderClickListener:Lcom/txdriver/ui/adapter/ArchiveAdapter$OnArchiveOrderClickListener;

    return-void
.end method
