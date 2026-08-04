.class public Lcom/txdriver/ui/adapter/StoreItemsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StoreItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/adapter/StoreItemsAdapter$OnStoreItemClickListener;,
        Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private app:Lcom/txdriver/App;

.field private onStoreItemClickListener:Lcom/txdriver/ui/adapter/StoreItemsAdapter$OnStoreItemClickListener;

.field private storeItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/json/StoreItem;",
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
            "Lcom/txdriver/json/StoreItem;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/txdriver/ui/adapter/StoreItemsAdapter;->app:Lcom/txdriver/App;

    .line 31
    iput-object p2, p0, Lcom/txdriver/ui/adapter/StoreItemsAdapter;->storeItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/adapter/StoreItemsAdapter;)Lcom/txdriver/ui/adapter/StoreItemsAdapter$OnStoreItemClickListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/txdriver/ui/adapter/StoreItemsAdapter;->onStoreItemClickListener:Lcom/txdriver/ui/adapter/StoreItemsAdapter$OnStoreItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/adapter/StoreItemsAdapter;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/txdriver/ui/adapter/StoreItemsAdapter;->storeItems:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/txdriver/ui/adapter/StoreItemsAdapter;->storeItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/adapter/StoreItemsAdapter;->onBindViewHolder(Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;I)V
    .locals 3

    .line 43
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/txdriver/App;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/StoreItemsAdapter;->app:Lcom/txdriver/App;

    .line 44
    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getCurrency()Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/txdriver/ui/adapter/StoreItemsAdapter;->storeItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/json/StoreItem;

    .line 46
    iget-object v1, p1, Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;->storeItemNameTextView:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/txdriver/json/StoreItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p1, Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;->storeItemDescriptionTextView:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/txdriver/json/StoreItem;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p1, p1, Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;->storeItemPriceTextView:Landroid/widget/TextView;

    iget-wide v1, p2, Lcom/txdriver/json/StoreItem;->price:D

    invoke-static {v1, v2, v0}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/adapter/StoreItemsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;
    .locals 2

    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0073

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 38
    new-instance p2, Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/txdriver/ui/adapter/StoreItemsAdapter$StoreItemsViewHolder;-><init>(Lcom/txdriver/ui/adapter/StoreItemsAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/json/StoreItem;",
            ">;)V"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/txdriver/ui/adapter/StoreItemsAdapter;->storeItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    iget-object v0, p0, Lcom/txdriver/ui/adapter/StoreItemsAdapter;->storeItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    invoke-virtual {p0}, Lcom/txdriver/ui/adapter/StoreItemsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnStoreItemClickListener(Lcom/txdriver/ui/adapter/StoreItemsAdapter$OnStoreItemClickListener;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/txdriver/ui/adapter/StoreItemsAdapter;->onStoreItemClickListener:Lcom/txdriver/ui/adapter/StoreItemsAdapter$OnStoreItemClickListener;

    return-void
.end method
