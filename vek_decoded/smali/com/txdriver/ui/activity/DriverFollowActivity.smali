.class public Lcom/txdriver/ui/activity/DriverFollowActivity;
.super Lcom/txdriver/ui/activity/BaseActivity;
.source "DriverFollowActivity.java"


# static fields
.field public static final ACTION_RECEIVED_DRIVER_STATUS:Ljava/lang/String; = "action_received_driver_status"

.field public static final DRIVER_IN_DANGER_EXTRA:Ljava/lang/String; = "driver_in_danger_extra"

.field public static final EXTRA_DRIVER_ID:Ljava/lang/String; = "extra_driver_id"


# instance fields
.field private mDriverInDangerData:Lcom/txdriver/socket/data/DriverInDangerData;

.field private mDriverStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;-><init>()V

    .line 24
    new-instance v0, Lcom/txdriver/ui/activity/DriverFollowActivity$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/DriverFollowActivity$1;-><init>(Lcom/txdriver/ui/activity/DriverFollowActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/DriverFollowActivity;->mDriverStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/activity/DriverFollowActivity;)Lcom/txdriver/socket/data/DriverInDangerData;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/txdriver/ui/activity/DriverFollowActivity;->mDriverInDangerData:Lcom/txdriver/socket/data/DriverInDangerData;

    return-object p0
.end method

.method private registerDriverStatusBroadcastReceiver()V
    .locals 2

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "action_received_driver_status"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/txdriver/ui/activity/DriverFollowActivity;->mDriverStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/txdriver/ui/activity/DriverFollowActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/txdriver/socket/data/DriverInDangerData;)V
    .locals 2

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/txdriver/ui/activity/DriverFollowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "driver_in_danger_extra"

    .line 36
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "driver_in_danger_extra"

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/txdriver/socket/data/DriverInDangerData;

    iput-object p1, p0, Lcom/txdriver/ui/activity/DriverFollowActivity;->mDriverInDangerData:Lcom/txdriver/socket/data/DriverInDangerData;

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/DriverFollowActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/txdriver/socket/data/DriverInDangerData;

    iput-object p1, p0, Lcom/txdriver/ui/activity/DriverFollowActivity;->mDriverInDangerData:Lcom/txdriver/socket/data/DriverInDangerData;

    .line 53
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/txdriver/ui/activity/DriverFollowActivity;->mDriverInDangerData:Lcom/txdriver/socket/data/DriverInDangerData;

    iget v0, v0, Lcom/txdriver/socket/data/DriverInDangerData;->driverId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const v0, 0x7f100057

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/DriverFollowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/DriverFollowActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/DriverFollowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x1020002

    iget-object v1, p0, Lcom/txdriver/ui/activity/DriverFollowActivity;->mDriverInDangerData:Lcom/txdriver/socket/data/DriverInDangerData;

    .line 56
    invoke-static {v1}, Lcom/txdriver/ui/fragment/DriverFollowFragment;->newInstance(Lcom/txdriver/socket/data/DriverInDangerData;)Lcom/txdriver/ui/fragment/DriverFollowFragment;

    move-result-object v1

    .line 55
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 58
    invoke-direct {p0}, Lcom/txdriver/ui/activity/DriverFollowActivity;->registerDriverStatusBroadcastReceiver()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 63
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseActivity;->onDestroy()V

    .line 64
    iget-object v0, p0, Lcom/txdriver/ui/activity/DriverFollowActivity;->mDriverStatusBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/DriverFollowActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 43
    iget-object v0, p0, Lcom/txdriver/ui/activity/DriverFollowActivity;->mDriverInDangerData:Lcom/txdriver/socket/data/DriverInDangerData;

    const-string v1, "driver_in_danger_extra"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
