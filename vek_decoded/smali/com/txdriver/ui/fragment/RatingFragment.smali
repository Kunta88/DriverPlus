.class public Lcom/txdriver/ui/fragment/RatingFragment;
.super Lcom/txdriver/ui/fragment/BaseFragment;
.source "RatingFragment.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/ui/fragment/BaseFragment;",
        "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
        "Lcom/txdriver/json/Response<",
        "Lcom/txdriver/json/Rating;",
        ">;>;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/txdriver/ui/adapter/RatingAdapter;

.field private dataPortion:I

.field private final dateFormat:Ljava/text/DateFormat;

.field private emptyTextView:Landroid/widget/TextView;

.field private lastVisibleItem:I

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/ui/listItemTemplate/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private loading:Z

.field private offset:I

.field private progressBar:Landroid/widget/ProgressBar;

.field private request:Lcom/txdriver/http/request/RatingRequest;

.field private totalMayLoadItemsCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/BaseFragment;-><init>()V

    .line 38
    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->dateFormat:Ljava/text/DateFormat;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->listItems:Ljava/util/List;

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->loading:Z

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/RatingFragment;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->lastVisibleItem:I

    return p0
.end method

.method static synthetic access$002(Lcom/txdriver/ui/fragment/RatingFragment;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/txdriver/ui/fragment/RatingFragment;->lastVisibleItem:I

    return p1
.end method

.method static synthetic access$100(Lcom/txdriver/ui/fragment/RatingFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/txdriver/ui/fragment/RatingFragment;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->loading:Z

    return p0
.end method

.method static synthetic access$202(Lcom/txdriver/ui/fragment/RatingFragment;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/txdriver/ui/fragment/RatingFragment;->loading:Z

    return p1
.end method

.method static synthetic access$300(Lcom/txdriver/ui/fragment/RatingFragment;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->listItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/txdriver/ui/fragment/RatingFragment;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->offset:I

    return p0
.end method

.method static synthetic access$500(Lcom/txdriver/ui/fragment/RatingFragment;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->totalMayLoadItemsCount:I

    return p0
.end method

.method static synthetic access$600(Lcom/txdriver/ui/fragment/RatingFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$700(Lcom/txdriver/ui/fragment/RatingFragment;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/RatingFragment;->requestMoreData(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/txdriver/ui/fragment/RatingFragment;Lcom/txdriver/json/Response;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/RatingFragment;->fetchMoreData(Lcom/txdriver/json/Response;)V

    return-void
.end method

.method private fetchMoreData(Lcom/txdriver/json/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/Rating;",
            ">;)V"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/json/Rating;

    .line 166
    iget-object v0, v0, Lcom/txdriver/json/Rating;->chargeDate:Ljava/util/Date;

    iget-object v1, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/json/Rating;

    iget-object v1, v1, Lcom/txdriver/json/Rating;->chargeDate:Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/txdriver/utils/TimeUtils;->isFirstDateAfter(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->listItems:Ljava/util/List;

    new-instance v1, Lcom/txdriver/ui/listItemTemplate/Header;

    iget-object v4, p0, Lcom/txdriver/ui/fragment/RatingFragment;->dateFormat:Ljava/text/DateFormat;

    iget-object v5, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/txdriver/json/Rating;

    iget-object v5, v5, Lcom/txdriver/json/Rating;->chargeDate:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/txdriver/ui/listItemTemplate/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->listItems:Ljava/util/List;

    iget-object v1, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 170
    :goto_0
    iget-object v1, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 171
    iget-object v1, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/json/Rating;

    iget-object v1, v1, Lcom/txdriver/json/Rating;->chargeDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/json/Rating;

    iget-object v3, v3, Lcom/txdriver/json/Rating;->chargeDate:Ljava/util/Date;

    invoke-static {v1, v3}, Lcom/txdriver/utils/TimeUtils;->isFirstDateAfter(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/txdriver/ui/fragment/RatingFragment;->listItems:Ljava/util/List;

    new-instance v3, Lcom/txdriver/ui/listItemTemplate/Header;

    iget-object v4, p0, Lcom/txdriver/ui/fragment/RatingFragment;->dateFormat:Ljava/text/DateFormat;

    iget-object v5, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/txdriver/json/Rating;

    iget-object v5, v5, Lcom/txdriver/json/Rating;->chargeDate:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/txdriver/ui/listItemTemplate/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/txdriver/ui/fragment/RatingFragment;->listItems:Ljava/util/List;

    iget-object v3, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_2
    iget p1, p0, Lcom/txdriver/ui/fragment/RatingFragment;->offset:I

    iget v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->dataPortion:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/txdriver/ui/fragment/RatingFragment;->offset:I

    .line 177
    iput-boolean v2, p0, Lcom/txdriver/ui/fragment/RatingFragment;->loading:Z

    .line 178
    iget-object p1, p0, Lcom/txdriver/ui/fragment/RatingFragment;->adapter:Lcom/txdriver/ui/adapter/RatingAdapter;

    invoke-virtual {p1}, Lcom/txdriver/ui/adapter/RatingAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private fetchResponse(Lcom/txdriver/json/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/Rating;",
            ">;)V"
        }
    .end annotation

    .line 148
    iget-object v0, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 150
    iget-object v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->listItems:Ljava/util/List;

    new-instance v1, Lcom/txdriver/ui/listItemTemplate/Header;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/RatingFragment;->dateFormat:Ljava/text/DateFormat;

    iget-object v3, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/json/Rating;

    iget-object v3, v3, Lcom/txdriver/json/Rating;->chargeDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/txdriver/ui/listItemTemplate/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->listItems:Ljava/util/List;

    iget-object v1, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 152
    :goto_0
    iget-object v2, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 153
    iget-object v2, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/json/Rating;

    iget-object v2, v2, Lcom/txdriver/json/Rating;->chargeDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/json/Rating;

    iget-object v3, v3, Lcom/txdriver/json/Rating;->chargeDate:Ljava/util/Date;

    invoke-static {v2, v3}, Lcom/txdriver/utils/TimeUtils;->isFirstDateAfter(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/txdriver/ui/fragment/RatingFragment;->listItems:Ljava/util/List;

    new-instance v3, Lcom/txdriver/ui/listItemTemplate/Header;

    iget-object v4, p0, Lcom/txdriver/ui/fragment/RatingFragment;->dateFormat:Ljava/text/DateFormat;

    iget-object v5, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/txdriver/json/Rating;

    iget-object v5, v5, Lcom/txdriver/json/Rating;->chargeDate:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/txdriver/ui/listItemTemplate/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/txdriver/ui/fragment/RatingFragment;->listItems:Ljava/util/List;

    iget-object v3, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :cond_1
    iget p1, p0, Lcom/txdriver/ui/fragment/RatingFragment;->offset:I

    iget v1, p0, Lcom/txdriver/ui/fragment/RatingFragment;->dataPortion:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/txdriver/ui/fragment/RatingFragment;->offset:I

    .line 159
    iput-boolean v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->loading:Z

    .line 160
    iget-object p1, p0, Lcom/txdriver/ui/fragment/RatingFragment;->adapter:Lcom/txdriver/ui/adapter/RatingAdapter;

    invoke-virtual {p1}, Lcom/txdriver/ui/adapter/RatingAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private requestMoreData(I)V
    .locals 2

    .line 129
    new-instance v0, Lcom/txdriver/http/request/RatingRequest;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/RatingFragment;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1, p1}, Lcom/txdriver/http/request/RatingRequest;-><init>(Lcom/txdriver/App;I)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->request:Lcom/txdriver/http/request/RatingRequest;

    .line 130
    new-instance p1, Lcom/txdriver/ui/fragment/RatingFragment$3;

    invoke-direct {p1, p0}, Lcom/txdriver/ui/fragment/RatingFragment$3;-><init>(Lcom/txdriver/ui/fragment/RatingFragment;)V

    invoke-virtual {v0, p1}, Lcom/txdriver/http/request/RatingRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 144
    iget-object p1, p0, Lcom/txdriver/ui/fragment/RatingFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->request:Lcom/txdriver/http/request/RatingRequest;

    invoke-virtual {p1, v0}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    return-void
.end method

.method private requestRating()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->emptyTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    new-instance v0, Lcom/txdriver/http/request/RatingRequest;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/RatingFragment;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1}, Lcom/txdriver/http/request/RatingRequest;-><init>(Lcom/txdriver/App;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->request:Lcom/txdriver/http/request/RatingRequest;

    .line 110
    invoke-virtual {v0, p0}, Lcom/txdriver/http/request/RatingRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 111
    iget-object v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/RatingFragment;->request:Lcom/txdriver/http/request/RatingRequest;

    invoke-virtual {v0, v1}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    return-void
.end method

.method private setupAdapters(Lcom/txdriver/json/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/Rating;",
            ">;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 100
    iget-object v0, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->emptyTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :cond_0
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/RatingFragment;->fetchResponse(Lcom/txdriver/json/Response;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/RatingFragment;->requestRating()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0061

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x102000d

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/RatingFragment;->progressBar:Landroid/widget/ProgressBar;

    const p2, 0x1020004

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/RatingFragment;->emptyTextView:Landroid/widget/TextView;

    const p2, 0x7f090241

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/txdriver/ui/fragment/RatingFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 58
    new-instance p3, Lcom/txdriver/ui/adapter/RatingAdapter;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->listItems:Ljava/util/List;

    invoke-direct {p3, v0}, Lcom/txdriver/ui/adapter/RatingAdapter;-><init>(Ljava/util/List;)V

    iput-object p3, p0, Lcom/txdriver/ui/fragment/RatingFragment;->adapter:Lcom/txdriver/ui/adapter/RatingAdapter;

    .line 59
    iget-object p3, p0, Lcom/txdriver/ui/fragment/RatingFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 60
    iget-object p3, p0, Lcom/txdriver/ui/fragment/RatingFragment;->adapter:Lcom/txdriver/ui/adapter/RatingAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 61
    new-instance p3, Lcom/txdriver/ui/fragment/RatingFragment$1;

    invoke-direct {p3, p0}, Lcom/txdriver/ui/fragment/RatingFragment$1;-><init>(Lcom/txdriver/ui/fragment/RatingFragment;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const p2, 0x7f090240

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 82
    new-instance p3, Lcom/txdriver/ui/fragment/RatingFragment$2;

    invoke-direct {p3, p0}, Lcom/txdriver/ui/fragment/RatingFragment$2;-><init>(Lcom/txdriver/ui/fragment/RatingFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object p2, p0, Lcom/txdriver/ui/fragment/RatingFragment;->emptyTextView:Landroid/widget/TextView;

    const p3, 0x7f10016d

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 183
    invoke-super {p0}, Lcom/txdriver/ui/fragment/BaseFragment;->onDestroy()V

    .line 184
    iget-object v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->request:Lcom/txdriver/http/request/RatingRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 185
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/RatingRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    :cond_0
    return-void
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 1

    .line 125
    iget-object p1, p0, Lcom/txdriver/ui/fragment/RatingFragment;->app:Lcom/txdriver/App;

    const v0, 0x7f100264

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/RatingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/Rating;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p1, Lcom/txdriver/json/Response;->meta:Lcom/txdriver/json/Meta;

    iget v0, v0, Lcom/txdriver/json/Meta;->totalCount:I

    iput v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->totalMayLoadItemsCount:I

    .line 118
    iget-object v0, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/txdriver/ui/fragment/RatingFragment;->dataPortion:I

    .line 119
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/RatingFragment;->setupAdapters(Lcom/txdriver/json/Response;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/txdriver/json/Response;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/RatingFragment;->onResponse(Lcom/txdriver/json/Response;)V

    return-void
.end method
