.class Lcom/txdriver/ui/activity/OrderActivity$8;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "OrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/OrderActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 228
    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$8;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 2

    .line 231
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$8;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/OrderActivity;->access$000(Lcom/txdriver/ui/activity/OrderActivity;)Lcom/txdriver/db/Order;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 232
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$8;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/OrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    new-instance v0, Lcom/txdriver/socket/packet/CallToDispatcherPacket;

    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity$8;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {v1}, Lcom/txdriver/ui/activity/OrderActivity;->access$000(Lcom/txdriver/ui/activity/OrderActivity;)Lcom/txdriver/db/Order;

    move-result-object v1

    iget v1, v1, Lcom/txdriver/db/Order;->orderId:I

    invoke-direct {v0, v1}, Lcom/txdriver/socket/packet/CallToDispatcherPacket;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$8;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/OrderActivity;->getParent()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity$8;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    const v1, 0x7f100029

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/activity/OrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
