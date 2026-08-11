.class public Lcom/txdriver/ui/activity/OrderActivity;
.super Lcom/txdriver/ui/activity/BaseActivity;
.source "OrderActivity.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/activity/OrderActivity$OrderStateButtonClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/ui/activity/BaseActivity;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/txdriver/db/Order;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final EXTRA_ORDER_ID:Ljava/lang/String; = "extra_order_id"

.field public static final EXTRA_TAB:Ljava/lang/String; = "extra_tab"

.field private static final LOADER_WEB_APP_MENU:I = 0xc8

.field private static final LOADER_WEB_APP_TABS:I = 0xca

.field public static final MAP_TAB_INDEX:I = 0x1

.field private static final ORDER_EXTRAS_LOADER:I = 0xcb

.field private static final ORDER_LOADER:I = 0xc9

.field public static final ORDER_TAB_INDEX:I = 0x0

.field private static final REQUEST_CALL_PHONE:I = 0x3e8

.field private static final TAB_STATE:Ljava/lang/String; = "tab_state"

.field public static final TAXIMETER_TAB_INDEX:I = 0x2


# instance fields
.field private addClientButton:Landroid/widget/ImageButton;

.field private arrivedButton:Landroid/widget/Button;

.field private arrivedButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

.field private bar:Landroidx/appcompat/app/ActionBar;

.field private callToDispatcherButton:Landroid/widget/ImageButton;

.field private context:Landroid/content/Context;

.field private dangerButton:Landroid/widget/ImageButton;

.field private doneButton:Landroid/widget/Button;

.field private doneButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

.field private mOrderLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Order;",
            ">;>;"
        }
    .end annotation
.end field

.field private menuButton:Landroid/widget/ImageButton;

.field private menuButtonClickListener:Landroid/view/View$OnClickListener;

.field private navigatorButton:Landroid/widget/Button;

.field private navigatorButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

.field private onRouteButton:Landroid/widget/Button;

.field private onRouteButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

.field private order:Lcom/txdriver/db/Order;

.field private orderId:J

.field private selectedCarExtras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/txdriver/db/CarExtra;",
            ">;"
        }
    .end annotation
.end field

.field private selectedDriverExtras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/txdriver/db/DriverExtra;",
            ">;"
        }
    .end annotation
.end field

.field private showSosButton:Z

.field private startPerformingButton:Landroid/widget/Button;

.field private startPerformingButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

.field private tabsAdapter:Lcom/txdriver/ui/adapter/TabsAdapter;

.field private takeClientButton:Landroid/widget/Button;

.field private takeClientButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

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

