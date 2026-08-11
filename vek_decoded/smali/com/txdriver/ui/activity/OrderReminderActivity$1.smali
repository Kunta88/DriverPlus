.class Lcom/txdriver/ui/activity/OrderReminderActivity$1;
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

    .line 47
    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$1;->this$0:Lcom/txdriver/ui/activity/OrderReminderActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 2

    .line 50
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$1;->this$0:Lcom/txdriver/ui/activity/OrderReminderActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/OrderReminderActivity;->access$000(Lcom/txdriver/ui/activity/OrderReminderActivity;)Lcom/txdriver/db/Order;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$1;->this$0:Lcom/txdriver/ui/activity/OrderReminderActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/OrderReminderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    new-instance v0, Lcom/txdriver/socket/packet/CallToDispatcherPacket;

    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$1;->this$0:Lcom/txdriver/ui/activity/OrderReminderActivity;

    invoke-static {v1}, Lcom/txdriver/ui/activity/OrderReminderActivity;->access$000(Lcom/txdriver/ui/activity/OrderReminderActivity;)Lcom/txdriver/db/Order;

    move-result-object v1

    iget v1, v1, Lcom/txdriver/db/Order;->orderId:I

    invoke-direct {v0, v1}, Lcom/txdriver/socket/packet/CallToDispatcherPacket;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$1;->this$0:Lcom/txdriver/ui/activity/OrderReminderActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/OrderReminderActivity;->getParent()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$1;->this$0:Lcom/txdriver/ui/activity/OrderReminderActivity;

    const v1, 0x7f100029

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/activity/OrderReminderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
