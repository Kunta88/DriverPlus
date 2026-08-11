.class public Lcom/txdriver/ui/fragment/NewslettersFragment;
.super Lcom/txdriver/ui/fragment/BaseFragment;
.source "NewslettersFragment.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/ui/fragment/BaseFragment;",
        "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
        "Lcom/txdriver/json/Response<",
        "Lcom/txdriver/json/Newsletter;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final RESPONSE_STATE:Ljava/lang/String; = "response_state"

.field public static final TAG:Ljava/lang/String; = "NewslettersFragment"


# instance fields
.field private dataPortion:I

.field private final dateFormat:Ljava/text/DateFormat;

.field private emptyTextView:Landroid/widget/TextView;

.field private lastVisibleItem:I

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/ui/listItemTemplate/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private loading:Z

.field private newslettersAdapter:Lcom/txdriver/ui/adapter/NewslettersAdapter;

.field private newslettersRequest:Lcom/txdriver/http/request/NewslettersRequest;

.field private offset:I

.field private progressBar:Landroid/widget/ProgressBar;

.field private response:Lcom/txdriver/json/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/Newsletter;",
            ">;"
        }
    .end annotation
.end field

.field private totalMayLoadItemsCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/BaseFragment;-><init>()V

    .line 41
    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->dateFormat:Ljava/text/DateFormat;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->listItems:Ljava/util/List;

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->loading:Z

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/NewslettersFragment;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->lastVisibleItem:I

    return p0
.end method

