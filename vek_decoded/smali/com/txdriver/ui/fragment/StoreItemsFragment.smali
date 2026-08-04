.class public Lcom/txdriver/ui/fragment/StoreItemsFragment;
.super Lcom/txdriver/ui/fragment/BaseFragment;
.source "StoreItemsFragment.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/ui/fragment/BaseFragment;",
        "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
        "Lcom/txdriver/json/Response<",
        "Lcom/txdriver/json/StoreItem;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final RESPONSE_STATE:Ljava/lang/String; = "response_state"


# instance fields
.field private adapter:Lcom/txdriver/ui/adapter/StoreItemsAdapter;

.field private emptyTextView:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private request:Lcom/txdriver/http/request/StoreItemsRequest;

.field private response:Lcom/txdriver/json/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/StoreItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/StoreItemsFragment;Lcom/txdriver/json/StoreItem;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/StoreItemsFragment;->buyItem(Lcom/txdriver/json/StoreItem;)V

    return-void
.end method

.method private buyItem(Lcom/txdriver/json/StoreItem;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 121
    invoke-static {}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->newInstance()Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;

    move-result-object v0

    const v1, 0x7f100249

    .line 122
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/fragment/StoreItemsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 123
    new-instance v1, Lcom/txdriver/ui/fragment/StoreItemsFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/txdriver/ui/fragment/StoreItemsFragment$2;-><init>(Lcom/txdriver/ui/fragment/StoreItemsFragment;Lcom/txdriver/json/StoreItem;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 131
    new-instance p1, Lcom/txdriver/ui/fragment/StoreItemsFragment$3;

    invoke-direct {p1, p0}, Lcom/txdriver/ui/fragment/StoreItemsFragment$3;-><init>(Lcom/txdriver/ui/fragment/StoreItemsFragment;)V

    invoke-virtual {v0, p1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 136
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/StoreItemsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/txdriver/ui/activity/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;)V

    :cond_0
    return-void
.end method

.method private requestItems()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->emptyTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    new-instance v0, Lcom/txdriver/http/request/StoreItemsRequest;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1}, Lcom/txdriver/http/request/StoreItemsRequest;-><init>(Lcom/txdriver/App;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->request:Lcom/txdriver/http/request/StoreItemsRequest;

    .line 101
    invoke-virtual {v0, p0}, Lcom/txdriver/http/request/StoreItemsRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 102
    iget-object v0, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->request:Lcom/txdriver/http/request/StoreItemsRequest;

    invoke-virtual {v0, v1}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    return-void
.end method

.method private setupAdapters(Lcom/txdriver/json/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/StoreItem;",
            ">;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->response:Lcom/txdriver/json/Response;

    .line 89
    iget-object v0, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 90
    iget-object v0, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object p1, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->emptyTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->adapter:Lcom/txdriver/ui/adapter/StoreItemsAdapter;

    iget-object p1, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/txdriver/ui/adapter/StoreItemsAdapter;->setData(Ljava/util/List;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "response_state"

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/txdriver/json/Response;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->response:Lcom/txdriver/json/Response;

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->response:Lcom/txdriver/json/Response;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/txdriver/json/Response;->objects:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->response:Lcom/txdriver/json/Response;

    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/StoreItemsFragment;->setupAdapters(Lcom/txdriver/json/Response;)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/StoreItemsFragment;->requestItems()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c0059

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x102000d

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->progressBar:Landroid/widget/ProgressBar;

    const p2, 0x1020004

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->emptyTextView:Landroid/widget/TextView;

    const p3, 0x7f10016d

    .line 72
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f090115

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 76
    new-instance p3, Lcom/txdriver/ui/adapter/StoreItemsAdapter;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->app:Lcom/txdriver/App;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p3, v0, v1}, Lcom/txdriver/ui/adapter/StoreItemsAdapter;-><init>(Lcom/txdriver/App;Ljava/util/List;)V

    iput-object p3, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->adapter:Lcom/txdriver/ui/adapter/StoreItemsAdapter;

    .line 77
    new-instance v0, Lcom/txdriver/ui/fragment/StoreItemsFragment$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/StoreItemsFragment$1;-><init>(Lcom/txdriver/ui/fragment/StoreItemsFragment;)V

    invoke-virtual {p3, v0}, Lcom/txdriver/ui/adapter/StoreItemsAdapter;->setOnStoreItemClickListener(Lcom/txdriver/ui/adapter/StoreItemsAdapter$OnStoreItemClickListener;)V

    .line 83
    iget-object p3, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->adapter:Lcom/txdriver/ui/adapter/StoreItemsAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object p1
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->app:Lcom/txdriver/App;

    const v0, 0x7f100264

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/StoreItemsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 116
    iget-object p1, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->emptyTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/json/Response<",
            "Lcom/txdriver/json/StoreItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 108
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/StoreItemsFragment;->setupAdapters(Lcom/txdriver/json/Response;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/txdriver/json/Response;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/StoreItemsFragment;->onResponse(Lcom/txdriver/json/Response;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->response:Lcom/txdriver/json/Response;

    const-string v1, "response_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 56
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 61
    invoke-super {p0}, Lcom/txdriver/ui/fragment/BaseFragment;->onStop()V

    .line 62
    iget-object v0, p0, Lcom/txdriver/ui/fragment/StoreItemsFragment;->request:Lcom/txdriver/http/request/StoreItemsRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/StoreItemsRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    :cond_0
    return-void
.end method
