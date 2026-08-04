.class public Lcom/txdriver/ui/activity/DriverInDangerActivity;
.super Lcom/txdriver/ui/activity/BaseDialogActivity;
.source "DriverInDangerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;,
        Lcom/txdriver/ui/activity/DriverInDangerActivity$FinishEvent;
    }
.end annotation


# static fields
.field public static final DRIVER_EXTRA:Ljava/lang/String; = "driver_extra"


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private cancelButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

.field private driverData:Lcom/txdriver/socket/data/DriverInDangerData;

.field private driverStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private helpButton:Landroid/widget/Button;

.field private helpButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseDialogActivity;-><init>()V

    .line 32
    new-instance v0, Lcom/txdriver/ui/activity/DriverInDangerActivity$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/DriverInDangerActivity$1;-><init>(Lcom/txdriver/ui/activity/DriverInDangerActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity;->helpButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    .line 39
    new-instance v0, Lcom/txdriver/ui/activity/DriverInDangerActivity$2;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/DriverInDangerActivity$2;-><init>(Lcom/txdriver/ui/activity/DriverInDangerActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity;->cancelButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    .line 45
    new-instance v0, Lcom/txdriver/ui/activity/DriverInDangerActivity$3;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/DriverInDangerActivity$3;-><init>(Lcom/txdriver/ui/activity/DriverInDangerActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity;->driverStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/activity/DriverInDangerActivity;)Lcom/txdriver/socket/data/DriverInDangerData;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity;->driverData:Lcom/txdriver/socket/data/DriverInDangerData;

    return-object p0
.end method

.method private registerDriverStatusBroadcastReceiver()V
    .locals 2

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "action_received_driver_status"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity;->driverStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/txdriver/ui/activity/DriverInDangerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 84
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseDialogActivity;->finish()V

    .line 85
    iget-object v0, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/activity/DriverInDangerActivity$FinishEvent;

    iget-object v2, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity;->driverData:Lcom/txdriver/socket/data/DriverInDangerData;

    invoke-direct {v1, v2}, Lcom/txdriver/ui/activity/DriverInDangerActivity$FinishEvent;-><init>(Lcom/txdriver/socket/data/DriverInDangerData;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 57
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0020

    .line 58
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/DriverInDangerActivity;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/DriverInDangerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "driver_extra"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/txdriver/socket/data/DriverInDangerData;

    iput-object p1, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity;->driverData:Lcom/txdriver/socket/data/DriverInDangerData;

    const p1, 0x7f0900b2

    .line 60
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/DriverInDangerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity;->textView:Landroid/widget/TextView;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 61
    iget-object v2, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity;->driverData:Lcom/txdriver/socket/data/DriverInDangerData;

    iget-object v2, v2, Lcom/txdriver/socket/data/DriverInDangerData;->driverName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity;->driverData:Lcom/txdriver/socket/data/DriverInDangerData;

    iget-object v2, v2, Lcom/txdriver/socket/data/DriverInDangerData;->driverCar:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "%s\n%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0900b0

    .line 62
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/DriverInDangerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity;->cancelButton:Landroid/widget/Button;

    .line 63
    iget-object v1, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity;->cancelButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900b1

    .line 64
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/DriverInDangerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity;->helpButton:Landroid/widget/Button;

    .line 65
    iget-object v1, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity;->helpButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity;->driverData:Lcom/txdriver/socket/data/DriverInDangerData;

    iget v1, v1, Lcom/txdriver/socket/data/DriverInDangerData;->driverId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f100057

    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/DriverInDangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "%d %s"

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/DriverInDangerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    invoke-direct {p0}, Lcom/txdriver/ui/activity/DriverInDangerActivity;->registerDriverStatusBroadcastReceiver()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 78
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseDialogActivity;->onDestroy()V

    .line 79
    iget-object v0, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity;->driverStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/DriverInDangerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
