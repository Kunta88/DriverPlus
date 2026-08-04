.class Lcom/txdriver/ui/activity/DriverFollowActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DriverFollowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/DriverFollowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/DriverFollowActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/DriverFollowActivity;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/txdriver/ui/activity/DriverFollowActivity$1;->this$0:Lcom/txdriver/ui/activity/DriverFollowActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "extra_driver_id"

    const/4 v0, -0x1

    .line 27
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/txdriver/ui/activity/DriverFollowActivity$1;->this$0:Lcom/txdriver/ui/activity/DriverFollowActivity;

    invoke-static {p2}, Lcom/txdriver/ui/activity/DriverFollowActivity;->access$000(Lcom/txdriver/ui/activity/DriverFollowActivity;)Lcom/txdriver/socket/data/DriverInDangerData;

    move-result-object p2

    iget p2, p2, Lcom/txdriver/socket/data/DriverInDangerData;->driverId:I

    if-ne p1, p2, :cond_0

    .line 28
    iget-object p1, p0, Lcom/txdriver/ui/activity/DriverFollowActivity$1;->this$0:Lcom/txdriver/ui/activity/DriverFollowActivity;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/txdriver/ui/activity/DriverFollowActivity$1;->this$0:Lcom/txdriver/ui/activity/DriverFollowActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/DriverFollowActivity;->access$000(Lcom/txdriver/ui/activity/DriverFollowActivity;)Lcom/txdriver/socket/data/DriverInDangerData;

    move-result-object v0

    iget v0, v0, Lcom/txdriver/socket/data/DriverInDangerData;->driverId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/txdriver/ui/activity/DriverFollowActivity$1;->this$0:Lcom/txdriver/ui/activity/DriverFollowActivity;

    const v1, 0x7f1000b4

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/activity/DriverFollowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/txdriver/ui/activity/DriverFollowActivity$1;->this$0:Lcom/txdriver/ui/activity/DriverFollowActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/DriverFollowActivity;->finish()V

    :cond_0
    return-void
.end method
