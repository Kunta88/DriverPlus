.class Lcom/txdriver/ui/activity/OrderReminderActivity$2;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "OrderReminderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/OrderReminderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/OrderReminderActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/OrderReminderActivity;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$2;->this$0:Lcom/txdriver/ui/activity/OrderReminderActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 3

    .line 60
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$2;->this$0:Lcom/txdriver/ui/activity/OrderReminderActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/OrderReminderActivity;->access$000(Lcom/txdriver/ui/activity/OrderReminderActivity;)Lcom/txdriver/db/Order;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$2;->this$0:Lcom/txdriver/ui/activity/OrderReminderActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/OrderReminderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    new-instance v0, Lcom/txdriver/socket/packet/OrderStatePacket;

    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$2;->this$0:Lcom/txdriver/ui/activity/OrderReminderActivity;

    invoke-static {v1}, Lcom/txdriver/ui/activity/OrderReminderActivity;->access$000(Lcom/txdriver/ui/activity/OrderReminderActivity;)Lcom/txdriver/db/Order;

    move-result-object v1

    iget v1, v1, Lcom/txdriver/db/Order;->orderId:I

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/txdriver/socket/packet/OrderStatePacket;-><init>(IB)V

    invoke-virtual {p1, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$2;->this$0:Lcom/txdriver/ui/activity/OrderReminderActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/OrderReminderActivity;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$2;->this$0:Lcom/txdriver/ui/activity/OrderReminderActivity;

    iget-object v0, v0, Lcom/txdriver/ui/activity/OrderReminderActivity;->app:Lcom/txdriver/App;

    const v1, 0x7f100190

    invoke-virtual {v0, v1}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    :goto_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$2;->this$0:Lcom/txdriver/ui/activity/OrderReminderActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/OrderReminderActivity;->finish()V

    return-void
.end method
