.class public Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;
.super Lcom/txdriver/ui/fragment/BaseFragment;
.source "BroadcastOrdersFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final TAB_ID_ARG:Ljava/lang/String; = "tab_id_arg"

.field public static final TAB_NAME_ARG:Ljava/lang/String; = "tab_name_arg"


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;

.field private enabled:Z

.field private filtersButton:Landroid/widget/ImageButton;

.field private filtersButtonClickListener:Landroid/view/View$OnClickListener;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/ui/listItemTemplate/Connectable;",
            ">;"
        }
    .end annotation
.end field

.field private ordersAdapter:Lcom/txdriver/ui/adapter/OrdersAdapter;

.field private preferences:Landroid/content/SharedPreferences;

.field private tabId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/BaseFragment;-><init>()V

    .line 48
    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->dateFormat:Ljava/text/DateFormat;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->list:Ljava/util/List;

    .line 56
    new-instance v0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$1;-><init>(Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->filtersButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->tabId:I

    return p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;Ljava/util/List;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->fetchData(Ljava/util/List;)V

    return-void
.end method

.method private fetchData(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Order;",
            ">;)V"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->ordersAdapter:Lcom/txdriver/ui/adapter/OrdersAdapter;

    invoke-virtual {v0}, Lcom/txdriver/ui/adapter/OrdersAdapter;->resetData()V

    .line 154
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    new-instance v1, Lcom/txdriver/ui/listItemTemplate/Header;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->dateFormat:Ljava/text/DateFormat;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/txdriver/db/Order;

    iget-object v4, v4, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/txdriver/ui/listItemTemplate/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 158
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, -0x1

    .line 159
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/db/Order;

    iget-object v2, v2, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/db/Order;

    iget-object v3, v3, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    invoke-static {v2, v3}, Lcom/txdriver/utils/TimeUtils;->isFirstDateAfter(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    new-instance v2, Lcom/txdriver/ui/listItemTemplate/Header;

    iget-object v3, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->dateFormat:Ljava/text/DateFormat;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/txdriver/db/Order;

    iget-object v4, v4, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/txdriver/ui/listItemTemplate/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->ordersAdapter:Lcom/txdriver/ui/adapter/OrdersAdapter;

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/adapter/OrdersAdapter;->setData(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private isShowFilterButton()Z
    .locals 3

    .line 148
    new-instance v0, Lcom/txdriver/filter/FilterPreferences;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->app:Lcom/txdriver/App;

    iget v2, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->tabId:I

    invoke-direct {v0, v1, v2}, Lcom/txdriver/filter/FilterPreferences;-><init>(Lcom/txdriver/App;I)V

    .line 149
    invoke-virtual {v0}, Lcom/txdriver/filter/FilterPreferences;->isDestionationFilterEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/txdriver/filter/FilterPreferences;->isPriceFilterEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/txdriver/filter/FilterPreferences;->isRadiusFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private loadOrders()V
    .locals 4

    .line 117
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    iget v1, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->tabId:I

    new-instance v2, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3;

    invoke-direct {v2, p0}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$3;-><init>(Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;
    .locals 3

    .line 67
    new-instance v0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;-><init>()V

    .line 68
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "tab_id_arg"

    .line 69
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "tab_name_arg"

    .line 70
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setAdapterEnabled()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->ordersAdapter:Lcom/txdriver/ui/adapter/OrdersAdapter;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->isSessionOpened()Z

    move-result v0

    iput-boolean v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->enabled:Z

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->ordersAdapter:Lcom/txdriver/ui/adapter/OrdersAdapter;

    invoke-virtual {v0}, Lcom/txdriver/ui/adapter/OrdersAdapter;->resetData()V

    :cond_0
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->enabled:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 87
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->setAdapterEnabled()V

    .line 88
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->loadOrders()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "tab_id_arg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->tabId:I

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->tabId:I

    invoke-static {v0}, Lcom/txdriver/filter/FilterPreferences;->getTabPreferencesName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p3, 0x7f0c0055

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090070

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->filtersButton:Landroid/widget/ImageButton;

    .line 101
    iget-object p3, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->filtersButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p2, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->filtersButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->isShowFilterButton()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    const p2, 0x7f090071

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 104
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 105
    new-instance p3, Lcom/txdriver/ui/adapter/OrdersAdapter;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->list:Ljava/util/List;

    iget v2, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->tabId:I

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {p3, v0, v1, v2, v3}, Lcom/txdriver/ui/adapter/OrdersAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILandroidx/fragment/app/FragmentManager;)V

    iput-object p3, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->ordersAdapter:Lcom/txdriver/ui/adapter/OrdersAdapter;

    .line 106
    new-instance v0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$2;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment$2;-><init>(Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;)V

    invoke-virtual {p3, v0}, Lcom/txdriver/ui/adapter/OrdersAdapter;->setOnOrderClickListener(Lcom/txdriver/ui/adapter/OrdersAdapter$OnOrderClickListener;)V

    .line 112
    iget-object p3, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->ordersAdapter:Lcom/txdriver/ui/adapter/OrdersAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object p1
.end method

.method public onResume()V
    .locals 4

    .line 93
    invoke-super {p0}, Lcom/txdriver/ui/fragment/BaseFragment;->onResume()V

    .line 94
    iget-object v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->filtersButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_filter_enable"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f080094

    goto :goto_0

    :cond_0
    const v1, 0x7f080093

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "pref_is_session_opened"

    .line 216
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->setAdapterEnabled()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 204
    invoke-super {p0}, Lcom/txdriver/ui/fragment/BaseFragment;->onStart()V

    .line 205
    iget-object v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 210
    invoke-super {p0}, Lcom/txdriver/ui/fragment/BaseFragment;->onStop()V

    .line 211
    iget-object v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public showOrder(Lcom/txdriver/db/Order;)V
    .locals 5

    .line 173
    iget-object v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getCurrentOrderId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p1}, Lcom/txdriver/db/Order;->isNewState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->app:Lcom/txdriver/App;

    .line 176
    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getCurrentOrderId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/txdriver/db/Order;->get(J)Lcom/txdriver/db/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/db/Order;->isOnRouteState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f100192

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 180
    iget-boolean v0, p1, Lcom/txdriver/db/Order;->acceptable:Z

    if-nez v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f100189

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 185
    iget-object v0, p0, Lcom/txdriver/ui/fragment/BroadcastOrdersFragment;->app:Lcom/txdriver/App;

    iget p1, p1, Lcom/txdriver/db/Order;->orderId:I

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->start(Lcom/txdriver/App;J)V

    :cond_2
    return-void
.end method
