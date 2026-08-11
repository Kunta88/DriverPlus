.class public Lcom/txdriver/ui/activity/DriverInfoActivity;
.super Lcom/txdriver/ui/activity/BaseActivity;
.source "DriverInfoActivity.java"


# static fields
.field private static final LOADER_WEB_APP_TABS:I = 0x12c


# instance fields
.field private tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private webAppsTabs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/activity/DriverInfoActivity;->webAppsTabs:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/activity/DriverInfoActivity;)Ljava/util/HashMap;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/txdriver/ui/activity/DriverInfoActivity;->webAppsTabs:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/activity/DriverInfoActivity;)Lcom/google/android/material/tabs/TabLayout;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/txdriver/ui/activity/DriverInfoActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-object p0
.end method

.method private addWebAppsTabs(Lcom/txdriver/ui/adapter/NewTabsAdapter;)V
    .locals 3

    .line 79
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/activity/DriverInfoActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/txdriver/ui/activity/DriverInfoActivity$2;-><init>(Lcom/txdriver/ui/activity/DriverInfoActivity;Lcom/txdriver/ui/adapter/NewTabsAdapter;)V

    const/16 p1, 0x12c

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 43
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/DriverInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 45
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/DriverInfoActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    const p1, 0x7f0c0021

    .line 46
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/DriverInfoActivity;->setContentView(I)V

    const p1, 0x7f0900ea

    .line 48
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/DriverInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    const v0, 0x7f0900d7

    .line 49
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/DriverInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/txdriver/ui/activity/DriverInfoActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 51
    new-instance v0, Lcom/txdriver/ui/adapter/NewTabsAdapter;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/adapter/NewTabsAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 53
    new-instance v1, Lcom/txdriver/ui/fragment/DriverInfoFragment;

    invoke-direct {v1}, Lcom/txdriver/ui/fragment/DriverInfoFragment;-><init>()V

    iget-object v2, p0, Lcom/txdriver/ui/activity/DriverInfoActivity;->app:Lcom/txdriver/App;

    const v3, 0x7f1000b0

    invoke-virtual {v2, v3}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txdriver/ui/adapter/NewTabsAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/txdriver/ui/activity/DriverInfoActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->isArchiveEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    new-instance v1, Lcom/txdriver/ui/fragment/ArchiveFragment;

    invoke-direct {v1}, Lcom/txdriver/ui/fragment/ArchiveFragment;-><init>()V

    iget-object v2, p0, Lcom/txdriver/ui/activity/DriverInfoActivity;->app:Lcom/txdriver/App;

    const v3, 0x7f100195

    invoke-virtual {v2, v3}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txdriver/ui/adapter/NewTabsAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/txdriver/ui/activity/DriverInfoActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->isFinOperationsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    new-instance v1, Lcom/txdriver/ui/fragment/FinOperationsFragment;

    invoke-direct {v1}, Lcom/txdriver/ui/fragment/FinOperationsFragment;-><init>()V

    iget-object v2, p0, Lcom/txdriver/ui/activity/DriverInfoActivity;->app:Lcom/txdriver/App;

    const v3, 0x7f1000dc

    invoke-virtual {v2, v3}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txdriver/ui/adapter/NewTabsAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/txdriver/ui/activity/DriverInfoActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->isRatingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    new-instance v1, Lcom/txdriver/ui/fragment/RatingFragment;

    invoke-direct {v1}, Lcom/txdriver/ui/fragment/RatingFragment;-><init>()V

    iget-object v2, p0, Lcom/txdriver/ui/activity/DriverInfoActivity;->app:Lcom/txdriver/App;

    const v3, 0x7f1001e8

    invoke-virtual {v2, v3}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txdriver/ui/adapter/NewTabsAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 63
    :cond_2
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 64
    new-instance v1, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v2, p0, Lcom/txdriver/ui/activity/DriverInfoActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v3, Lcom/txdriver/ui/activity/DriverInfoActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/txdriver/ui/activity/DriverInfoActivity$1;-><init>(Lcom/txdriver/ui/activity/DriverInfoActivity;Lcom/txdriver/ui/adapter/NewTabsAdapter;)V

    invoke-direct {v1, v2, p1, v3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 69
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 70
    invoke-direct {p0, v0}, Lcom/txdriver/ui/activity/DriverInfoActivity;->addWebAppsTabs(Lcom/txdriver/ui/adapter/NewTabsAdapter;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 75
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseActivity;->onStop()V

    return-void
.end method
