.class public Lcom/commonsware/cwac/adapter/AdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "AdapterWrapper.java"


# instance fields
.field private wrapped:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/commonsware/cwac/adapter/AdapterWrapper;->wrapped:Landroid/widget/ListAdapter;

    .line 37
    iput-object p1, p0, Lcom/commonsware/cwac/adapter/AdapterWrapper;->wrapped:Landroid/widget/ListAdapter;

    .line 39
    new-instance v0, Lcom/commonsware/cwac/adapter/AdapterWrapper$1;

    invoke-direct {v0, p0}, Lcom/commonsware/cwac/adapter/AdapterWrapper$1;-><init>(Lcom/commonsware/cwac/adapter/AdapterWrapper;)V

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/commonsware/cwac/adapter/AdapterWrapper;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/commonsware/cwac/adapter/AdapterWrapper;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/commonsware/cwac/adapter/AdapterWrapper;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/commonsware/cwac/adapter/AdapterWrapper;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/commonsware/cwac/adapter/AdapterWrapper;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/commonsware/cwac/adapter/AdapterWrapper;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/commonsware/cwac/adapter/AdapterWrapper;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method protected getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/commonsware/cwac/adapter/AdapterWrapper;->wrapped:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/commonsware/cwac/adapter/AdapterWrapper;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method
