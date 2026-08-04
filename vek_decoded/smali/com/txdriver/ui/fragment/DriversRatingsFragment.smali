.class public Lcom/txdriver/ui/fragment/DriversRatingsFragment;
.super Lcom/txdriver/ui/fragment/BaseFragment;
.source "DriversRatingsFragment.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/ui/fragment/BaseFragment;",
        "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
        "Lcom/txdriver/json/Response<",
        "Lcom/txdriver/json/DriverRating;",
        ">;>;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/txdriver/ui/adapter/DriverRatingAdapter;

.field private emptyTextView:Landroid/widget/TextView;

.field private final listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/ui/listItemTemplate/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private progressBar:Landroid/widget/ProgressBar;

.field private request:Lcom/txdriver/http/request/DriversRatingsRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/BaseFragment;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->listItems:Ljava/util/List;

    return-void
.end method

.method private fetchResponse(Lcom/txdriver/json/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/DriverRating;",
            ">;)V"
        }
    .end annotation

    .line 87
    iget-object v0, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 89
    :goto_0
    iget-object v2, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 90
    iget-object v2, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/json/DriverRating;

    iget-object v2, v2, Lcom/txdriver/json/DriverRating;->callSign:Ljava/lang/String;

    iget-object v3, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v3}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/txdriver/preferences/Preferences;->getLogin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->listItems:Ljava/util/List;

    new-instance v3, Lcom/txdriver/ui/listItemTemplate/Header;

    iget-object v4, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->app:Lcom/txdriver/App;

    const v5, 0x7f10028b

    invoke-virtual {v4, v5}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/txdriver/ui/listItemTemplate/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->listItems:Ljava/util/List;

    iget-object v3, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_1
    iget-object p1, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->adapter:Lcom/txdriver/ui/adapter/DriverRatingAdapter;

    invoke-virtual {p1}, Lcom/txdriver/ui/adapter/DriverRatingAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private requestRatings()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->emptyTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    new-instance v0, Lcom/txdriver/http/request/DriversRatingsRequest;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1}, Lcom/txdriver/http/request/DriversRatingsRequest;-><init>(Lcom/txdriver/App;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->request:Lcom/txdriver/http/request/DriversRatingsRequest;

    .line 70
    invoke-virtual {v0, p0}, Lcom/txdriver/http/request/DriversRatingsRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 71
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->request:Lcom/txdriver/http/request/DriversRatingsRequest;

    invoke-virtual {v0, v1}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    return-void
.end method

.method private setupAdapters(Lcom/txdriver/json/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/DriverRating;",
            ">;)V"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 60
    iget-object v0, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->emptyTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    :cond_0
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->fetchResponse(Lcom/txdriver/json/Response;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->requestRatings()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c0058

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x102000d

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->progressBar:Landroid/widget/ProgressBar;

    const p2, 0x1020004

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->emptyTextView:Landroid/widget/TextView;

    const p3, 0x7f10016d

    .line 43
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f090116

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 47
    new-instance p3, Lcom/txdriver/ui/adapter/DriverRatingAdapter;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->app:Lcom/txdriver/App;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->listItems:Ljava/util/List;

    invoke-direct {p3, v0, v1}, Lcom/txdriver/ui/adapter/DriverRatingAdapter;-><init>(Lcom/txdriver/App;Ljava/util/List;)V

    iput-object p3, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->adapter:Lcom/txdriver/ui/adapter/DriverRatingAdapter;

    .line 48
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 101
    invoke-super {p0}, Lcom/txdriver/ui/fragment/BaseFragment;->onDestroy()V

    .line 102
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->request:Lcom/txdriver/http/request/DriversRatingsRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 103
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/DriversRatingsRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    :cond_0
    return-void
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->app:Lcom/txdriver/App;

    const v0, 0x7f100264

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/DriverRating;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 77
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->setupAdapters(Lcom/txdriver/json/Response;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/txdriver/json/Response;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/DriversRatingsFragment;->onResponse(Lcom/txdriver/json/Response;)V

    return-void
.end method
