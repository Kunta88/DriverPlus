.class public Lcom/txdriver/ui/activity/MainActivity;
.super Lcom/txdriver/ui/activity/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LOADER_BROADCAST:I = 0x66

.field private static final LOADER_DRIVERS:I = 0x65

.field private static final LOADER_ORDER_TABS:I = 0x69

.field private static final LOADER_RESERVED_ORDERS:I = 0x67

.field private static final LOADER_WEB_APP_MENU:I = 0x6b

.field private static final LOADER_WEB_APP_TABS:I = 0x6a

.field private static final NOTIFICATIONS_RECEIVED:Ljava/lang/String; = "notifications_received"

.field private static final PARKINGS_TAB_INDEX:I = 0x0

.field private static final RESERVED_ORDERS_TAB_INDEX:I = 0x3e7


# instance fields
.field private bannedButton:Landroid/widget/ImageButton;

.field private breakButton:Landroid/widget/Button;

.field private dangerButton:Landroid/widget/ImageButton;

.field private dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field private driverParkingCount:Landroid/widget/TextView;

.field private lastServerUpdateTime:J

.field private driverParkingsCount:I

.field private isNotificationReceived:Z

.field private lastClickTime:J

.field private leaveParkingsButton:Landroid/widget/Button;

.field private mBroadcastCountViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mReservedOrdersCountTextView:Landroid/widget/TextView;

.field private mainLayout:Landroid/widget/LinearLayout;

.field private menuButton:Landroid/widget/ImageButton;

.field private orderButton:Landroid/widget/Button;

.field private serverLastUpdateText:Landroid/widget/TextView;

.field private serverPingText:Landroid/widget/TextView;

.field private serverStatusText:Landroid/widget/TextView;

.field private sessionButton:Landroid/widget/Button;

.field private showSosButton:Z

.field private tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private tabsAdapter:Lcom/txdriver/ui/adapter/NewTabsAdapter;

.field private valueAnimator:Landroid/animation/ValueAnimator;

.field private viewPager:Landroidx/viewpager2/widget/ViewPager2;

.field private webAppsMenu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/db/WebApp;",
            ">;"
        }
    .end annotation
.end field

