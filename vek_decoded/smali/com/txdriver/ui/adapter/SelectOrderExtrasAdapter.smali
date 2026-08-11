.class public Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SelectOrderExtrasAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private adapterDisplayType:I

.field private app:Lcom/txdriver/App;

.field private extras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/GlobalOrderExtra;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/txdriver/App;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/App;",
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/GlobalOrderExtra;",
            ">;I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter;->app:Lcom/txdriver/App;

    .line 25
    iput-object p2, p0, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter;->extras:Ljava/util/List;

    .line 26
    iput p3, p0, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter;->adapterDisplayType:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter;->extras:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter;->onBindViewHolder(Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;I)V
    .locals 6

    .line 38
    iget-object v0, p0, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter;->extras:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/socket/data/GlobalOrderExtra;

    .line 39
    invoke-static {p1}, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;->access$000(Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;)Landroid/widget/CheckedTextView;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p2, Lcom/txdriver/socket/data/GlobalOrderExtra;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p2, Lcom/txdriver/socket/data/GlobalOrderExtra;->price:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getCurrency()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget v2, p2, Lcom/txdriver/socket/data/GlobalOrderExtra;->percent:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const-string v2, "%s: %s %s, %s%%"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget v0, p0, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter;->adapterDisplayType:I

    if-ne v0, v4, :cond_0

    iget-boolean v0, p2, Lcom/txdriver/socket/data/GlobalOrderExtra;->isSelected:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p1}, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;->access$000(Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 42
    invoke-static {p1}, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;->access$000(Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 43
    invoke-static {p1}, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;->access$000(Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setClickable(Z)V

    .line 44
    invoke-static {p1}, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;->access$000(Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;)Landroid/widget/CheckedTextView;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$1;-><init>(Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter;Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;->access$000(Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;)Landroid/widget/CheckedTextView;

    move-result-object v0

    iget-boolean v1, p2, Lcom/txdriver/socket/data/GlobalOrderExtra;->isSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 53
    :goto_0
    iget-object v0, p1, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$2;-><init>(Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter;Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;Lcom/txdriver/socket/data/GlobalOrderExtra;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;
    .locals 2

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c006e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 33
    new-instance p2, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;

    invoke-direct {p2, p1}, Lcom/txdriver/ui/adapter/SelectOrderExtrasAdapter$SelectOrderExtrasViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
