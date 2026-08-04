.class public Lcom/txdriver/ui/adapter/DriverRatingAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DriverRatingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/adapter/DriverRatingAdapter$ItemViewHolder;,
        Lcom/txdriver/ui/adapter/DriverRatingAdapter$HeaderViewHolder;
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
.field private final callSign:Ljava/lang/String;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/ui/listItemTemplate/ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/txdriver/App;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/App;",
            "Ljava/util/List<",
            "Lcom/txdriver/ui/listItemTemplate/ListItem;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/txdriver/ui/adapter/DriverRatingAdapter;->list:Ljava/util/List;

    .line 34
    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getLogin()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/adapter/DriverRatingAdapter;->callSign:Ljava/lang/String;

    return-void
.end method

.method private isPositionHeader(I)Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/txdriver/ui/adapter/DriverRatingAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/txdriver/ui/listItemTemplate/Header;

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/txdriver/ui/adapter/DriverRatingAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/txdriver/ui/adapter/DriverRatingAdapter;->isPositionHeader(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 52
    instance-of v0, p1, Lcom/txdriver/ui/adapter/DriverRatingAdapter$HeaderViewHolder;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/txdriver/ui/adapter/DriverRatingAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/ui/listItemTemplate/Header;

    .line 54
    check-cast p1, Lcom/txdriver/ui/adapter/DriverRatingAdapter$HeaderViewHolder;

    .line 55
    iget-object p1, p1, Lcom/txdriver/ui/adapter/DriverRatingAdapter$HeaderViewHolder;->headerTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/txdriver/ui/listItemTemplate/Header;->getHeader()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 56
    :cond_0
    instance-of v0, p1, Lcom/txdriver/ui/adapter/DriverRatingAdapter$ItemViewHolder;

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/txdriver/ui/adapter/DriverRatingAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/json/DriverRating;

    .line 58
    check-cast p1, Lcom/txdriver/ui/adapter/DriverRatingAdapter$ItemViewHolder;

    .line 59
    iget-object v1, p1, Lcom/txdriver/ui/adapter/DriverRatingAdapter$ItemViewHolder;->positionTextView:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const-string p2, "%d"

    invoke-static {v2, p2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, p1, Lcom/txdriver/ui/adapter/DriverRatingAdapter$ItemViewHolder;->callSignTextView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/txdriver/json/DriverRating;->callSign:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v1, p1, Lcom/txdriver/ui/adapter/DriverRatingAdapter$ItemViewHolder;->valueTextView:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v0, Lcom/txdriver/json/DriverRating;->rating:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p2, p1, Lcom/txdriver/ui/adapter/DriverRatingAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    iget-object v0, v0, Lcom/txdriver/json/DriverRating;->callSign:Ljava/lang/String;

    iget-object v1, p0, Lcom/txdriver/ui/adapter/DriverRatingAdapter;->callSign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "#81C784"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    :cond_1
    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 63
    iget-object p1, p1, Lcom/txdriver/ui/adapter/DriverRatingAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const p2, 0x7f0c0064

    .line 42
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 43
    new-instance p2, Lcom/txdriver/ui/adapter/DriverRatingAdapter$HeaderViewHolder;

    invoke-direct {p2, p1}, Lcom/txdriver/ui/adapter/DriverRatingAdapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const p2, 0x7f0c006b

    .line 45
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    new-instance p2, Lcom/txdriver/ui/adapter/DriverRatingAdapter$ItemViewHolder;

    invoke-direct {p2, p1}, Lcom/txdriver/ui/adapter/DriverRatingAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

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

    .line 106
    iget-object v0, p0, Lcom/txdriver/ui/adapter/DriverRatingAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    iget-object v0, p0, Lcom/txdriver/ui/adapter/DriverRatingAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    invoke-virtual {p0}, Lcom/txdriver/ui/adapter/DriverRatingAdapter;->notifyDataSetChanged()V

    return-void
.end method