.field private webAppsMenuIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->webAppsMenuIds:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->webAppsMenu:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->mBroadcastCountViews:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/activity/MainActivity;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/txdriver/ui/activity/MainActivity;->setupTabs(Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/txdriver/ui/activity/MainActivity;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/txdriver/ui/activity/MainActivity;->driverParkingsCount:I

    return p0
.end method

.method static synthetic access$1000(Lcom/txdriver/ui/activity/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/txdriver/ui/activity/MainActivity;->mReservedOrdersCountTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/txdriver/ui/activity/MainActivity;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/txdriver/ui/activity/MainActivity;->driverParkingsCount:I

    return p1
.end method

.method static synthetic access$1102(Lcom/txdriver/ui/activity/MainActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->webAppsMenu:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/txdriver/ui/activity/MainActivity;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/txdriver/ui/activity/MainActivity;->cancelAnimation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/txdriver/ui/activity/MainActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/txdriver/ui/activity/MainActivity;->menuButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/txdriver/ui/activity/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/txdriver/ui/activity/MainActivity;->driverParkingCount:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/txdriver/ui/activity/MainActivity;)Lcom/txdriver/ui/adapter/NewTabsAdapter;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/txdriver/ui/activity/MainActivity;->tabsAdapter:Lcom/txdriver/ui/adapter/NewTabsAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/txdriver/ui/activity/MainActivity;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/txdriver/ui/activity/MainActivity;->loadDriversCount()V

    return-void
.end method

.method static synthetic access$500(Lcom/txdriver/ui/activity/MainActivity;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/txdriver/ui/activity/MainActivity;->addWebAppsTabs()V

    return-void
.end method

.method static synthetic access$600(Lcom/txdriver/ui/activity/MainActivity;)Lcom/google/android/material/tabs/TabLayout;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/txdriver/ui/activity/MainActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/txdriver/ui/activity/MainActivity;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/txdriver/ui/activity/MainActivity;->loadBroadcastOrdersCount()V

    return-void
.end method

.method static synthetic access$800(Lcom/txdriver/ui/activity/MainActivity;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/txdriver/ui/activity/MainActivity;->loadReservedOrdersCount()V

    return-void
.end method

.method static synthetic access$900(Lcom/txdriver/ui/activity/MainActivity;)Ljava/util/Map;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/txdriver/ui/activity/MainActivity;->mBroadcastCountViews:Ljava/util/Map;

    return-object p0
.end method

.method private addOrderTabs()V
    .locals 4

    .line 246
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/activity/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/MainActivity$4;-><init>(Lcom/txdriver/ui/activity/MainActivity;)V

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method private addWebAppsTabs()V
    .locals 4

    .line 273
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/activity/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/MainActivity$5;-><init>(Lcom/txdriver/ui/activity/MainActivity;)V

    const/16 v2, 0x6a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method private animateDownloadNotificationsButton(Landroid/widget/ImageButton;)V
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 577
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 578
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 579
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 580
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/txdriver/ui/activity/MainActivity$10;

    invoke-direct {v1, p0, p1}, Lcom/txdriver/ui/activity/MainActivity$10;-><init>(Lcom/txdriver/ui/activity/MainActivity;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 587
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 592
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 593
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    return-void
.end method

.method private closeSession()V
    .locals 0

    .line 501
    invoke-static {p0}, Lcom/txdriver/ui/fragment/dialog/ConfirmCloseSessionDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;)V

    return-void
.end method

.method private initLayout()V
    .locals 2

    const v0, 0x7f09004a

    .line 146
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->mainLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090165

    .line 147
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const v0, 0x7f09004b

    .line 148
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const v0, 0x7f09036b

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->serverStatusText:Landroid/widget/TextView;

    const v0, 0x7f09036a

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->serverPingText:Landroid/widget/TextView;

    const v0, 0x7f090369

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->serverLastUpdateText:Landroid/widget/TextView;

    .line 149
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/txdriver/ui/activity/MainActivity;->showSosButton:Z

    const v0, 0x7f090336

    .line 150
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->dangerButton:Landroid/widget/ImageButton;

    const v0, 0x7f09033d

    .line 151
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->sessionButton:Landroid/widget/Button;

    const v0, 0x7f09033c

    .line 152
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->orderButton:Landroid/widget/Button;

    const v0, 0x7f090334

    .line 153
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->breakButton:Landroid/widget/Button;

    const v0, 0x7f090338

    .line 154
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->leaveParkingsButton:Landroid/widget/Button;

    const v0, 0x7f090333

    .line 155
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->bannedButton:Landroid/widget/ImageButton;

    const v0, 0x7f090339

    .line 156
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->menuButton:Landroid/widget/ImageButton;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 157
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 158
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getNotificationsNewsCounter()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getNotificationsPcTasksCounter()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/txdriver/ui/activity/MainActivity;->isNotificationReceived:Z

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->menuButton:Landroid/widget/ImageButton;

    const v1, 0x7f0800a8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getNotificationsNewsCounter()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getNotificationsPcTasksCounter()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/txdriver/ui/activity/MainActivity;->isNotificationReceived:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->menuButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/txdriver/ui/activity/MainActivity;->animateDownloadNotificationsButton(Landroid/widget/ImageButton;)V

    goto :goto_1

    .line 161
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->menuButton:Landroid/widget/ImageButton;

    const v1, 0x7f0800a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x43fa0000    # 500.0f
    .end array-data
.end method

.method private initWebAppsMenuItems(Landroid/view/View;)V
    .locals 5

    .line 528
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->webAppsMenu:Ljava/util/List;

    if-eqz v0, :cond_0

    const v0, 0x7f09012d

    .line 529
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 530
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 531
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->webAppsMenuIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 532
    :goto_0
    iget-object v2, p0, Lcom/txdriver/ui/activity/MainActivity;->webAppsMenu:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0075

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090184

    .line 534
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 535
    iget-object v4, p0, Lcom/txdriver/ui/activity/MainActivity;->webAppsMenu:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/txdriver/db/WebApp;

    iget-object v4, v4, Lcom/txdriver/db/WebApp;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f09012f

    add-int/2addr v3, v1

    .line 536
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 537
    iget-object v3, p0, Lcom/txdriver/ui/activity/MainActivity;->webAppsMenuIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadBroadcastOrdersCount()V
    .locals 4

    .line 301
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/activity/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/MainActivity$6;-><init>(Lcom/txdriver/ui/activity/MainActivity;)V

    const/16 v2, 0x66

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method private loadDriversCount()V
    .locals 4

    .line 223
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/activity/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/MainActivity$3;-><init>(Lcom/txdriver/ui/activity/MainActivity;)V

    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method private loadReservedOrdersCount()V
    .locals 4

    .line 332
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/activity/MainActivity$7;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/MainActivity$7;-><init>(Lcom/txdriver/ui/activity/MainActivity;)V

    const/16 v2, 0x67

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method private loadWebAppsMenu()V
    .locals 4

    .line 354
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/activity/MainActivity$8;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/MainActivity$8;-><init>(Lcom/txdriver/ui/activity/MainActivity;)V

    const/16 v2, 0x6b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method private openSession()V
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v0

    new-instance v1, Lcom/txdriver/socket/packet/OpenSessionPacket;

    invoke-direct {v1}, Lcom/txdriver/socket/packet/OpenSessionPacket;-><init>()V

    invoke-virtual {v0, v1}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    return-void
.end method

.method private setClickListeners()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->dangerButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/txdriver/ui/activity/MainActivity;->dangerButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->sessionButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->orderButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->breakButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->leaveParkingsButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->bannedButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->menuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupAdapters()V
    .locals 4

    .line 168
    new-instance v0, Lcom/txdriver/ui/adapter/NewTabsAdapter;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/adapter/NewTabsAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->tabsAdapter:Lcom/txdriver/ui/adapter/NewTabsAdapter;

    .line 169
    iget-object v1, p0, Lcom/txdriver/ui/activity/MainActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 170
    new-instance v0, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v1, p0, Lcom/txdriver/ui/activity/MainActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, p0, Lcom/txdriver/ui/activity/MainActivity;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v3, Lcom/txdriver/ui/activity/MainActivity$1;

    invoke-direct {v3, p0}, Lcom/txdriver/ui/activity/MainActivity$1;-><init>(Lcom/txdriver/ui/activity/MainActivity;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 175
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 176
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/txdriver/ui/activity/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/MainActivity$2;-><init>(Lcom/txdriver/ui/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method private setupTabs(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 4

    .line 203
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/activity/MainActivity;->mainLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0c00b8

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902d1

    .line 204
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 205
    iget-object v2, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->isShowParkings()Z

    move-result v2

    const v3, 0x7f0902d0

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    const p2, 0x7f1001bb

    .line 206
    invoke-virtual {p0, p2}, Lcom/txdriver/ui/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/activity/MainActivity;->driverParkingCount:Landroid/widget/TextView;

    .line 208
    iget v1, p0, Lcom/txdriver/ui/activity/MainActivity;->driverParkingsCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/txdriver/ui/activity/MainActivity;->tabsAdapter:Lcom/txdriver/ui/adapter/NewTabsAdapter;

    invoke-virtual {v2}, Lcom/txdriver/ui/adapter/NewTabsAdapter;->getLastPosition()I

    move-result v2

    if-ne p2, v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/txdriver/ui/activity/MainActivity;->tabsAdapter:Lcom/txdriver/ui/adapter/NewTabsAdapter;

    iget-object v2, v2, Lcom/txdriver/ui/adapter/NewTabsAdapter;->fragmentTitleList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/activity/MainActivity;->mReservedOrdersCountTextView:Landroid/widget/TextView;

    .line 213
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/txdriver/ui/activity/MainActivity;->tabsAdapter:Lcom/txdriver/ui/adapter/NewTabsAdapter;

    iget-object v2, v2, Lcom/txdriver/ui/adapter/NewTabsAdapter;->fragmentTitleList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 217
    iget-object v2, p0, Lcom/txdriver/ui/activity/MainActivity;->mBroadcastCountViews:Ljava/util/Map;

    iget-object v3, p0, Lcom/txdriver/ui/activity/MainActivity;->tabsAdapter:Lcom/txdriver/ui/adapter/NewTabsAdapter;

    iget-object v3, v3, Lcom/txdriver/ui/adapter/NewTabsAdapter;->fragmentIdList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    :goto_0
    return-void
.end method

.method private showBottomSheetMenu()V
    .locals 15

    .line 436
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 437
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/activity/MainActivity;->mainLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0c0053

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/txdriver/ui/activity/MainActivity;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 439
    iget-object v1, p0, Lcom/txdriver/ui/activity/MainActivity;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    const/16 v2, 0x5dc

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(IZ)V

    .line 441
    iget-object v1, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->isTakeBreak()Z

    move-result v1

    .line 442
    iget-object v2, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->isSessionOpened()Z

    move-result v2

    .line 443
    iget-object v5, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v5}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/txdriver/preferences/Preferences;->getCurrentOrderId()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-ltz v9, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 444
    iget-object v6, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v6}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/txdriver/preferences/Preferences;->isIllegitimateOrder()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v5, :cond_1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 445
    :goto_1
    iget-object v6, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v6}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/txdriver/preferences/Preferences;->isPhotoControlActive()Z

    move-result v6

    const v7, 0x7f090283

    .line 447
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v8, 0x7f09028c

    .line 448
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v9, 0x7f0901bc

    .line 449
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 450
    iget-object v10, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v10}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v10

    invoke-virtual {v10}, Lcom/txdriver/preferences/Preferences;->getNotificationsNewsCounter()I

    move-result v10

    if-lez v10, :cond_2

    .line 451
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    iget-object v10, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v10}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v10

    invoke-virtual {v10}, Lcom/txdriver/preferences/Preferences;->getNotificationsNewsCounter()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v9, 0x7f090295

    .line 454
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v10, 0x7f09029b

    .line 456
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 457
    iget-object v11, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v11}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v11

    invoke-virtual {v11}, Lcom/txdriver/preferences/Preferences;->isAllowTakeBreak()Z

    move-result v11

    const/16 v12, 0x8

    if-eqz v11, :cond_3

    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    if-nez v5, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v10, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    const v1, 0x7f09029e

    .line 459
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_4

    .line 460
    iget-object v5, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v5}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/txdriver/preferences/Preferences;->isTaximeterEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    const/16 v5, 0x8

    :goto_3
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    const v5, 0x7f090298

    .line 462
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 463
    iget-object v11, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v11}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v11

    invoke-virtual {v11}, Lcom/txdriver/preferences/Preferences;->isDriverStore()Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v11}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v11

    invoke-virtual {v11}, Lcom/txdriver/preferences/Preferences;->isDriverStoreArchive()Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_4

    :cond_5
    const/16 v11, 0x8

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v5, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    const v11, 0x7f090289

    .line 465
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_7

    const/4 v13, 0x0

    goto :goto_6

    :cond_7
    const/16 v13, 0x8

    .line 466
    :goto_6
    invoke-virtual {v11, v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    const v13, 0x7f090286

    .line 468
    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    goto :goto_7

    :cond_8
    const/16 v4, 0x8

    .line 469
    :goto_7
    invoke-virtual {v13, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    const v4, 0x7f090292

    .line 471
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    goto :goto_8

    :cond_9
    const/16 v2, 0x8

    .line 472
    :goto_8
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    const v2, 0x7f09028f

    .line 474
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v14, 0x7f0901bd

    .line 475
    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    if-eqz v6, :cond_a

    const/4 v12, 0x0

    .line 476
    :cond_a
    invoke-virtual {v2, v12}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 477
    iget-object v6, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v6}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/txdriver/preferences/Preferences;->getNotificationsPcTasksCounter()I

    move-result v6

    if-lez v6, :cond_b

    .line 478
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    iget-object v3, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v3}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/txdriver/preferences/Preferences;->getNotificationsPcTasksCounter()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    :cond_b
    invoke-virtual {v7, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    invoke-virtual {v8, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    invoke-virtual {v9, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    invoke-virtual {v10, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    invoke-virtual {v5, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    invoke-virtual {v11, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    invoke-virtual {v13, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    invoke-virtual {v4, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    invoke-virtual {v2, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    invoke-direct {p0, v0}, Lcom/txdriver/ui/activity/MainActivity;->initWebAppsMenuItems(Landroid/view/View;)V

    .line 493
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 685
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/txdriver/ui/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 686
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 687
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private stopAnimation()V
    .locals 4

    .line 670
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 671
    new-instance v1, Lcom/txdriver/ui/activity/MainActivity$11;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/MainActivity$11;-><init>(Lcom/txdriver/ui/activity/MainActivity;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 692
    invoke-static {p0}, Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 598
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 600
    :sswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/txdriver/ui/activity/MainActivity;->lastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 601
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/ui/activity/MainActivity;->lastClickTime:J

    .line 602
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->isSessionOpened()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "InputEventReceiver"

    const-string v0, "CLICK!"

    .line 603
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-direct {p0}, Lcom/txdriver/ui/activity/MainActivity;->closeSession()V

    goto/16 :goto_0

    .line 606
    :cond_0
    invoke-direct {p0}, Lcom/txdriver/ui/activity/MainActivity;->openSession()V

    goto/16 :goto_0

    .line 611
    :sswitch_1
    invoke-static {p0}, Lcom/txdriver/ui/activity/OrderActivity;->start(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 624
    :sswitch_2
    invoke-direct {p0}, Lcom/txdriver/ui/activity/MainActivity;->showBottomSheetMenu()V

    goto/16 :goto_0

    .line 617
    :sswitch_3
    invoke-static {p0}, Lcom/txdriver/ui/fragment/dialog/ConfirmLeaveParkingDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;)V

    goto/16 :goto_0

    .line 614
    :sswitch_4
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    new-instance v1, Lcom/txdriver/socket/packet/BreakPacket;

    invoke-direct {v1, v0}, Lcom/txdriver/socket/packet/BreakPacket;-><init>(Z)V

    invoke-virtual {p1, v1}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    goto/16 :goto_0

    :sswitch_5
    const p1, 0x7f100286

    .line 620
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v3}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/txdriver/preferences/Preferences;->getUnbanDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 621
    invoke-static {p0, p1}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 643
    :sswitch_6
    invoke-static {p0}, Lcom/txdriver/ui/activity/TaximeterActivity;->start(Landroid/content/Context;)V

    .line 644
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    goto/16 :goto_0

    .line 639
    :sswitch_7
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    new-instance v0, Lcom/txdriver/socket/packet/BreakPacket;

    invoke-direct {v0, v1}, Lcom/txdriver/socket/packet/BreakPacket;-><init>(Z)V

    invoke-virtual {p1, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    .line 640
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    goto :goto_0

    .line 647
    :sswitch_8
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/txdriver/ui/activity/StoreActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 648
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    goto :goto_0

    .line 635
    :sswitch_9
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/txdriver/ui/activity/SettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v1}, Lcom/txdriver/ui/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 636
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    goto :goto_0

    .line 659
    :sswitch_a
    invoke-static {p0}, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;)V

    .line 660
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    goto :goto_0

    .line 663
    :sswitch_b
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/txdriver/ui/activity/photocontrol/PhotoControlTasksListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 664
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    goto :goto_0

    .line 631
    :sswitch_c
    invoke-static {p0}, Lcom/txdriver/ui/activity/NewslettersActivity;->start(Landroid/content/Context;)V

    .line 632
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    goto :goto_0

    .line 651
    :sswitch_d
    invoke-static {p0}, Lcom/txdriver/ui/activity/DriversMapActivity;->start(Landroid/content/Context;)V

    .line 652
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    goto :goto_0

    .line 655
    :sswitch_e
    invoke-static {p0}, Lcom/txdriver/ui/fragment/dialog/ConfirmIllegitimateOrderDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;)V

    .line 656
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    goto :goto_0

    .line 627
    :sswitch_f
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/txdriver/ui/activity/DriverInfoActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 628
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090283 -> :sswitch_f
        0x7f090286 -> :sswitch_e
        0x7f090289 -> :sswitch_d
        0x7f09028c -> :sswitch_c
        0x7f09028f -> :sswitch_b
        0x7f090292 -> :sswitch_a
        0x7f090295 -> :sswitch_9
        0x7f090298 -> :sswitch_8
        0x7f09029b -> :sswitch_7
        0x7f09029e -> :sswitch_6
        0x7f090333 -> :sswitch_5
        0x7f090334 -> :sswitch_4
        0x7f090338 -> :sswitch_3
        0x7f090339 -> :sswitch_2
        0x7f09033c -> :sswitch_1
        0x7f09033d -> :sswitch_0
    .end sparse-switch
.end method

.method public onClickWebApp(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 521
    :goto_0
    iget-object v1, p0, Lcom/txdriver/ui/activity/MainActivity;->webAppsMenuIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 522
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/txdriver/ui/activity/MainActivity;->webAppsMenuIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 523
    iget-object v1, p0, Lcom/txdriver/ui/activity/MainActivity;->webAppsMenu:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/db/WebApp;

    iget-object v1, v1, Lcom/txdriver/db/WebApp;->url:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/txdriver/ui/activity/WebAppActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0025

    .line 130
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/MainActivity;->setContentView(I)V

    .line 131
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "notifications_received"

    .line 135
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/txdriver/ui/activity/MainActivity;->isNotificationReceived:Z

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/txdriver/ui/activity/MainActivity;->initLayout()V

    .line 138
    invoke-direct {p0}, Lcom/txdriver/ui/activity/MainActivity;->setupAdapters()V

    .line 139
    invoke-direct {p0}, Lcom/txdriver/ui/activity/MainActivity;->setClickListeners()V

    .line 140
    invoke-direct {p0}, Lcom/txdriver/ui/activity/MainActivity;->addOrderTabs()V

    .line 141
    invoke-direct {p0}, Lcom/txdriver/ui/activity/MainActivity;->loadWebAppsMenu()V

    .line 142
    invoke-direct {p0}, Lcom/txdriver/ui/activity/MainActivity;->stopAnimation()V

    return-void
.end method

.method public onEventMainThread(Lcom/txdriver/socket/SocketEvents$ConnectionStateEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->serverStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget p1, p1, Lcom/txdriver/socket/SocketEvents$ConnectionStateEvent;->state:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const-string p1, "🟢 Server connected"

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const-string p1, "🟡 Server connecting"

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string p1, "🔴 Server disconnected"

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/txdriver/socket/SocketEvents$ExceptionEvent;)V
    .locals 1

    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->serverStatusText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const-string v0, "🔴 Server disconnected"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/txdriver/socket/SocketEvents$PacketReadEvent;)V
    .locals 5

    # 1. Получаем текущее время
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0

    # 2. Сохраняем время
    iput-wide v0, p0, Lcom/txdriver/ui/activity/MainActivity;->lastServerUpdateTime:J

    # 3. Задаем формат времени "Часы:Минуты:Секунды"
    const-string v2, "HH:mm:ss"

    # 4. Форматируем время
    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    move-result-object v2

    # 5. Создаем StringBuilder для склейки строки
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last update: "

    # 6. Добавляем текст и время в StringBuilder
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    # 7. Превращаем результат в строку
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3

    # 8. Находим наш TextView
    iget-object v4, p0, Lcom/txdriver/ui/activity/MainActivity;->serverLastUpdateText:Landroid/widget/TextView;

    # 9. Если TextView существует, обновляем текст
    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/txdriver/socket/SocketEvents$RttEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->serverPingText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/txdriver/socket/SocketEvents$RttEvent;->rttMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " ms"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 571
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseActivity;->onDestroy()V

    .line 572
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lcom/txdriver/news/NewsEvents$NewsEventCounter;)V
    .locals 2

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "news "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/txdriver/news/NewsEvents$NewsEventCounter;->newsCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUNTER"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget v1, p1, Lcom/txdriver/news/NewsEvents$NewsEventCounter;->newsCounter:I

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setNotificationsNewsCounter(I)V

    .line 546
    iget p1, p1, Lcom/txdriver/news/NewsEvents$NewsEventCounter;->newsCounter:I

    if-lez p1, :cond_0

    .line 547
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->menuButton:Landroid/widget/ImageButton;

    const v0, 0x7f0800a8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 549
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->menuButton:Landroid/widget/ImageButton;

    const v0, 0x7f0800a3

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 551
    :goto_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->menuButton:Landroid/widget/ImageButton;

    const v0, 0x7f080067

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 552
    invoke-direct {p0}, Lcom/txdriver/ui/activity/MainActivity;->cancelAnimation()V

    const/4 p1, 0x1

    .line 553
    iput-boolean p1, p0, Lcom/txdriver/ui/activity/MainActivity;->isNotificationReceived:Z

    return-void
.end method

.method public onEvent(Lcom/txdriver/news/NewsEvents$PCTasksEventCounter;)V
    .locals 2

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pc_tasks "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/txdriver/news/NewsEvents$PCTasksEventCounter;->pcTasksCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUNTER"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    iget v1, p1, Lcom/txdriver/news/NewsEvents$PCTasksEventCounter;->pcTasksCounter:I

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setNotificationsPcTasksCounter(I)V

    .line 559
    iget p1, p1, Lcom/txdriver/news/NewsEvents$PCTasksEventCounter;->pcTasksCounter:I

    if-lez p1, :cond_0

    .line 560
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->menuButton:Landroid/widget/ImageButton;

    const v0, 0x7f0800a8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 562
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->menuButton:Landroid/widget/ImageButton;

    const v0, 0x7f0800a3

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 564
    :goto_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->menuButton:Landroid/widget/ImageButton;

    const v0, 0x7f080067

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 565
    invoke-direct {p0}, Lcom/txdriver/ui/activity/MainActivity;->cancelAnimation()V

    const/4 p1, 0x1

    .line 566
    iput-boolean p1, p0, Lcom/txdriver/ui/activity/MainActivity;->isNotificationReceived:Z

    return-void
.end method

.method public onEvent(Lcom/txdriver/socket/SocketEvents$AuthEvent;)V
    .locals 0

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .line 381
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 382
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 405
    iget-object v1, p0, Lcom/txdriver/ui/activity/MainActivity;->webAppsMenu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0

    .line 390
    :pswitch_0
    invoke-static {p0}, Lcom/txdriver/ui/activity/TaximeterActivity;->start(Landroid/content/Context;)V

    return v2

    .line 387
    :pswitch_1
    iget-object p1, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    new-instance v0, Lcom/txdriver/socket/packet/BreakPacket;

    invoke-direct {v0, v2}, Lcom/txdriver/socket/packet/BreakPacket;-><init>(Z)V

    invoke-virtual {p1, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    return v2

    .line 393
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/txdriver/ui/activity/StoreActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 399
    :pswitch_3
    invoke-static {p0}, Lcom/txdriver/ui/activity/NewslettersActivity;->start(Landroid/content/Context;)V

    return v2

    .line 396
    :pswitch_4
    invoke-static {p0}, Lcom/txdriver/ui/activity/DriversMapActivity;->start(Landroid/content/Context;)V

    return v2

    .line 402
    :pswitch_5
    invoke-static {p0}, Lcom/txdriver/ui/fragment/dialog/ConfirmIllegitimateOrderDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;)V

    return v2

    .line 384
    :pswitch_6
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/txdriver/ui/activity/DriverInfoActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 405
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/db/WebApp;

    .line 406
    iget v4, v3, Lcom/txdriver/db/WebApp;->webAppId:I

    if-ne v4, v0, :cond_0

    .line 407
    iget-object p1, v3, Lcom/txdriver/db/WebApp;->url:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/txdriver/ui/activity/WebAppActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    .line 411
    :cond_1
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7f09015e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 114
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 115
    iget-boolean v0, p0, Lcom/txdriver/ui/activity/MainActivity;->isNotificationReceived:Z

    const-string v1, "notifications_received"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "pref_take_a_break"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "pref_is_session_opened"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "pref_current_order_id"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "pref_banned"

    aput-object v1, p1, v0

    const/4 v0, 0x4

    const-string v1, "pref_in_danger"

    aput-object v1, p1, v0

    .line 506
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 510
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 511
    new-instance p1, Lcom/txdriver/ui/activity/MainActivity$9;

    invoke-direct {p1, p0}, Lcom/txdriver/ui/activity/MainActivity$9;-><init>(Lcom/txdriver/ui/activity/MainActivity;)V

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseActivity;->onStart()V

    .line 121
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/MainActivity;->updateButtons()V

    .line 122
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 375
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseActivity;->onStop()V

    .line 376
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method updateButtons()V
    .locals 9

    .line 416
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->isTakeBreak()Z

    move-result v0

    .line 417
    iget-object v1, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->isSessionOpened()Z

    move-result v1

    .line 418
    iget-object v2, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getCurrentOrderId()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-ltz v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 419
    :goto_0
    iget-object v3, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v3}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/txdriver/preferences/Preferences;->isBanned()Z

    move-result v3

    .line 420
    iget v6, p0, Lcom/txdriver/ui/activity/MainActivity;->driverParkingsCount:I

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/txdriver/ui/activity/MainActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 421
    :goto_1
    iget-object v6, p0, Lcom/txdriver/ui/activity/MainActivity;->sessionButton:Landroid/widget/Button;

    if-nez v1, :cond_2

    const v7, 0x7f100184

    goto :goto_2

    :cond_2
    const v7, 0x7f100084

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 422
    iget-object v6, p0, Lcom/txdriver/ui/activity/MainActivity;->orderButton:Landroid/widget/Button;

    const/16 v7, 0x8

    if-eqz v2, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    const/16 v8, 0x8

    :goto_3
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 423
    iget-object v6, p0, Lcom/txdriver/ui/activity/MainActivity;->bannedButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    const/16 v3, 0x8

    :goto_4
    invoke-virtual {v6, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 424
    iget-object v3, p0, Lcom/txdriver/ui/activity/MainActivity;->breakButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    const/4 v6, 0x0

    goto :goto_5

    :cond_5
    const/16 v6, 0x8

    :goto_5
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 425
    iget-object v3, p0, Lcom/txdriver/ui/activity/MainActivity;->sessionButton:Landroid/widget/Button;

    if-nez v0, :cond_7

    if-nez v4, :cond_7

    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/16 v6, 0x8

    :goto_7
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz v1, :cond_8

    .line 426
    iget-object v3, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v3}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f050008

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 427
    iget-object v3, p0, Lcom/txdriver/ui/activity/MainActivity;->sessionButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 428
    iget-object v3, p0, Lcom/txdriver/ui/activity/MainActivity;->sessionButton:Landroid/widget/Button;

    const v6, -0x777778

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 430
    :cond_8
    iget-object v3, p0, Lcom/txdriver/ui/activity/MainActivity;->leaveParkingsButton:Landroid/widget/Button;

    if-eqz v4, :cond_9

    if-nez v0, :cond_9

    if-nez v2, :cond_9

    const/4 v0, 0x0

    goto :goto_8

    :cond_9
    const/16 v0, 0x8

    :goto_8
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->dangerButton:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/txdriver/ui/activity/MainActivity;->showSosButton:Z

    if-eqz v2, :cond_a

    if-eqz v1, :cond_a

    goto :goto_9

    :cond_a
    const/16 v5, 0x8

    :goto_9
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity;->dangerButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->isInDanger()Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, 0x7f08007e

    goto :goto_a

    :cond_b
    const v1, 0x7f08007d

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method