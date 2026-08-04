.class public Lcom/txdriver/ui/adapter/RatingAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RatingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/adapter/RatingAdapter$RatingItemViewHolder;,
        Lcom/txdriver/ui/adapter/RatingAdapter$RatingHeaderViewHolder;
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
.field private final dateTimeFormat:Ljava/text/DateFormat;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/ui/listItemTemplate/ListItem;",
            ">;"
        }
    .end annotation
.end field

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

    iput-object v0, p0, Lcom/txdriver/ui/adapter/RatingAdapter;->timeFormat:Ljava/text/DateFormat;

    .line 27
    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getDateTimeFormat()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/adapter/RatingAdapter;->dateTimeFormat:Ljava/text/DateFormat;

    .line 31
    iput-object p1, p0, Lcom/txdriver/ui/adapter/RatingAdapter;->list:Ljava/util/List;

    return-void
.end method

.method private isPositionHeader(I)Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/txdriver/ui/adapter/RatingAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/txdriver/ui/listItemTemplate/Header;

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/txdriver/ui/adapter/RatingAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/txdriver/ui/adapter/RatingAdapter;->isPositionHeader(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 49
    instance-of v0, p1, Lcom/txdriver/ui/adapter/RatingAdapter$RatingHeaderViewHolder;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/txdriver/ui/adapter/RatingAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/ui/listItemTemplate/Header;

    .line 51
    check-cast p1, Lcom/txdriver/ui/adapter/RatingAdapter$RatingHeaderViewHolder;

    .line 52
    iget-object p1, p1, Lcom/txdriver/ui/adapter/RatingAdapter$RatingHeaderViewHolder;->headerTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/txdriver/ui/listItemTemplate/Header;->getHeader()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 53
    :cond_0
    instance-of v0, p1, Lcom/txdriver/ui/adapter/RatingAdapter$RatingItemViewHolder;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/txdriver/ui/adapter/RatingAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/json/Rating;

    .line 55
    check-cast p1, Lcom/txdriver/ui/adapter/RatingAdapter$RatingItemViewHolder;

    .line 56
    iget-object v0, p1, Lcom/txdriver/ui/adapter/RatingAdapter$RatingItemViewHolder;->eventTextView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/txdriver/json/Rating;->rule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p1, Lcom/txdriver/ui/adapter/RatingAdapter$RatingItemViewHolder;->timeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/adapter/RatingAdapter;->timeFormat:Ljava/text/DateFormat;

    iget-object v2, p2, Lcom/txdriver/json/Rating;->chargeDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p1, Lcom/txdriver/ui/adapter/RatingAdapter$RatingItemViewHolder;->pointsTextView:Landroid/widget/TextView;

    iget v1, p2, Lcom/txdriver/json/Rating;->value:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p1, Lcom/txdriver/ui/adapter/RatingAdapter$RatingItemViewHolder;->expire:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/txdriver/ui/adapter/RatingAdapter;->dateTimeFormat:Ljava/text/DateFormat;

    iget-object p2, p2, Lcom/txdriver/json/Rating;->expireDate:Ljava/util/Date;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
    new-instance p2, Lcom/txdriver/ui/adapter/RatingAdapter$RatingHeaderViewHolder;

    invoke-direct {p2, p1}, Lcom/txdriver/ui/adapter/RatingAdapter$RatingHeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const p2, 0x7f0c0072

    .line 42
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 43
    new-instance p2, Lcom/txdriver/ui/adapter/RatingAdapter$RatingItemViewHolder;

    invoke-direct {p2, p1}, Lcom/txdriver/ui/adapter/RatingAdapter$RatingItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/ui/listItemTemplate/ListItem;",
            ">;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/txdriver/ui/adapter/RatingAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    iget-object v0, p0, Lcom/txdriver/ui/adapter/RatingAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    invoke-virtual {p0}, Lcom/txdriver/ui/adapter/RatingAdapter;->notifyDataSetChanged()V

    return-void
.end method
