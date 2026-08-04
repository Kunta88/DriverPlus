.class public Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;
.super Lcom/txdriver/ui/fragment/BaseFragment;
.source "PhotoControlTaskListFragment.java"


# instance fields
.field private noActiveTasksTextView:Landroid/widget/TextView;

.field private photoControlTasksListRequest:Lcom/txdriver/http/request/PhotoControlTasksListRequest;

.field private photoControlTasksRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/json/PhotoControlTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/BaseFragment;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->tasks:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->tasks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->tasks:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;Ljava/util/List;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->initViews(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->photoControlTasksRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->noActiveTasksTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method private initViews(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/json/PhotoControlTask;",
            ">;)V"
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;

    new-instance v1, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$2;-><init>(Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;Ljava/util/List;)V

    invoke-direct {v0, p1, v1}, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;-><init>(Ljava/util/List;Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$TasksButtonOnClickListener;)V

    .line 90
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->photoControlTasksRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 91
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->photoControlTasksRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 92
    new-instance p1, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$3;

    invoke-direct {p1, p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$3;-><init>(Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;)V

    invoke-virtual {v0, p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter;->setOnTaskClickListener(Lcom/txdriver/ui/adapter/PhotoControlTaskAdapter$OnTaskClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/txdriver/preferences/Preferences;->setNotificationsPcTasksCounter(I)V

    .line 99
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance v1, Lcom/txdriver/news/NewsEvents$PCTasksEventCounter;

    invoke-direct {v1, v0}, Lcom/txdriver/news/NewsEvents$PCTasksEventCounter;-><init>(I)V

    invoke-virtual {p1, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private requestPhotoControlTasks()V
    .locals 3

    .line 51
    new-instance v0, Lcom/txdriver/http/request/PhotoControlTasksListRequest;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->app:Lcom/txdriver/App;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getPrefDriverUuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/txdriver/http/request/PhotoControlTasksListRequest;-><init>(Lcom/txdriver/App;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->photoControlTasksListRequest:Lcom/txdriver/http/request/PhotoControlTasksListRequest;

    .line 52
    new-instance v1, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$1;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment$1;-><init>(Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/PhotoControlTasksListRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 70
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->photoControlTasksListRequest:Lcom/txdriver/http/request/PhotoControlTasksListRequest;

    invoke-virtual {v0, v1}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0c005f

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09024a

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->photoControlTasksRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p3, v1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const p2, 0x7f0901b4

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->noActiveTasksTextView:Landroid/widget/TextView;

    .line 46
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->requestPhotoControlTasks()V

    return-object p1
.end method

.method public onStop()V
    .locals 2

    .line 117
    invoke-super {p0}, Lcom/txdriver/ui/fragment/BaseFragment;->onStop()V

    .line 118
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->photoControlTasksListRequest:Lcom/txdriver/http/request/PhotoControlTasksListRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 119
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/PhotoControlTasksListRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    :cond_0
    return-void
.end method

.method public replaceFragment(I)V
    .locals 3

    .line 103
    new-instance v0, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->tasks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/json/PhotoControlTask;

    .line 105
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "task"

    .line 106
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 107
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/PhotoControlTaskPreviewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x1020002

    const/4 v2, 0x0

    .line 110
    invoke-virtual {p1, v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 111
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 112
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
