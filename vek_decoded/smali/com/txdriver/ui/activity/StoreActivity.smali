.class public Lcom/txdriver/ui/activity/StoreActivity;
.super Lcom/txdriver/ui/activity/BaseActivity;
.source "StoreActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 25
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/StoreActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 27
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/StoreActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    const p1, 0x7f0c0033

    .line 28
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/StoreActivity;->setContentView(I)V

    const p1, 0x7f090357

    .line 30
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/StoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    const v0, 0x7f0902ce

    .line 31
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/StoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 33
    new-instance v1, Lcom/txdriver/ui/adapter/NewTabsAdapter;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/adapter/NewTabsAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 34
    iget-object v2, p0, Lcom/txdriver/ui/activity/StoreActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->isDriverStore()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    new-instance v2, Lcom/txdriver/ui/fragment/StoreItemsFragment;

    invoke-direct {v2}, Lcom/txdriver/ui/fragment/StoreItemsFragment;-><init>()V

    iget-object v3, p0, Lcom/txdriver/ui/activity/StoreActivity;->app:Lcom/txdriver/App;

    const v4, 0x7f10024a

    invoke-virtual {v3, v4}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/txdriver/ui/adapter/NewTabsAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/txdriver/ui/activity/StoreActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->isDriverStoreArchive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    new-instance v2, Lcom/txdriver/ui/fragment/StoreArchiveFragment;

    invoke-direct {v2}, Lcom/txdriver/ui/fragment/StoreArchiveFragment;-><init>()V

    iget-object v3, p0, Lcom/txdriver/ui/activity/StoreActivity;->app:Lcom/txdriver/App;

    const v4, 0x7f100248

    invoke-virtual {v3, v4}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/txdriver/ui/adapter/NewTabsAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 40
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 41
    new-instance v2, Lcom/google/android/material/tabs/TabLayoutMediator;

    new-instance v3, Lcom/txdriver/ui/activity/StoreActivity$1;

    invoke-direct {v3, p0, v1}, Lcom/txdriver/ui/activity/StoreActivity$1;-><init>(Lcom/txdriver/ui/activity/StoreActivity;Lcom/txdriver/ui/adapter/NewTabsAdapter;)V

    invoke-direct {v2, v0, p1, v3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 46
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 20
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseActivity;->onResume()V

    return-void
.end method
