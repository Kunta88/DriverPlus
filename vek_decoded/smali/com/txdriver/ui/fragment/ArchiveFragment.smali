.class public Lcom/txdriver/ui/fragment/ArchiveFragment;
.super Lcom/txdriver/ui/fragment/BaseFragment;
.source "ArchiveFragment.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/ui/fragment/BaseFragment;",
        "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
        "Lcom/txdriver/json/Response<",
        "Lcom/txdriver/json/ArchiveOrder;",
        ">;>;"
    }
.end annotation


# instance fields
.field private archiveAdapter:Lcom/txdriver/ui/adapter/ArchiveAdapter;

.field private archiveRequest:Lcom/txdriver/http/request/ArchiveRequest;

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

.field private totalMayLoadItemsCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/BaseFragment;-><init>()V

    .line 37
    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->dateFormat:Ljava/text/DateFormat;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->listItems:Ljava/util/List;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->loading:Z

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/ArchiveFragment;Lcom/txdriver/json/ArchiveOrder;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/ArchiveFragment;->showArchiveOrderDetails(Lcom/txdriver/json/ArchiveOrder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/txdriver/ui/fragment/ArchiveFragment;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->lastVisibleItem:I

    return p0
.end method

.method static synthetic access$1000(Lcom/txdriver/ui/fragment/ArchiveFragment;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->emptyTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/txdriver/ui/fragment/ArchiveFragment;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->lastVisibleItem:I

    return p1
.end method

.method static synthetic access$200(Lcom/txdriver/ui/fragment/ArchiveFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/txdriver/ui/fragment/ArchiveFragment;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->loading:Z

    return p0
.end method

.method static synthetic access$302(Lcom/txdriver/ui/fragment/ArchiveFragment;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->loading:Z

    return p1
.end method

.method static synthetic access$400(Lcom/txdriver/ui/fragment/ArchiveFragment;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->listItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/txdriver/ui/fragment/ArchiveFragment;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->offset:I

    return p0
.end method

.method static synthetic access$600(Lcom/txdriver/ui/fragment/ArchiveFragment;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->totalMayLoadItemsCount:I

    return p0
.end method

.method static synthetic access$700(Lcom/txdriver/ui/fragment/ArchiveFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$800(Lcom/txdriver/ui/fragment/ArchiveFragment;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/ArchiveFragment;->requestMoreData(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/txdriver/ui/fragment/ArchiveFragment;Lcom/txdriver/json/Response;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/ArchiveFragment;->fetchMoreData(Lcom/txdriver/json/Response;)V

    return-void
.end method

.method private fetchMoreData(Lcom/txdriver/json/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/ArchiveOrder;",
            ">;)V"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/json/ArchiveOrder;

    .line 175
    iget-object v0, v0, Lcom/txdriver/json/ArchiveOrder;->date:Ljava/util/Date;

    iget-object v1, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/json/ArchiveOrder;

    iget-object v1, v1, Lcom/txdriver/json/ArchiveOrder;->date:Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/txdriver/utils/TimeUtils;->isFirstDateAfter(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->listItems:Ljava/util/List;

    new-instance v1, Lcom/txdriver/ui/listItemTemplate/Header;

    iget-object v4, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->dateFormat:Ljava/text/DateFormat;

    iget-object v5, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/txdriver/json/ArchiveOrder;

    iget-object v5, v5, Lcom/txdriver/json/ArchiveOrder;->date:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/txdriver/ui/listItemTemplate/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->listItems:Ljava/util/List;

    iget-object v1, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 179
    :goto_0
    iget-object v1, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 180
    iget-object v1, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/json/ArchiveOrder;

    iget-object v1, v1, Lcom/txdriver/json/ArchiveOrder;->date:Ljava/util/Date;

    iget-object v3, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/json/ArchiveOrder;

    iget-object v3, v3, Lcom/txdriver/json/ArchiveOrder;->date:Ljava/util/Date;

    invoke-static {v1, v3}, Lcom/txdriver/utils/TimeUtils;->isFirstDateAfter(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->listItems:Ljava/util/List;

    new-instance v3, Lcom/txdriver/ui/listItemTemplate/Header;

    iget-object v4, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->dateFormat:Ljava/text/DateFormat;

    iget-object v5, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/txdriver/json/ArchiveOrder;

    iget-object v5, v5, Lcom/txdriver/json/ArchiveOrder;->date:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/txdriver/ui/listItemTemplate/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->listItems:Ljava/util/List;

    iget-object v3, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_2
    iget p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->offset:I

    iget v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->dataPortion:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->offset:I

    .line 186
    iput-boolean v2, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->loading:Z

    .line 187
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->archiveAdapter:Lcom/txdriver/ui/adapter/ArchiveAdapter;

    invoke-virtual {p1}, Lcom/txdriver/ui/adapter/ArchiveAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private fetchResponse(Lcom/txdriver/json/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/ArchiveOrder;",
            ">;)V"
        }
    .end annotation

    .line 157
    iget-object v0, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 159
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->listItems:Ljava/util/List;

    new-instance v1, Lcom/txdriver/ui/listItemTemplate/Header;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->dateFormat:Ljava/text/DateFormat;

    iget-object v3, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/json/ArchiveOrder;

    iget-object v3, v3, Lcom/txdriver/json/ArchiveOrder;->date:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/txdriver/ui/listItemTemplate/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->listItems:Ljava/util/List;

    iget-object v1, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 161
    :goto_0
    iget-object v2, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 162
    iget-object v2, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/json/ArchiveOrder;

    iget-object v2, v2, Lcom/txdriver/json/ArchiveOrder;->date:Ljava/util/Date;

    iget-object v3, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/json/ArchiveOrder;

    iget-object v3, v3, Lcom/txdriver/json/ArchiveOrder;->date:Ljava/util/Date;

    invoke-static {v2, v3}, Lcom/txdriver/utils/TimeUtils;->isFirstDateAfter(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->listItems:Ljava/util/List;

    new-instance v3, Lcom/txdriver/ui/listItemTemplate/Header;

    iget-object v4, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->dateFormat:Ljava/text/DateFormat;

    iget-object v5, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/txdriver/json/ArchiveOrder;

    iget-object v5, v5, Lcom/txdriver/json/ArchiveOrder;->date:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/txdriver/ui/listItemTemplate/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->listItems:Ljava/util/List;

    iget-object v3, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_1
    iget p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->offset:I

    iget v1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->dataPortion:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->offset:I

    .line 168
    iput-boolean v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->loading:Z

    .line 169
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->archiveAdapter:Lcom/txdriver/ui/adapter/ArchiveAdapter;

    invoke-virtual {p1}, Lcom/txdriver/ui/adapter/ArchiveAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private requestArchive()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->emptyTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    new-instance v0, Lcom/txdriver/http/request/ArchiveRequest;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1}, Lcom/txdriver/http/request/ArchiveRequest;-><init>(Lcom/txdriver/App;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->archiveRequest:Lcom/txdriver/http/request/ArchiveRequest;

    .line 131
    invoke-virtual {v0, p0}, Lcom/txdriver/http/request/ArchiveRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 132
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->archiveRequest:Lcom/txdriver/http/request/ArchiveRequest;

    invoke-virtual {v0, v1}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    return-void
.end method

.method private requestMoreData(I)V
    .locals 2

    .line 136
    new-instance v0, Lcom/txdriver/http/request/ArchiveRequest;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1, p1}, Lcom/txdriver/http/request/ArchiveRequest;-><init>(Lcom/txdriver/App;I)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->archiveRequest:Lcom/txdriver/http/request/ArchiveRequest;

    .line 137
    new-instance p1, Lcom/txdriver/ui/fragment/ArchiveFragment$3;

    invoke-direct {p1, p0}, Lcom/txdriver/ui/fragment/ArchiveFragment$3;-><init>(Lcom/txdriver/ui/fragment/ArchiveFragment;)V

    invoke-virtual {v0, p1}, Lcom/txdriver/http/request/ArchiveRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 153
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->archiveRequest:Lcom/txdriver/http/request/ArchiveRequest;

    invoke-virtual {p1, v0}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    return-void
.end method

.method private setupAdapters(Lcom/txdriver/json/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/ArchiveOrder;",
            ">;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 61
    iget-object v0, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->emptyTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/ArchiveFragment;->fetchResponse(Lcom/txdriver/json/Response;)V

    return-void
.end method

.method private showArchiveOrderDetails(Lcom/txdriver/json/ArchiveOrder;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/ArchiveFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/ArchiveFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/ui/fragment/dialog/ArchiveOrderDetailsDialogFragment;->show(Lcom/txdriver/json/ArchiveOrder;Landroidx/fragment/app/FragmentActivity;)Landroidx/fragment/app/DialogFragment;

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/ArchiveFragment;->requestArchive()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0058

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x102000d

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->progressBar:Landroid/widget/ProgressBar;

    const p2, 0x1020004

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->emptyTextView:Landroid/widget/TextView;

    const p3, 0x7f100037

    .line 91
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f090116

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 93
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 94
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 95
    new-instance p3, Lcom/txdriver/ui/adapter/ArchiveAdapter;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->listItems:Ljava/util/List;

    invoke-direct {p3, v0}, Lcom/txdriver/ui/adapter/ArchiveAdapter;-><init>(Ljava/util/List;)V

    iput-object p3, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->archiveAdapter:Lcom/txdriver/ui/adapter/ArchiveAdapter;

    .line 96
    new-instance v0, Lcom/txdriver/ui/fragment/ArchiveFragment$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/ArchiveFragment$1;-><init>(Lcom/txdriver/ui/fragment/ArchiveFragment;)V

    invoke-virtual {p3, v0}, Lcom/txdriver/ui/adapter/ArchiveAdapter;->setOnArchiveOrderClickListener(Lcom/txdriver/ui/adapter/ArchiveAdapter$OnArchiveOrderClickListener;)V

    .line 102
    iget-object p3, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->archiveAdapter:Lcom/txdriver/ui/adapter/ArchiveAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 103
    new-instance p3, Lcom/txdriver/ui/fragment/ArchiveFragment$2;

    invoke-direct {p3, p0}, Lcom/txdriver/ui/fragment/ArchiveFragment$2;-><init>(Lcom/txdriver/ui/fragment/ArchiveFragment;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 198
    invoke-super {p0}, Lcom/txdriver/ui/fragment/BaseFragment;->onDestroy()V

    .line 199
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->archiveRequest:Lcom/txdriver/http/request/ArchiveRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 200
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/ArchiveRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    :cond_0
    return-void
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->app:Lcom/txdriver/App;

    const v0, 0x7f100264

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/ArchiveFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 71
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->emptyTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/ArchiveOrder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p1, Lcom/txdriver/json/Response;->meta:Lcom/txdriver/json/Meta;

    iget v0, v0, Lcom/txdriver/json/Meta;->totalCount:I

    iput v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->totalMayLoadItemsCount:I

    .line 54
    iget-object v0, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/txdriver/ui/fragment/ArchiveFragment;->dataPortion:I

    .line 55
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/ArchiveFragment;->setupAdapters(Lcom/txdriver/json/Response;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/txdriver/json/Response;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/ArchiveFragment;->onResponse(Lcom/txdriver/json/Response;)V

    return-void
.end method
