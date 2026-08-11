.class public Lcom/txdriver/ui/adapter/FinOperationAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FinOperationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/adapter/FinOperationAdapter$FinOperationItemViewHolder;,
        Lcom/txdriver/ui/adapter/FinOperationAdapter$FinOperationHeaderViewHolder;
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
.field private app:Lcom/txdriver/App;

.field private final currency:Ljava/lang/String;

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
.method public constructor <init>(Lcom/txdriver/App;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/App;",
            "Ljava/util/List<",
            "Lcom/txdriver/ui/listItemTemplate/ListItem;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/adapter/FinOperationAdapter;->timeFormat:Ljava/text/DateFormat;

    .line 36
    iput-object p2, p0, Lcom/txdriver/ui/adapter/FinOperationAdapter;->list:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/txdriver/ui/adapter/FinOperationAdapter;->app:Lcom/txdriver/App;

    .line 38
    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getCurrency()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/adapter/FinOperationAdapter;->currency:Ljava/lang/String;

    return-void
.end method

.method private isPositionHeader(I)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/txdriver/ui/adapter/FinOperationAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/txdriver/ui/listItemTemplate/Header;

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/txdriver/ui/adapter/FinOperationAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/txdriver/ui/adapter/FinOperationAdapter;->isPositionHeader(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 56
    instance-of v0, p1, Lcom/txdriver/ui/adapter/FinOperationAdapter$FinOperationHeaderViewHolder;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/txdriver/ui/adapter/FinOperationAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/ui/listItemTemplate/Header;

    .line 58
    check-cast p1, Lcom/txdriver/ui/adapter/FinOperationAdapter$FinOperationHeaderViewHolder;

    .line 59
    iget-object p1, p1, Lcom/txdriver/ui/adapter/FinOperationAdapter$FinOperationHeaderViewHolder;->headerTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/txdriver/ui/listItemTemplate/Header;->getHeader()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 60
    :cond_0
    instance-of v0, p1, Lcom/txdriver/ui/adapter/FinOperationAdapter$FinOperationItemViewHolder;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/txdriver/ui/adapter/FinOperationAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/json/FinOperation;

    .line 62
    check-cast p1, Lcom/txdriver/ui/adapter/FinOperationAdapter$FinOperationItemViewHolder;

    .line 63
    iget-object v0, p1, Lcom/txdriver/ui/adapter/FinOperationAdapter$FinOperationItemViewHolder;->sumTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/txdriver/json/FinOperation;->getSum()F

    move-result v1

    float-to-double v1, v1

    iget-object v3, p0, Lcom/txdriver/ui/adapter/FinOperationAdapter;->currency:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p1, Lcom/txdriver/ui/adapter/FinOperationAdapter$FinOperationItemViewHolder;->timeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/adapter/FinOperationAdapter;->timeFormat:Ljava/text/DateFormat;

    iget-object v2, p2, Lcom/txdriver/json/FinOperation;->operationDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p1, Lcom/txdriver/ui/adapter/FinOperationAdapter$FinOperationItemViewHolder;->commentTextView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/txdriver/json/FinOperation;->comment:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v0, p1, Lcom/txdriver/ui/adapter/FinOperationAdapter$FinOperationItemViewHolder;->commentTextView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/txdriver/json/FinOperation;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object p1, p1, Lcom/txdriver/ui/adapter/FinOperationAdapter$FinOperationItemViewHolder;->balanceTextView:Landroid/widget/TextView;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/txdriver/ui/adapter/FinOperationAdapter;->app:Lcom/txdriver/App;

    const v4, 0x7f100047

    invoke-virtual {v3, v4}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/txdriver/json/FinOperation;->getBalance()F

    move-result p2

    float-to-double v3, p2

    invoke-static {v3, v4}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    const-string p2, "%s: %s"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 44
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const p2, 0x7f0c0064

    .line 46
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 47
    new-instance p2, Lcom/txdriver/ui/adapter/FinOperationAdapter$FinOperationHeaderViewHolder;

    invoke-direct {p2, p1}, Lcom/txdriver/ui/adapter/FinOperationAdapter$FinOperationHeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const p2, 0x7f0c006c

    .line 49
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    new-instance p2, Lcom/txdriver/ui/adapter/FinOperationAdapter$FinOperationItemViewHolder;

    invoke-direct {p2, p1}, Lcom/txdriver/ui/adapter/FinOperationAdapter$FinOperationItemViewHolder;-><init>(Landroid/view/View;)V

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

    .line 112
    iget-object v0, p0, Lcom/txdriver/ui/adapter/FinOperationAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    iget-object v0, p0, Lcom/txdriver/ui/adapter/FinOperationAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    invoke-virtual {p0}, Lcom/txdriver/ui/adapter/FinOperationAdapter;->notifyDataSetChanged()V

    return-void
.end method
