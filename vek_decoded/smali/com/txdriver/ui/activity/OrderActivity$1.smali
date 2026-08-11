.class Lcom/txdriver/ui/activity/OrderActivity$1;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "OrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/OrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/OrderActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/OrderActivity;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$1;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 4

    .line 105
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$1;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/OrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getCurrentOrderId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    .line 106
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$1;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/OrderActivity;->access$000(Lcom/txdriver/ui/activity/OrderActivity;)Lcom/txdriver/db/Order;

    move-result-object p1

    invoke-static {p1}, Lcom/txdriver/order/OrderHelper;->canStartPerforming(Lcom/txdriver/db/Order;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$1;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/OrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    new-instance v0, Lcom/txdriver/socket/packet/OrderStatePacket;

    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity$1;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {v1}, Lcom/txdriver/ui/activity/OrderActivity;->access$000(Lcom/txdriver/ui/activity/OrderActivity;)Lcom/txdriver/db/Order;

    move-result-object v1

    iget v1, v1, Lcom/txdriver/db/Order;->orderId:I

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/txdriver/socket/packet/OrderStatePacket;-><init>(IB)V

    invoke-virtual {p1, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$1;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    const v0, 0x7f10022a

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/activity/OrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/txdriver/ui/activity/OrderActivity$1;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {v3}, Lcom/txdriver/ui/activity/OrderActivity;->access$000(Lcom/txdriver/ui/activity/OrderActivity;)Lcom/txdriver/db/Order;

    move-result-object v3

    invoke-virtual {v3}, Lcom/txdriver/db/Order;->getReminderTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$1;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    const v0, 0x7f100029

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/activity/OrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
