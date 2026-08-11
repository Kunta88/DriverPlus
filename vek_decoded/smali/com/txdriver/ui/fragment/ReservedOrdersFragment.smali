.class public Lcom/txdriver/ui/fragment/ReservedOrdersFragment;
.super Lcom/txdriver/ui/fragment/BaseFragment;
.source "ReservedOrdersFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final TAB_ID:Ljava/lang/String; = "TAB_ID"


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;

.field private enabled:Z

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/ui/listItemTemplate/Connectable;",
            ">;"
        }
    .end annotation
.end field

.field private ordersAdapter:Lcom/txdriver/ui/adapter/OrdersAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/BaseFragment;-><init>()V

    .line 41
    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->dateFormat:Ljava/text/DateFormat;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/ReservedOrdersFragment;Lcom/txdriver/db/Order;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->goToOrder(Lcom/txdriver/db/Order;)V

    return-void
.end method

.method static synthetic access$100(Lcom/txdriver/ui/fragment/ReservedOrdersFragment;Ljava/util/List;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->fetchData(Ljava/util/List;)V

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

    .line 110
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->ordersAdapter:Lcom/txdriver/ui/adapter/OrdersAdapter;

    invoke-virtual {v0}, Lcom/txdriver/ui/adapter/OrdersAdapter;->resetData()V

    .line 111
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    new-instance v1, Lcom/txdriver/ui/listItemTemplate/Header;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->dateFormat:Ljava/text/DateFormat;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/txdriver/db/Order;

    iget-object v4, v4, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/txdriver/ui/listItemTemplate/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 115
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, -0x1

    .line 116
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

    .line 117
    new-instance v2, Lcom/txdriver/ui/listItemTemplate/Header;

    iget-object v3, p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->dateFormat:Ljava/text/DateFormat;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/txdriver/db/Order;

    iget-object v4, v4, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/txdriver/ui/listItemTemplate/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_1
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->ordersAdapter:Lcom/txdriver/ui/adapter/OrdersAdapter;

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/adapter/OrdersAdapter;->setData(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private goToOrder(Lcom/txdriver/db/Order;)V
    .locals 3

    .line 126
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p1, Lcom/txdriver/db/Order;->destinations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v0

    new-instance v1, Lcom/txdriver/socket/packet/OrderDetailsPacket;

    iget v2, p1, Lcom/txdriver/db/Order;->orderId:I

    invoke-direct {v1, v2}, Lcom/txdriver/socket/packet/OrderDetailsPacket;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    .line 130
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/txdriver/ui/activity/OrderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    invoke-virtual {p1}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object p1

    const-string v1, "extra_order_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f100186

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initLoader()V
    .locals 4

    .line 91
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/fragment/ReservedOrdersFragment$2;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/fragment/ReservedOrdersFragment$2;-><init>(Lcom/txdriver/ui/fragment/ReservedOrdersFragment;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public static newInstance(I)Lcom/txdriver/ui/fragment/ReservedOrdersFragment;
    .locals 2

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "TAB_ID"

    .line 48
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    new-instance p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;

    invoke-direct {p0}, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;-><init>()V

    .line 50
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private setAdapterEnabled()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->ordersAdapter:Lcom/txdriver/ui/adapter/OrdersAdapter;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->isSessionOpened()Z

    move-result v0

    iput-boolean v0, p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->enabled:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->enabled:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 69
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->setAdapterEnabled()V

    .line 70
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->initLoader()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 75
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "TAB_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    const v0, 0x7f0c0058

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090116

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 79
    new-instance v0, Lcom/txdriver/ui/adapter/OrdersAdapter;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->list:Ljava/util/List;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, p3, v3}, Lcom/txdriver/ui/adapter/OrdersAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILandroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->ordersAdapter:Lcom/txdriver/ui/adapter/OrdersAdapter;

    .line 80
    new-instance p3, Lcom/txdriver/ui/fragment/ReservedOrdersFragment$1;

    invoke-direct {p3, p0}, Lcom/txdriver/ui/fragment/ReservedOrdersFragment$1;-><init>(Lcom/txdriver/ui/fragment/ReservedOrdersFragment;)V

    invoke-virtual {v0, p3}, Lcom/txdriver/ui/adapter/OrdersAdapter;->setOnOrderClickListener(Lcom/txdriver/ui/adapter/OrdersAdapter$OnOrderClickListener;)V

    .line 86
    iget-object p3, p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->ordersAdapter:Lcom/txdriver/ui/adapter/OrdersAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object p1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "pref_is_session_opened"

    .line 150
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->setAdapterEnabled()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/txdriver/ui/fragment/BaseFragment;->onStart()V

    .line 57
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 62
    invoke-super {p0}, Lcom/txdriver/ui/fragment/BaseFragment;->onStop()V

    .line 63
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ReservedOrdersFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
