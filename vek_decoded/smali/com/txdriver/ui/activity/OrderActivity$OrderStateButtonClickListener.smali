.class final Lcom/txdriver/ui/activity/OrderActivity$OrderStateButtonClickListener;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "OrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/OrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OrderStateButtonClickListener"
.end annotation


# instance fields
.field private activity:Lcom/txdriver/ui/activity/OrderActivity;

.field private delegate:Lcom/txdriver/ui/view/ViewOnClickListener;


# direct methods
.method private constructor <init>(Lcom/txdriver/ui/activity/OrderActivity;Lcom/txdriver/ui/view/ViewOnClickListener;)V
    .locals 0

    .line 581
    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    .line 582
    iput-object p2, p0, Lcom/txdriver/ui/activity/OrderActivity$OrderStateButtonClickListener;->delegate:Lcom/txdriver/ui/view/ViewOnClickListener;

    .line 583
    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$OrderStateButtonClickListener;->activity:Lcom/txdriver/ui/activity/OrderActivity;

    return-void
.end method

.method synthetic constructor <init>(Lcom/txdriver/ui/activity/OrderActivity;Lcom/txdriver/ui/view/ViewOnClickListener;Lcom/txdriver/ui/activity/OrderActivity$1;)V
    .locals 0

    .line 577
    invoke-direct {p0, p1, p2}, Lcom/txdriver/ui/activity/OrderActivity$OrderStateButtonClickListener;-><init>(Lcom/txdriver/ui/activity/OrderActivity;Lcom/txdriver/ui/view/ViewOnClickListener;)V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity$OrderStateButtonClickListener;->activity:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/OrderActivity;->access$000(Lcom/txdriver/ui/activity/OrderActivity;)Lcom/txdriver/db/Order;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 591
    :cond_0
    sget-object v0, Lcom/txdriver/ui/activity/OrderActivity$20;->$SwitchMap$com$txdriver$db$Order$Source:[I

    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity$OrderStateButtonClickListener;->activity:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {v1}, Lcom/txdriver/ui/activity/OrderActivity;->access$000(Lcom/txdriver/ui/activity/OrderActivity;)Lcom/txdriver/db/Order;

    move-result-object v1

    iget-object v1, v1, Lcom/txdriver/db/Order;->source:Lcom/txdriver/db/Order$Source;

    invoke-virtual {v1}, Lcom/txdriver/db/Order$Source;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 602
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity$OrderStateButtonClickListener;->delegate:Lcom/txdriver/ui/view/ViewOnClickListener;

    invoke-virtual {v0, p1}, Lcom/txdriver/ui/view/ViewOnClickListener;->onViewClick(Landroid/view/View;)V

    goto :goto_0

    .line 596
    :cond_1
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$OrderStateButtonClickListener;->activity:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {p1}, Lcom/txdriver/utils/Utils;->launchGettDriver(Landroid/content/Context;)V

    goto :goto_0

    .line 599
    :cond_2
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$OrderStateButtonClickListener;->activity:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {p1}, Lcom/txdriver/utils/Utils;->launchUberDriver(Landroid/content/Context;)V

    goto :goto_0

    .line 593
    :cond_3
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$OrderStateButtonClickListener;->activity:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {p1}, Lcom/txdriver/utils/Utils;->launchYandexTaximeter(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