.method static synthetic access$002(Lcom/txdriver/ui/fragment/NewslettersFragment;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->lastVisibleItem:I

    return p1
.end method

.method static synthetic access$100(Lcom/txdriver/ui/fragment/NewslettersFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/txdriver/ui/fragment/NewslettersFragment;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->loading:Z

    return p0
.end method

.method static synthetic access$202(Lcom/txdriver/ui/fragment/NewslettersFragment;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->loading:Z

    return p1
.end method

.method static synthetic access$300(Lcom/txdriver/ui/fragment/NewslettersFragment;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->listItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/txdriver/ui/fragment/NewslettersFragment;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->offset:I

    return p0
.end method

.method static synthetic access$500(Lcom/txdriver/ui/fragment/NewslettersFragment;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->totalMayLoadItemsCount:I

    return p0
.end method

.method static synthetic access$600(Lcom/txdriver/ui/fragment/NewslettersFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$700(Lcom/txdriver/ui/fragment/NewslettersFragment;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/NewslettersFragment;->requestMoreData(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/txdriver/ui/fragment/NewslettersFragment;Lcom/txdriver/json/Response;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/NewslettersFragment;->fetchMoreData(Lcom/txdriver/json/Response;)V

    return-void
.end method

.method private fetchMoreData(Lcom/txdriver/json/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/Newsletter;",
            ">;)V"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/json/Newsletter;

    .line 196
    iget-object v0, v0, Lcom/txdriver/json/Newsletter;->date:Ljava/util/Date;

    iget-object v1, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/json/Newsletter;

    iget-object v1, v1, Lcom/txdriver/json/Newsletter;->date:Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/txdriver/utils/TimeUtils;->isFirstDateAfter(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->listItems:Ljava/util/List;

    new-instance v1, Lcom/txdriver/ui/listItemTemplate/Header;

    iget-object v4, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->dateFormat:Ljava/text/DateFormat;

    iget-object v5, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/txdriver/json/Newsletter;

    iget-object v5, v5, Lcom/txdriver/json/Newsletter;->date:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/txdriver/ui/listItemTemplate/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->listItems:Ljava/util/List;

    iget-object v1, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 200
    :goto_0
    iget-object v1, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 201
    iget-object v1, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/json/Newsletter;

    iget-object v1, v1, Lcom/txdriver/json/Newsletter;->date:Ljava/util/Date;

    iget-object v3, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/json/Newsletter;

    iget-object v3, v3, Lcom/txdriver/json/Newsletter;->date:Ljava/util/Date;

    invoke-static {v1, v3}, Lcom/txdriver/utils/TimeUtils;->isFirstDateAfter(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->listItems:Ljava/util/List;

    new-instance v3, Lcom/txdriver/ui/listItemTemplate/Header;

    iget-object v4, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->dateFormat:Ljava/text/DateFormat;

    iget-object v5, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/txdriver/json/Newsletter;

    iget-object v5, v5, Lcom/txdriver/json/Newsletter;->date:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/txdriver/ui/listItemTemplate/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->listItems:Ljava/util/List;

    iget-object v3, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_2
    iget p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->offset:I

    iget v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->dataPortion:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->offset:I

    .line 207
    iput-boolean v2, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->loading:Z

    .line 208
    iget-object p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->newslettersAdapter:Lcom/txdriver/ui/adapter/NewslettersAdapter;

    invoke-virtual {p1}, Lcom/txdriver/ui/adapter/NewslettersAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private fetchResponse(Lcom/txdriver/json/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/Newsletter;",
            ">;)V"
        }
    .end annotation

    .line 178
    iget-object v0, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    iget-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->listItems:Ljava/util/List;

    new-instance v1, Lcom/txdriver/ui/listItemTemplate/Header;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->dateFormat:Ljava/text/DateFormat;

    iget-object v3, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/json/Newsletter;

    iget-object v3, v3, Lcom/txdriver/json/Newsletter;->date:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/txdriver/ui/listItemTemplate/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->listItems:Ljava/util/List;

    iget-object v1, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 182
    :goto_0
    iget-object v2, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 183
    iget-object v2, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/json/Newsletter;

    iget-object v2, v2, Lcom/txdriver/json/Newsletter;->date:Ljava/util/Date;

    iget-object v3, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/json/Newsletter;

    iget-object v3, v3, Lcom/txdriver/json/Newsletter;->date:Ljava/util/Date;

    invoke-static {v2, v3}, Lcom/txdriver/utils/TimeUtils;->isFirstDateAfter(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->listItems:Ljava/util/List;

    new-instance v3, Lcom/txdriver/ui/listItemTemplate/Header;

    iget-object v4, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->dateFormat:Ljava/text/DateFormat;

    iget-object v5, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/txdriver/json/Newsletter;

    iget-object v5, v5, Lcom/txdriver/json/Newsletter;->date:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/txdriver/ui/listItemTemplate/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->listItems:Ljava/util/List;

    iget-object v3, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_1
    iget p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->offset:I

    iget v1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->dataPortion:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->offset:I

    .line 189
    iput-boolean v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->loading:Z

    .line 190
    iget-object p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->newslettersAdapter:Lcom/txdriver/ui/adapter/NewslettersAdapter;

    invoke-virtual {p1}, Lcom/txdriver/ui/adapter/NewslettersAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private requestMoreData(I)V
    .locals 2

    .line 156
    new-instance v0, Lcom/txdriver/http/request/NewslettersRequest;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1, p1}, Lcom/txdriver/http/request/NewslettersRequest;-><init>(Lcom/txdriver/App;I)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->newslettersRequest:Lcom/txdriver/http/request/NewslettersRequest;

    .line 157
    new-instance p1, Lcom/txdriver/ui/fragment/NewslettersFragment$3;

    invoke-direct {p1, p0}, Lcom/txdriver/ui/fragment/NewslettersFragment$3;-><init>(Lcom/txdriver/ui/fragment/NewslettersFragment;)V

    invoke-virtual {v0, p1}, Lcom/txdriver/http/request/NewslettersRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 174
    iget-object p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->newslettersRequest:Lcom/txdriver/http/request/NewslettersRequest;

    invoke-virtual {p1, v0}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    return-void
.end method

.method private requestNewsletters()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->emptyTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    new-instance v0, Lcom/txdriver/http/request/NewslettersRequest;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1}, Lcom/txdriver/http/request/NewslettersRequest;-><init>(Lcom/txdriver/App;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->newslettersRequest:Lcom/txdriver/http/request/NewslettersRequest;

    .line 134
    invoke-virtual {v0, p0}, Lcom/txdriver/http/request/NewslettersRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 135
    iget-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->newslettersRequest:Lcom/txdriver/http/request/NewslettersRequest;

    invoke-virtual {v0, v1}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    return-void
.end method

.method private setupAdapters(Lcom/txdriver/json/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/Newsletter;",
            ">;)V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->response:Lcom/txdriver/json/Response;

    .line 123
    iget-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 124
    iget-object v0, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->emptyTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    :cond_0
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/NewslettersFragment;->fetchResponse(Lcom/txdriver/json/Response;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "response_state"

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/txdriver/json/Response;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->response:Lcom/txdriver/json/Response;

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->response:Lcom/txdriver/json/Response;

    if-eqz p1, :cond_1

    .line 62
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/NewslettersFragment;->setupAdapters(Lcom/txdriver/json/Response;)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/NewslettersFragment;->requestNewsletters()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c0058

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x102000d

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->progressBar:Landroid/widget/ProgressBar;

    const p2, 0x1020004

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->emptyTextView:Landroid/widget/TextView;

    const p3, 0x7f100170

    .line 86
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f090116

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 89
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 90
    new-instance p3, Lcom/txdriver/ui/adapter/NewslettersAdapter;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->app:Lcom/txdriver/App;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->listItems:Ljava/util/List;

    invoke-direct {p3, v0, v1}, Lcom/txdriver/ui/adapter/NewslettersAdapter;-><init>(Lcom/txdriver/App;Ljava/util/List;)V

    iput-object p3, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->newslettersAdapter:Lcom/txdriver/ui/adapter/NewslettersAdapter;

    .line 91
    new-instance v0, Lcom/txdriver/ui/fragment/NewslettersFragment$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/NewslettersFragment$1;-><init>(Lcom/txdriver/ui/fragment/NewslettersFragment;)V

    invoke-virtual {p3, v0}, Lcom/txdriver/ui/adapter/NewslettersAdapter;->setOnNewsLetterClickListener(Lcom/txdriver/ui/adapter/NewslettersAdapter$OnNewsLetterClickListener;)V

    .line 97
    iget-object p3, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->newslettersAdapter:Lcom/txdriver/ui/adapter/NewslettersAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 98
    new-instance p3, Lcom/txdriver/ui/fragment/NewslettersFragment$2;

    invoke-direct {p3, p0}, Lcom/txdriver/ui/fragment/NewslettersFragment$2;-><init>(Lcom/txdriver/ui/fragment/NewslettersFragment;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 213
    invoke-super {p0}, Lcom/txdriver/ui/fragment/BaseFragment;->onDestroy()V

    .line 214
    iget-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->newslettersRequest:Lcom/txdriver/http/request/NewslettersRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 215
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/NewslettersRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    :cond_0
    return-void
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 1

    .line 149
    iget-object p1, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->app:Lcom/txdriver/App;

    const v0, 0x7f100264

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/NewslettersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/NewslettersFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/NewslettersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/txdriver/json/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/Newsletter;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->dataPortion:I

    .line 142
    iget-object v0, p1, Lcom/txdriver/json/Response;->meta:Lcom/txdriver/json/Meta;

    iget v0, v0, Lcom/txdriver/json/Meta;->totalCount:I

    iput v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->totalMayLoadItemsCount:I

    .line 143
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/NewslettersFragment;->setupAdapters(Lcom/txdriver/json/Response;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/txdriver/json/Response;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/NewslettersFragment;->onResponse(Lcom/txdriver/json/Response;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 76
    iget-object v0, p0, Lcom/txdriver/ui/fragment/NewslettersFragment;->response:Lcom/txdriver/json/Response;

    if-eqz v0, :cond_0

    const-string v1, "response_state"

    .line 77
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
