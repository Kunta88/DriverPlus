.class public Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VirtualCompanyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private companies:[Lcom/txdriver/json/CompanyInfo;

.field private companyId:I

.field private companyLogo:Ljava/lang/String;

.field private lastSelectedPosition:I


# direct methods
.method public constructor <init>([Lcom/txdriver/json/CompanyInfo;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->lastSelectedPosition:I

    .line 24
    iput-object p1, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->companies:[Lcom/txdriver/json/CompanyInfo;

    return-void
.end method

.method static synthetic access$300(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->lastSelectedPosition:I

    return p0
.end method

.method static synthetic access$302(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->lastSelectedPosition:I

    return p1
.end method

.method static synthetic access$402(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->companyId:I

    return p1
.end method

.method static synthetic access$500(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;)[Lcom/txdriver/json/CompanyInfo;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->companies:[Lcom/txdriver/json/CompanyInfo;

    return-object p0
.end method

.method static synthetic access$602(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->companyLogo:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getCompanyId()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->companyId:I

    return v0
.end method

.method public getCompanyLogo()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->companyLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->companies:[Lcom/txdriver/json/CompanyInfo;

    array-length v0, v0

    return v0
.end method

.method public getLastSelectedPosition()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->lastSelectedPosition:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->onBindViewHolder(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;I)V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->companies:[Lcom/txdriver/json/CompanyInfo;

    aget-object v0, v0, p2

    .line 37
    invoke-static {p1}, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;->access$000(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v0}, Lcom/txdriver/json/CompanyInfo;->getCompanyLogo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    const/16 v2, 0x12c

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerInside()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-static {p1}, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;->access$000(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 39
    invoke-static {p1}, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;->access$100(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/txdriver/json/CompanyInfo;->getCompanyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-static {p1}, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;->access$200(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;)Landroid/widget/RadioButton;

    move-result-object p1

    iget v0, p0, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->lastSelectedPosition:I

    if-ne v0, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;
    .locals 2

    .line 30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c006a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 31
    new-instance p2, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter$VirtualCompanyViewHolder;-><init>(Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;Landroid/view/View;)V

    return-object p2
.end method
