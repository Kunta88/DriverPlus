.class public Lcom/txdriver/ui/adapter/NewslettersAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NewslettersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/adapter/NewslettersAdapter$OnNewsLetterClickListener;,
        Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;,
        Lcom/txdriver/ui/adapter/NewslettersAdapter$HeaderViewHolder;
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

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/ui/listItemTemplate/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private newsLetterClickListener:Lcom/txdriver/ui/adapter/NewslettersAdapter$OnNewsLetterClickListener;


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

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/txdriver/ui/adapter/NewslettersAdapter;->app:Lcom/txdriver/App;

    .line 30
    iput-object p2, p0, Lcom/txdriver/ui/adapter/NewslettersAdapter;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/adapter/NewslettersAdapter;)Lcom/txdriver/ui/adapter/NewslettersAdapter$OnNewsLetterClickListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/txdriver/ui/adapter/NewslettersAdapter;->newsLetterClickListener:Lcom/txdriver/ui/adapter/NewslettersAdapter$OnNewsLetterClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/adapter/NewslettersAdapter;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/txdriver/ui/adapter/NewslettersAdapter;->list:Ljava/util/List;

    return-object p0
.end method

.method private isPositionHeader(I)Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/txdriver/ui/adapter/NewslettersAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/txdriver/ui/listItemTemplate/Header;

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/txdriver/ui/adapter/NewslettersAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/txdriver/ui/adapter/NewslettersAdapter;->isPositionHeader(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 48
    instance-of v0, p1, Lcom/txdriver/ui/adapter/NewslettersAdapter$HeaderViewHolder;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/txdriver/ui/adapter/NewslettersAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/ui/listItemTemplate/Header;

    .line 50
    check-cast p1, Lcom/txdriver/ui/adapter/NewslettersAdapter$HeaderViewHolder;

    .line 51
    iget-object p1, p1, Lcom/txdriver/ui/adapter/NewslettersAdapter$HeaderViewHolder;->headerTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/txdriver/ui/listItemTemplate/Header;->getHeader()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 52
    :cond_0
    instance-of v0, p1, Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;

    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/txdriver/ui/adapter/NewslettersAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/json/Newsletter;

    .line 54
    check-cast p1, Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;

    .line 55
    iget-object v0, p1, Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/txdriver/json/Newsletter;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/txdriver/ui/adapter/NewslettersAdapter;->app:Lcom/txdriver/App;

    const v2, 0x7f100167

    invoke-virtual {v1, v2}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p2, Lcom/txdriver/json/Newsletter;->title:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p1, Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;->textTextView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/txdriver/json/Newsletter;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p1, Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;->textTextView:Landroid/widget/TextView;

    iget-boolean p2, p2, Lcom/txdriver/json/Newsletter;->readRequired:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const p2, 0x7f080099

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, v0, v0, p2, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const p2, 0x7f0c0064

    .line 38
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 39
    new-instance p2, Lcom/txdriver/ui/adapter/NewslettersAdapter$HeaderViewHolder;

    invoke-direct {p2, p1}, Lcom/txdriver/ui/adapter/NewslettersAdapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const p2, 0x7f0c0067

    .line 41
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance p2, Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/txdriver/ui/adapter/NewslettersAdapter$ItemViewHolder;-><init>(Lcom/txdriver/ui/adapter/NewslettersAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnNewsLetterClickListener(Lcom/txdriver/ui/adapter/NewslettersAdapter$OnNewsLetterClickListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/txdriver/ui/adapter/NewslettersAdapter;->newsLetterClickListener:Lcom/txdriver/ui/adapter/NewslettersAdapter$OnNewsLetterClickListener;

    return-void
.end method
