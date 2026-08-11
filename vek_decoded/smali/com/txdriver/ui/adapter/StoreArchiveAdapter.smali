.class public Lcom/txdriver/ui/adapter/StoreArchiveAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StoreArchiveAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/adapter/StoreArchiveAdapter$StoreArchiveViewHolder;,
        Lcom/txdriver/ui/adapter/StoreArchiveAdapter$HeaderViewHolder;
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
.field private listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/ui/listItemTemplate/ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/ui/listItemTemplate/ListItem;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/txdriver/ui/adapter/StoreArchiveAdapter;->listItems:Ljava/util/List;

    return-void
.end method

.method private isPositionHeader(I)Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/txdriver/ui/adapter/StoreArchiveAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/txdriver/ui/listItemTemplate/Header;

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/txdriver/ui/adapter/StoreArchiveAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/txdriver/ui/adapter/StoreArchiveAdapter;->isPositionHeader(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 47
    instance-of v0, p1, Lcom/txdriver/ui/adapter/StoreArchiveAdapter$HeaderViewHolder;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/txdriver/ui/adapter/StoreArchiveAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/ui/listItemTemplate/Header;

    .line 49
    check-cast p1, Lcom/txdriver/ui/adapter/StoreArchiveAdapter$HeaderViewHolder;

    .line 50
    iget-object p1, p1, Lcom/txdriver/ui/adapter/StoreArchiveAdapter$HeaderViewHolder;->headerTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/txdriver/ui/listItemTemplate/Header;->getHeader()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 51
    :cond_0
    instance-of v0, p1, Lcom/txdriver/ui/adapter/StoreArchiveAdapter$StoreArchiveViewHolder;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/txdriver/ui/adapter/StoreArchiveAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/json/StoreItem;

    .line 53
    check-cast p1, Lcom/txdriver/ui/adapter/StoreArchiveAdapter$StoreArchiveViewHolder;

    .line 54
    iget-object v0, p1, Lcom/txdriver/ui/adapter/StoreArchiveAdapter$StoreArchiveViewHolder;->storeItemNameTextView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/txdriver/json/StoreItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p1, Lcom/txdriver/ui/adapter/StoreArchiveAdapter$StoreArchiveViewHolder;->storeItemDescriptionTextView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/txdriver/json/StoreItem;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object p1, p1, Lcom/txdriver/ui/adapter/StoreArchiveAdapter$StoreArchiveViewHolder;->storeItemPriceTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getDateTimeFormat()Ljava/text/DateFormat;

    move-result-object v0

    iget-object p2, p2, Lcom/txdriver/json/StoreItem;->operationDatetime:Ljava/util/Date;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const p2, 0x7f0c0064

    .line 37
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 38
    new-instance p2, Lcom/txdriver/ui/adapter/StoreArchiveAdapter$HeaderViewHolder;

    invoke-direct {p2, p1}, Lcom/txdriver/ui/adapter/StoreArchiveAdapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const p2, 0x7f0c0073

    .line 40
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 41
    new-instance p2, Lcom/txdriver/ui/adapter/StoreArchiveAdapter$StoreArchiveViewHolder;

    invoke-direct {p2, p1}, Lcom/txdriver/ui/adapter/StoreArchiveAdapter$StoreArchiveViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
