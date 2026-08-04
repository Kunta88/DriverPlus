.class public Lcom/txdriver/ui/activity/OrderReminderActivity;
.super Lcom/txdriver/ui/activity/BaseDialogActivity;
.source "OrderReminderActivity.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;,
        Lcom/txdriver/ui/activity/OrderReminderActivity$FinishEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/ui/activity/BaseDialogActivity;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/txdriver/db/Order;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final EXTRA_ID:Ljava/lang/String; = "id_extra"

.field private static final LOADER_ORDER:I = 0x7ef


# instance fields
.field private acceptButton:Landroid/widget/TextView;

.field private acceptButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

.field private callToDispatcherButton:Landroid/widget/ImageButton;

.field private callToDispatcherClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

.field private order:Lcom/txdriver/db/Order;

.field private orderId:J

.field private orderView:Lcom/txdriver/ui/view/OrderView;

.field private rejectButton:Landroid/widget/TextView;

.field private rejectButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseDialogActivity;-><init>()V

    .line 47
    new-instance v0, Lcom/txdriver/ui/activity/OrderReminderActivity$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/OrderReminderActivity$1;-><init>(Lcom/txdriver/ui/activity/OrderReminderActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/OrderReminderActivity;->callToDispatcherClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    .line 57
    new-instance v0, Lcom/txdriver/ui/activity/OrderReminderActivity$2;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/OrderReminderActivity$2;-><init>(Lcom/txdriver/ui/activity/OrderReminderActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/OrderReminderActivity;->acceptButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    .line 68
    new-instance v0, Lcom/txdriver/ui/activity/OrderReminderActivity$3;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/OrderReminderActivity$3;-><init>(Lcom/txdriver/ui/activity/OrderReminderActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/OrderReminderActivity;->rejectButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/activity/OrderReminderActivity;)Lcom/txdriver/db/Order;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/txdriver/ui/activity/OrderReminderActivity;->order:Lcom/txdriver/db/Order;

    return-object p0
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 123
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseDialogActivity;->finish()V

    .line 124
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderReminderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/activity/OrderReminderActivity$FinishEvent;

    iget-wide v2, p0, Lcom/txdriver/ui/activity/OrderReminderActivity;->orderId:J

    invoke-direct {v1, v2, v3}, Lcom/txdriver/ui/activity/OrderReminderActivity$FinishEvent;-><init>(J)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 82
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 83
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/OrderReminderActivity;->supportRequestWindowFeature(I)Z

    const p1, 0x7f0c0028

    .line 84
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/OrderReminderActivity;->setContentView(I)V

    const p1, 0x7f0901c0

    .line 85
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/OrderReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/txdriver/ui/view/OrderView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity;->orderView:Lcom/txdriver/ui/view/OrderView;

    const p1, 0x7f0901c2

    .line 86
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/OrderReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity;->callToDispatcherButton:Landroid/widget/ImageButton;

    .line 87
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderReminderActivity;->callToDispatcherClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901c1

    .line 88
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/OrderReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity;->acceptButton:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderReminderActivity;->acceptButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901c3

    .line 90
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/OrderReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity;->rejectButton:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderReminderActivity;->rejectButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderReminderActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "id_extra"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/ui/activity/OrderReminderActivity;->orderId:J

    .line 93
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderReminderActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/16 v0, 0x7ef

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

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

    .line 98
    new-instance p1, Lcom/txdriver/ui/loader/OrdersLoader;

    new-instance p2, Lcom/activeandroid/query/Select;

    invoke-direct {p2}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v0, Lcom/txdriver/db/Order;

    invoke-virtual {p2, v0}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity;->orderId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "id = ?"

    invoke-virtual {p2, v1, v0}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/txdriver/ui/loader/OrdersLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/activity/OrderReminderActivity;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 2
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

    .line 103
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 104
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/db/Order;

    iput-object p2, p0, Lcom/txdriver/ui/activity/OrderReminderActivity;->order:Lcom/txdriver/db/Order;

    .line 105
    iget-object p2, p2, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    sget-object v0, Lcom/txdriver/db/Order$Status;->CANCELED:Lcom/txdriver/db/Order$Status;

    if-ne p2, v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderReminderActivity;->finish()V

    .line 108
    :cond_0
    iget-object p2, p0, Lcom/txdriver/ui/activity/OrderReminderActivity;->orderView:Lcom/txdriver/ui/view/OrderView;

    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderReminderActivity;->order:Lcom/txdriver/db/Order;

    invoke-virtual {p2, v0}, Lcom/txdriver/ui/view/OrderView;->setOrder(Lcom/txdriver/db/Order;)V

    .line 109
    iget-object p2, p0, Lcom/txdriver/ui/activity/OrderReminderActivity;->callToDispatcherButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderReminderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v0, v0, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-boolean v0, v0, Lcom/txdriver/db/OrderType;->driverCanCallToDispatcher:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 110
    iget-object p2, p0, Lcom/txdriver/ui/activity/OrderReminderActivity;->rejectButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderReminderActivity;->order:Lcom/txdriver/db/Order;

    invoke-static {v0}, Lcom/txdriver/order/OrderHelper;->canCancelOrder(Lcom/txdriver/db/Order;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderReminderActivity;->finish()V

    :goto_2
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
