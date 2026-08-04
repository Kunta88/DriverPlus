.class public Lcom/txdriver/ui/fragment/ParkingsFragment;
.super Lcom/txdriver/ui/fragment/BaseListFragment;
.source "ParkingsFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final DRIVERS_COUNT_LOADER:I = 0x3

.field private static final DRIVER_PARKINGS_LOADER:I = 0x4

.field private static final PARKINGS_DRIVERS_LOADER:I = 0x2

.field private static final PARKINGS_LOADER:I = 0x1


# instance fields
.field private mDriverParkingsAdapter:Lcom/txdriver/ui/adapter/ParkingsAdapter;

.field private mDriverParkingsDividerView:Landroid/view/View;

.field private mDriverParkingsLayout:Landroid/widget/LinearLayout;

.field private mDriverParkingsView:Lcom/txdriver/ui/view/DriverParkingsView;

.field private mDriversCountTextView:Landroid/widget/TextView;

.field private mEnabled:Z

.field private mHeaderView:Landroid/view/View;

.field private mParkingsAdapter:Lcom/txdriver/ui/adapter/ParkingsAdapter;

.field private nestedScrollView:Landroidx/core/widget/NestedScrollView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/BaseListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/ParkingsFragment;)Lcom/txdriver/ui/adapter/ParkingsAdapter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mParkingsAdapter:Lcom/txdriver/ui/adapter/ParkingsAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/fragment/ParkingsFragment;)Landroidx/core/widget/NestedScrollView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->nestedScrollView:Landroidx/core/widget/NestedScrollView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/txdriver/ui/fragment/ParkingsFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mDriverParkingsLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/txdriver/ui/fragment/ParkingsFragment;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mDriverParkingsDividerView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/txdriver/ui/fragment/ParkingsFragment;)Lcom/txdriver/ui/adapter/ParkingsAdapter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mDriverParkingsAdapter:Lcom/txdriver/ui/adapter/ParkingsAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/txdriver/ui/fragment/ParkingsFragment;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mDriversCountTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/txdriver/ui/fragment/ParkingsFragment;J)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/txdriver/ui/fragment/ParkingsFragment;->onParkingClick(J)V

    return-void
.end method

.method private onParkingClick(J)V
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/ParkingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/ParkingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;J)V

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/ParkingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f100186

    invoke-virtual {p0, p2}, Lcom/txdriver/ui/fragment/ParkingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setListEnabled()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mParkingsAdapter:Lcom/txdriver/ui/adapter/ParkingsAdapter;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->isSessionOpened()Z

    move-result v0

    iput-boolean v0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mEnabled:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public initDriverParkingsLoader()V
    .locals 4

    .line 120
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/fragment/ParkingsFragment$2;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/fragment/ParkingsFragment$2;-><init>(Lcom/txdriver/ui/fragment/ParkingsFragment;)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public initDriversCountLoader()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f090220

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/fragment/ParkingsFragment$4;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/fragment/ParkingsFragment$4;-><init>(Lcom/txdriver/ui/fragment/ParkingsFragment;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public initParkingsDriversLoader()V
    .locals 4

    .line 142
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/fragment/ParkingsFragment$3;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/fragment/ParkingsFragment$3;-><init>(Lcom/txdriver/ui/fragment/ParkingsFragment;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public initParkingsLoader()V
    .locals 4

    .line 96
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/fragment/ParkingsFragment$1;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/fragment/ParkingsFragment$1;-><init>(Lcom/txdriver/ui/fragment/ParkingsFragment;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 63
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 64
    new-instance p1, Lcom/txdriver/ui/adapter/ParkingsAdapter;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/ParkingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v0, v1}, Lcom/txdriver/ui/adapter/ParkingsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mParkingsAdapter:Lcom/txdriver/ui/adapter/ParkingsAdapter;

    .line 65
    new-instance p1, Lcom/txdriver/ui/adapter/ParkingsAdapter;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/ParkingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v0, v1}, Lcom/txdriver/ui/adapter/ParkingsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mDriverParkingsAdapter:Lcom/txdriver/ui/adapter/ParkingsAdapter;

    .line 66
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/ParkingsFragment;->setListEnabled()V

    const/4 p1, 0x0

    .line 67
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/ParkingsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/ParkingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mHeaderView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 69
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mParkingsAdapter:Lcom/txdriver/ui/adapter/ParkingsAdapter;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/ParkingsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    iget-object p1, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mDriverParkingsView:Lcom/txdriver/ui/view/DriverParkingsView;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mDriverParkingsAdapter:Lcom/txdriver/ui/adapter/ParkingsAdapter;

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/view/DriverParkingsView;->setAdapter(Lcom/txdriver/ui/adapter/ParkingsAdapter;)V

    .line 71
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/ParkingsFragment;->initParkingsLoader()V

    .line 72
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/ParkingsFragment;->initDriverParkingsLoader()V

    .line 73
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/ParkingsFragment;->initParkingsDriversLoader()V

    .line 74
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/ParkingsFragment;->initDriversCountLoader()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 58
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/ParkingsFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0c0066

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 195
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f090223

    .line 196
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mDriversCountTextView:Landroid/widget/TextView;

    .line 197
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f090221

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mDriverParkingsDividerView:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f090222

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->nestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 199
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f09021f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mDriverParkingsLayout:Landroid/widget/LinearLayout;

    .line 200
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f09021e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/txdriver/ui/view/DriverParkingsView;

    iput-object v0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->mDriverParkingsView:Lcom/txdriver/ui/view/DriverParkingsView;

    .line 201
    new-instance v1, Lcom/txdriver/ui/fragment/ParkingsFragment$5;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/fragment/ParkingsFragment$5;-><init>(Lcom/txdriver/ui/fragment/ParkingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/view/DriverParkingsView;->setClickListener(Lcom/txdriver/ui/view/DriverParkingsView$OnParkingClickListener;)V

    .line 207
    invoke-super {p0, p1, p2, p3}, Lcom/txdriver/ui/fragment/BaseListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 212
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/ParkingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f050007

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 213
    invoke-direct {p0, p4, p5}, Lcom/txdriver/ui/fragment/ParkingsFragment;->onParkingClick(J)V

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "pref_is_session_opened"

    .line 229
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/ParkingsFragment;->setListEnabled()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 79
    invoke-super {p0}, Lcom/txdriver/ui/fragment/BaseListFragment;->onStart()V

    .line 80
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/txdriver/ui/fragment/BaseListFragment;->onStop()V

    .line 86
    iget-object v0, p0, Lcom/txdriver/ui/fragment/ParkingsFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