.field private webAppsTabs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/appcompat/app/ActionBar$Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->selectedCarExtras:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->selectedDriverExtras:Ljava/util/ArrayList;

    .line 100
    iput-object p0, p0, Lcom/txdriver/ui/activity/OrderActivity;->context:Landroid/content/Context;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->webAppsMenuIds:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Lcom/txdriver/ui/activity/OrderActivity$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/OrderActivity$1;-><init>(Lcom/txdriver/ui/activity/OrderActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->startPerformingButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    .line 117
    new-instance v0, Lcom/txdriver/ui/activity/OrderActivity$2;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/OrderActivity$2;-><init>(Lcom/txdriver/ui/activity/OrderActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->arrivedButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    .line 128
    new-instance v0, Lcom/txdriver/ui/activity/OrderActivity$3;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/OrderActivity$3;-><init>(Lcom/txdriver/ui/activity/OrderActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->onRouteButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    .line 139
    new-instance v0, Lcom/txdriver/ui/activity/OrderActivity$4;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/OrderActivity$4;-><init>(Lcom/txdriver/ui/activity/OrderActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->takeClientButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    .line 150
    new-instance v0, Lcom/txdriver/ui/activity/OrderActivity$5;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/OrderActivity$5;-><init>(Lcom/txdriver/ui/activity/OrderActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->doneButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    .line 161
    new-instance v0, Lcom/txdriver/ui/activity/OrderActivity$6;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/OrderActivity$6;-><init>(Lcom/txdriver/ui/activity/OrderActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->navigatorButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->webAppsMenu:Ljava/util/List;

    .line 168
    new-instance v0, Lcom/txdriver/ui/activity/OrderActivity$7;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/OrderActivity$7;-><init>(Lcom/txdriver/ui/activity/OrderActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->menuButtonClickListener:Landroid/view/View$OnClickListener;

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->webAppsTabs:Ljava/util/Set;

    .line 642
    new-instance v0, Lcom/txdriver/ui/activity/OrderActivity$19;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/OrderActivity$19;-><init>(Lcom/txdriver/ui/activity/OrderActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->mOrderLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/activity/OrderActivity;)Lcom/txdriver/db/Order;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/activity/OrderActivity;)Landroid/widget/Button;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/txdriver/ui/activity/OrderActivity;->arrivedButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/txdriver/ui/activity/OrderActivity;)J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->orderId:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/txdriver/ui/activity/OrderActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/txdriver/ui/activity/OrderActivity;->selectedCarExtras:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/txdriver/ui/activity/OrderActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/txdriver/ui/activity/OrderActivity;->selectedDriverExtras:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/txdriver/ui/activity/OrderActivity;)Landroid/widget/Button;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/txdriver/ui/activity/OrderActivity;->onRouteButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/txdriver/ui/activity/OrderActivity;)Landroid/widget/Button;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/txdriver/ui/activity/OrderActivity;->takeClientButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$400(Lcom/txdriver/ui/activity/OrderActivity;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/txdriver/ui/activity/OrderActivity;->openNavigator()V

    return-void
.end method

.method static synthetic access$500(Lcom/txdriver/ui/activity/OrderActivity;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/txdriver/ui/activity/OrderActivity;->showBottomSheetMenu()V

    return-void
.end method

.method static synthetic access$600(Lcom/txdriver/ui/activity/OrderActivity;)Landroid/content/Context;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/txdriver/ui/activity/OrderActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/txdriver/ui/activity/OrderActivity;)Ljava/util/Set;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/txdriver/ui/activity/OrderActivity;->webAppsTabs:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$902(Lcom/txdriver/ui/activity/OrderActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity;->webAppsMenu:Ljava/util/List;

    return-object p1
.end method

.method private addWebAppsTabs(Landroidx/appcompat/app/ActionBar;Lcom/txdriver/ui/adapter/TabsAdapter;)V
    .locals 2

    .line 297
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/activity/OrderActivity$11;

    invoke-direct {v1, p0, p2, p1}, Lcom/txdriver/ui/activity/OrderActivity$11;-><init>(Lcom/txdriver/ui/activity/OrderActivity;Lcom/txdriver/ui/adapter/TabsAdapter;Landroidx/appcompat/app/ActionBar;)V

    const/16 p1, 0xca

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method private initWebAppsMenuItems(Landroid/view/View;)V
    .locals 5

    .line 620
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->webAppsMenu:Ljava/util/List;

    if-eqz v0, :cond_0

    const v0, 0x7f09012d

    .line 621
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 622
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 623
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->webAppsMenuIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 624
    :goto_0
    iget-object v2, p0, Lcom/txdriver/ui/activity/OrderActivity;->webAppsMenu:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0075

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090184

    .line 626
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 627
    iget-object v4, p0, Lcom/txdriver/ui/activity/OrderActivity;->webAppsMenu:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/txdriver/db/WebApp;

    iget-object v4, v4, Lcom/txdriver/db/WebApp;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f09012f

    add-int/2addr v3, v1

    .line 628
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 629
    iget-object v3, p0, Lcom/txdriver/ui/activity/OrderActivity;->webAppsMenuIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadWebAppsMenu()V
    .locals 4

    .line 331
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/activity/OrderActivity$12;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/OrderActivity$12;-><init>(Lcom/txdriver/ui/activity/OrderActivity;)V

    const/16 v2, 0xc8

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method private openNavigator()V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    invoke-virtual {v0}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;J)V

    return-void
.end method

.method private showBottomSheetMenu()V
    .locals 12

    .line 473
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0054

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 474
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-direct {v1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 476
    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 477
    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v2

    const/16 v3, 0x5dc

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(IZ)V

    const v2, 0x7f0901f8

    .line 479
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0901f9

    .line 480
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v5, 0x7f0901f7

    .line 482
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 483
    iget-object v6, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v6, v6, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v6, v6, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-boolean v6, v6, Lcom/txdriver/db/OrderType;->driverCanReturn:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    const/16 v6, 0x8

    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v6, 0x7f0901f5

    .line 485
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 486
    iget-object v9, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v9, v9, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v9, v9, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-boolean v9, v9, Lcom/txdriver/db/OrderType;->driverCanCancel:Z

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    const/16 v9, 0x8

    :goto_1
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v9, 0x7f0901f6

    .line 488
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const v10, 0x7f090141

    .line 489
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 490
    iget-object v11, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v11, v11, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v11, v11, Lcom/txdriver/db/Order;->tariff:Lcom/txdriver/db/Tariff;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v11, v11, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget v11, v11, Lcom/txdriver/db/OrderType;->driverCanEditOrderExtras:I

    if-lez v11, :cond_3

    .line 491
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 492
    iget-object v11, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v11, v11, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget v11, v11, Lcom/txdriver/db/OrderType;->driverCanEditOrderExtras:I

    if-ne v11, v4, :cond_2

    const v4, 0x7f10002c

    .line 493
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 494
    :cond_2
    iget-object v4, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v4, v4, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget v4, v4, Lcom/txdriver/db/OrderType;->driverCanEditOrderExtras:I

    const/4 v11, 0x2

    if-ne v4, v11, :cond_3

    const v4, 0x7f1000ba

    .line 495
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    :goto_2
    const v4, 0x7f0901f4

    .line 499
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 500
    iget-object v10, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v10, v10, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v10, v10, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget v10, v10, Lcom/txdriver/db/OrderType;->callToClient:I

    if-lez v10, :cond_4

    const/4 v7, 0x0

    :cond_4
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 502
    new-instance v7, Lcom/txdriver/ui/activity/OrderActivity$13;

    invoke-direct {v7, p0, v1}, Lcom/txdriver/ui/activity/OrderActivity$13;-><init>(Lcom/txdriver/ui/activity/OrderActivity;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    new-instance v2, Lcom/txdriver/ui/activity/OrderActivity$14;

    invoke-direct {v2, p0, v1}, Lcom/txdriver/ui/activity/OrderActivity$14;-><init>(Lcom/txdriver/ui/activity/OrderActivity;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    new-instance v2, Lcom/txdriver/ui/activity/OrderActivity$15;

    invoke-direct {v2, p0, v1}, Lcom/txdriver/ui/activity/OrderActivity$15;-><init>(Lcom/txdriver/ui/activity/OrderActivity;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    new-instance v2, Lcom/txdriver/ui/activity/OrderActivity$16;

    invoke-direct {v2, p0, v1}, Lcom/txdriver/ui/activity/OrderActivity$16;-><init>(Lcom/txdriver/ui/activity/OrderActivity;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    new-instance v2, Lcom/txdriver/ui/activity/OrderActivity$17;

    invoke-direct {v2, p0, v1}, Lcom/txdriver/ui/activity/OrderActivity$17;-><init>(Lcom/txdriver/ui/activity/OrderActivity;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    new-instance v2, Lcom/txdriver/ui/activity/OrderActivity$18;

    invoke-direct {v2, p0, v1}, Lcom/txdriver/ui/activity/OrderActivity$18;-><init>(Lcom/txdriver/ui/activity/OrderActivity;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    invoke-direct {p0, v0}, Lcom/txdriver/ui/activity/OrderActivity;->initWebAppsMenuItems(Landroid/view/View;)V

    .line 569
    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 608
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/txdriver/App;

    .line 609
    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getCurrentOrderId()J

    move-result-wide v0

    .line 610
    invoke-static {p0, v0, v1}, Lcom/txdriver/ui/activity/OrderActivity;->start(Landroid/content/Context;J)V

    return-void
.end method

.method public static start(Landroid/content/Context;J)V
    .locals 2

    .line 614
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/txdriver/ui/activity/OrderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_order_id"

    .line 615
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 616
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public addTaximeterTab()V
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->bar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getNavigationItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x2

    if-le v1, v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->tabsAdapter:Lcom/txdriver/ui/adapter/TabsAdapter;

    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->bar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v1

    const v2, 0x7f100258

    invoke-virtual {p0, v2}, Lcom/txdriver/ui/activity/OrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v1

    const-class v2, Lcom/txdriver/ui/fragment/TaximeterFragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/txdriver/ui/adapter/TabsAdapter;->addTab(Landroidx/appcompat/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onClickWebApp(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 636
    :goto_0
    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->webAppsMenuIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 637
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/txdriver/ui/activity/OrderActivity;->webAppsMenuIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 638
    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->webAppsMenu:Ljava/util/List;

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
    .locals 8

    .line 216
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0027

    .line 217
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/OrderActivity;->setContentView(I)V

    .line 218
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->showSosButton:Z

    const-wide/16 v0, -0x1

    const-string v2, "extra_order_id"

    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->orderId:J

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->orderId:J

    :goto_0
    const v0, 0x7f09020f

    .line 224
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/OrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f090336

    .line 225
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/OrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->dangerButton:Landroid/widget/ImageButton;

    .line 226
    iget-object v3, p0, Lcom/txdriver/ui/activity/OrderActivity;->dangerButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901c2

    .line 227
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/OrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->callToDispatcherButton:Landroid/widget/ImageButton;

    .line 228
    new-instance v3, Lcom/txdriver/ui/activity/OrderActivity$8;

    invoke-direct {v3, p0}, Lcom/txdriver/ui/activity/OrderActivity$8;-><init>(Lcom/txdriver/ui/activity/OrderActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090335

    .line 238
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/OrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->addClientButton:Landroid/widget/ImageButton;

    .line 239
    new-instance v3, Lcom/txdriver/ui/activity/OrderActivity$9;

    invoke-direct {v3, p0}, Lcom/txdriver/ui/activity/OrderActivity$9;-><init>(Lcom/txdriver/ui/activity/OrderActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09033e

    .line 245
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/OrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->startPerformingButton:Landroid/widget/Button;

    .line 246
    new-instance v3, Lcom/txdriver/ui/activity/OrderActivity$OrderStateButtonClickListener;

    iget-object v4, p0, Lcom/txdriver/ui/activity/OrderActivity;->startPerformingButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lcom/txdriver/ui/activity/OrderActivity$OrderStateButtonClickListener;-><init>(Lcom/txdriver/ui/activity/OrderActivity;Lcom/txdriver/ui/view/ViewOnClickListener;Lcom/txdriver/ui/activity/OrderActivity$1;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090332

    .line 247
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/OrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->arrivedButton:Landroid/widget/Button;

    .line 248
    new-instance v3, Lcom/txdriver/ui/activity/OrderActivity$OrderStateButtonClickListener;

    iget-object v4, p0, Lcom/txdriver/ui/activity/OrderActivity;->arrivedButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    invoke-direct {v3, p0, v4, v5}, Lcom/txdriver/ui/activity/OrderActivity$OrderStateButtonClickListener;-><init>(Lcom/txdriver/ui/activity/OrderActivity;Lcom/txdriver/ui/view/ViewOnClickListener;Lcom/txdriver/ui/activity/OrderActivity$1;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09033b

    .line 249
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/OrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->onRouteButton:Landroid/widget/Button;

    .line 250
    new-instance v3, Lcom/txdriver/ui/activity/OrderActivity$OrderStateButtonClickListener;

    iget-object v4, p0, Lcom/txdriver/ui/activity/OrderActivity;->onRouteButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    invoke-direct {v3, p0, v4, v5}, Lcom/txdriver/ui/activity/OrderActivity$OrderStateButtonClickListener;-><init>(Lcom/txdriver/ui/activity/OrderActivity;Lcom/txdriver/ui/view/ViewOnClickListener;Lcom/txdriver/ui/activity/OrderActivity$1;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09033f

    .line 251
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/OrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->takeClientButton:Landroid/widget/Button;

    .line 252
    new-instance v3, Lcom/txdriver/ui/activity/OrderActivity$OrderStateButtonClickListener;

    iget-object v4, p0, Lcom/txdriver/ui/activity/OrderActivity;->takeClientButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    invoke-direct {v3, p0, v4, v5}, Lcom/txdriver/ui/activity/OrderActivity$OrderStateButtonClickListener;-><init>(Lcom/txdriver/ui/activity/OrderActivity;Lcom/txdriver/ui/view/ViewOnClickListener;Lcom/txdriver/ui/activity/OrderActivity$1;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090337

    .line 253
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/OrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->doneButton:Landroid/widget/Button;

    .line 254
    new-instance v3, Lcom/txdriver/ui/activity/OrderActivity$OrderStateButtonClickListener;

    iget-object v4, p0, Lcom/txdriver/ui/activity/OrderActivity;->doneButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    invoke-direct {v3, p0, v4, v5}, Lcom/txdriver/ui/activity/OrderActivity$OrderStateButtonClickListener;-><init>(Lcom/txdriver/ui/activity/OrderActivity;Lcom/txdriver/ui/view/ViewOnClickListener;Lcom/txdriver/ui/activity/OrderActivity$1;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09033a

    .line 255
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/OrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->navigatorButton:Landroid/widget/Button;

    .line 256
    iget-object v3, p0, Lcom/txdriver/ui/activity/OrderActivity;->navigatorButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090339

    .line 257
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/OrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->menuButton:Landroid/widget/ImageButton;

    .line 258
    iget-object v3, p0, Lcom/txdriver/ui/activity/OrderActivity;->menuButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->bar:Landroidx/appcompat/app/ActionBar;

    const/4 v3, 0x2

    .line 260
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/ActionBar;->setNavigationMode(I)V

    .line 261
    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->bar:Landroidx/appcompat/app/ActionBar;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 262
    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->bar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v1, v4}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 263
    new-instance v1, Lcom/txdriver/ui/activity/OrderActivity$10;

    invoke-direct {v1, p0, p0, v0}, Lcom/txdriver/ui/activity/OrderActivity$10;-><init>(Lcom/txdriver/ui/activity/OrderActivity;Lcom/txdriver/ui/activity/BaseActivity;Landroidx/viewpager/widget/ViewPager;)V

    iput-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->tabsAdapter:Lcom/txdriver/ui/adapter/TabsAdapter;

    .line 270
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 271
    iget-wide v6, p0, Lcom/txdriver/ui/activity/OrderActivity;->orderId:J

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 272
    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->tabsAdapter:Lcom/txdriver/ui/adapter/TabsAdapter;

    iget-object v2, p0, Lcom/txdriver/ui/activity/OrderActivity;->bar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v2

    const v6, 0x7f100188

    invoke-virtual {p0, v6}, Lcom/txdriver/ui/activity/OrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/appcompat/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v2

    const-class v6, Lcom/txdriver/ui/fragment/OrderDetailsFragment;

    invoke-virtual {v1, v2, v6, v0}, Lcom/txdriver/ui/adapter/TabsAdapter;->addTab(Landroidx/appcompat/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 273
    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->tabsAdapter:Lcom/txdriver/ui/adapter/TabsAdapter;

    iget-object v2, p0, Lcom/txdriver/ui/activity/OrderActivity;->bar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v2

    const v6, 0x7f10010a

    invoke-virtual {p0, v6}, Lcom/txdriver/ui/activity/OrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/appcompat/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v2

    const-class v6, Lcom/txdriver/ui/fragment/OrderMapFragment;

    invoke-virtual {v1, v2, v6, v0}, Lcom/txdriver/ui/adapter/TabsAdapter;->addTab(Landroidx/appcompat/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    const-string v0, "tab_state"

    .line 275
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 276
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->bar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getNavigationItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderActivity;->addTaximeterTab()V

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->bar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_1

    .line 280
    :cond_2
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_tab"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_3

    .line 281
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderActivity;->addTaximeterTab()V

    .line 282
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity;->bar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 284
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity;->bar:Landroidx/appcompat/app/ActionBar;

    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->tabsAdapter:Lcom/txdriver/ui/adapter/TabsAdapter;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/ui/activity/OrderActivity;->addWebAppsTabs(Landroidx/appcompat/app/ActionBar;Lcom/txdriver/ui/adapter/TabsAdapter;)V

    .line 285
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/16 v0, 0xc9

    invoke-virtual {p1, v0, v5, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 286
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/16 v0, 0xcb

    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->mOrderLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p1, v0, v5, v1}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 287
    invoke-direct {p0}, Lcom/txdriver/ui/activity/OrderActivity;->loadWebAppsMenu()V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Order;",
            ">;>;"
        }
    .end annotation

    .line 186
    new-instance p1, Lcom/activeandroid/ModelLoader;

    new-instance p2, Lcom/activeandroid/query/Select;

    invoke-direct {p2}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v0, Lcom/txdriver/db/Order;

    invoke-virtual {p2, v0}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->orderId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Id = ?"

    invoke-virtual {p2, v1, v0}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/activeandroid/ModelLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public onEventMainThread(Lcom/txdriver/socket/SocketEvents$GetExtrasEvent;)V
    .locals 9

    .line 196
    new-instance v8, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;

    iget-object v2, p0, Lcom/txdriver/ui/activity/OrderActivity;->app:Lcom/txdriver/App;

    iget-object v3, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v4, p0, Lcom/txdriver/ui/activity/OrderActivity;->selectedCarExtras:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/txdriver/ui/activity/OrderActivity;->selectedDriverExtras:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/txdriver/socket/SocketEvents$GetExtrasEvent;->list:Lcom/txdriver/socket/data/ExtrasList;

    iget-object v6, v0, Lcom/txdriver/socket/data/ExtrasList;->carExtras:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/txdriver/socket/SocketEvents$GetExtrasEvent;->list:Lcom/txdriver/socket/data/ExtrasList;

    iget-object v7, v0, Lcom/txdriver/socket/data/ExtrasList;->driverExtras:Ljava/util/ArrayList;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;-><init>(Landroid/content/Context;Lcom/txdriver/App;Lcom/txdriver/db/Order;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v8}, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->show()V

    .line 197
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/greenrobot/event/EventBus;->removeStickyEvent(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/activity/OrderActivity;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Order;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Order;",
            ">;)V"
        }
    .end annotation

    .line 352
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_8

    .line 355
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    const/4 p1, 0x0

    .line 356
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/db/Order;

    .line 357
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    iget-object v2, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v2, v2, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 358
    :goto_0
    iget-object v2, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    if-eqz v2, :cond_2

    iget-object v2, p2, Lcom/txdriver/db/Order;->tariff:Lcom/txdriver/db/Tariff;

    iget-object v3, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v3, v3, Lcom/txdriver/db/Order;->tariff:Lcom/txdriver/db/Tariff;

    invoke-static {v2, v3}, Lcom/txdriver/utils/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 359
    :goto_1
    iput-object p2, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    .line 360
    iget-object v3, p2, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    sget-object v4, Lcom/txdriver/db/Order$Status;->CANCELED:Lcom/txdriver/db/Order$Status;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v3, v3, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    sget-object v4, Lcom/txdriver/db/Order$Status;->DONE:Lcom/txdriver/db/Order$Status;

    if-ne v3, v4, :cond_3

    goto :goto_2

    .line 362
    :cond_3
    iget-object v3, p0, Lcom/txdriver/ui/activity/OrderActivity;->app:Lcom/txdriver/App;

    iget-object v4, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    invoke-static {v3, v4}, Lcom/txdriver/taximeter/TaximeterHelper;->isUseTaximeter(Lcom/txdriver/App;Lcom/txdriver/db/Order;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 363
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderActivity;->addTaximeterTab()V

    if-nez v0, :cond_4

    if-eqz v2, :cond_6

    .line 365
    :cond_4
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->bar:Landroidx/appcompat/app/ActionBar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_3

    .line 361
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderActivity;->finish()V

    .line 368
    :cond_6
    :goto_3
    iget-object p2, p2, Lcom/txdriver/db/Order;->bankCardPaymentState:Lcom/txdriver/db/Order$BankCardPaymentState;

    sget-object v0, Lcom/txdriver/db/Order$BankCardPaymentState;->PROCESSING:Lcom/txdriver/db/Order$BankCardPaymentState;

    if-ne p2, v0, :cond_7

    const/4 p1, 0x1

    :cond_7
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/OrderActivity;->showPending(Z)V

    goto :goto_4

    .line 370
    :cond_8
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderActivity;->finish()V

    .line 371
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getCurrentOrderId()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_9

    const p1, 0x7f100190

    .line 372
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/OrderActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 374
    :cond_9
    invoke-static {p0}, Lcom/txdriver/ui/activity/OrderActivity;->start(Landroid/content/Context;)V

    .line 377
    :goto_4
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderActivity;->updateButtons()V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Order;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x3e8

    if-eq p1, p2, :cond_0

    return-void

    .line 205
    :cond_0
    array-length p1, p3

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const p1, 0x7f100055

    .line 208
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/OrderActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "android.permission.CALL_PHONE"

    .line 209
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 210
    invoke-static {p0}, Lcom/txdriver/utils/Utils;->launchAppSettings(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 180
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 181
    iget-wide v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->orderId:J

    const-string v2, "extra_order_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 191
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseActivity;->onStart()V

    .line 192
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderActivity;->updateButtons()V

    return-void
.end method

.method public setState(BLjava/lang/String;)V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->isConfirmActions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget v0, v0, Lcom/txdriver/db/Order;->orderId:I

    invoke-static {p0, v0, p1, p2}, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;IBLjava/lang/String;)Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;

    goto :goto_0

    .line 463
    :cond_0
    iget-object p2, p0, Lcom/txdriver/ui/activity/OrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p2}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p2

    new-instance v0, Lcom/txdriver/socket/packet/OrderStatePacket;

    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget v1, v1, Lcom/txdriver/db/Order;->orderId:I

    invoke-direct {v0, v1, p1}, Lcom/txdriver/socket/packet/OrderStatePacket;-><init>(IB)V

    invoke-virtual {p2, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    :goto_0
    return-void
.end method

.method public showPending(Z)V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    if-nez v0, :cond_0

    return-void

    .line 385
    :cond_0
    iget-object v0, v0, Lcom/txdriver/db/Order;->bankCardPaymentState:Lcom/txdriver/db/Order$BankCardPaymentState;

    sget-object v1, Lcom/txdriver/db/Order$BankCardPaymentState;->PROCESSING:Lcom/txdriver/db/Order$BankCardPaymentState;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x1

    const v0, 0x7f100273

    .line 386
    invoke-virtual {p0, p1, v0}, Lcom/txdriver/ui/activity/OrderActivity;->showProgressLayout(ZI)V

    return-void

    .line 389
    :cond_1
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->showPending(Z)V

    return-void
.end method

.method updateButtons()V
    .locals 7

    .line 393
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    if-nez v0, :cond_0

    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->navigatorButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->bar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->callToDispatcherButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v1, v1, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-boolean v1, v1, Lcom/txdriver/db/OrderType;->driverCanCallToDispatcher:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 400
    :catch_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->callToDispatcherButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 403
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->addClientButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v1, v1, Lcom/txdriver/db/Order;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v1, v1, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-boolean v1, v1, Lcom/txdriver/db/OrderType;->driverCanSendInfoAboutClient:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 405
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 406
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->addClientButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 408
    :goto_4
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->dangerButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->showSosButton:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_5

    :cond_4
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->dangerButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->isInDanger()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f08007e

    goto :goto_6

    :cond_5
    const v1, 0x7f08007d

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 411
    sget-object v0, Lcom/txdriver/ui/activity/OrderActivity$20;->$SwitchMap$com$txdriver$db$Order$Source:[I

    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v1, v1, Lcom/txdriver/db/Order;->source:Lcom/txdriver/db/Order$Source;

    invoke-virtual {v1}, Lcom/txdriver/db/Order$Source;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v5, 0x3

    if-eq v0, v5, :cond_a

    .line 424
    sget-object v0, Lcom/txdriver/ui/activity/OrderActivity$20;->$SwitchMap$com$txdriver$db$Order$Status:[I

    iget-object v6, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v6, v6, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    invoke-virtual {v6}, Lcom/txdriver/db/Order$Status;->ordinal()I

    move-result v6

    aget v0, v0, v6

    if-eq v0, v2, :cond_9

    if-eq v0, v1, :cond_8

    if-eq v0, v5, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    .line 454
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->startPerformingButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->addClientButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_7

    .line 447
    :cond_6
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->startPerformingButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->arrivedButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->takeClientButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->doneButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->onRouteButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_7

    .line 440
    :cond_7
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->startPerformingButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->arrivedButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->takeClientButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->doneButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->onRouteButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_7

    .line 433
    :cond_8
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->startPerformingButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->arrivedButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->takeClientButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->doneButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->onRouteButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_7

    .line 426
    :cond_9
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->startPerformingButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->arrivedButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->takeClientButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->doneButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->onRouteButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_7
    return-void

    .line 415
    :cond_a
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->startPerformingButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v1, v1, Lcom/txdriver/db/Order;->source:Lcom/txdriver/db/Order$Source;

    invoke-virtual {v1}, Lcom/txdriver/db/Order$Source;->getStringRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 416
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->startPerformingButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->arrivedButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->takeClientButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->doneButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity;->onRouteButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
