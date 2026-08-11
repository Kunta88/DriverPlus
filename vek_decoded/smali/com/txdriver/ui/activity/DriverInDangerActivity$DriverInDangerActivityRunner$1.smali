.class Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner$1;
.super Landroid/content/BroadcastReceiver;
.source "DriverInDangerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner$1;->this$0:Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "extra_driver_id"

    const/4 v0, -0x1

    .line 111
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner$1;->this$0:Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;

    invoke-static {p2}, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->access$100(Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;)Lcom/txdriver/socket/data/DriverInDangerData;

    move-result-object p2

    iget p2, p2, Lcom/txdriver/socket/data/DriverInDangerData;->driverId:I

    if-ne p1, p2, :cond_0

    .line 112
    iget-object p1, p0, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner$1;->this$0:Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;

    invoke-static {p1}, Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;->access$200(Lcom/txdriver/ui/activity/DriverInDangerActivity$DriverInDangerActivityRunner;)V

    :cond_0
    return-void
.end method
