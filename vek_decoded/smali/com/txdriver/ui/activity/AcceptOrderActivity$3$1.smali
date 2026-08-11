.class Lcom/txdriver/ui/activity/AcceptOrderActivity$3$1;
.super Ljava/lang/Object;
.source "AcceptOrderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/AcceptOrderActivity$3;->onViewClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/txdriver/ui/activity/AcceptOrderActivity$3;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/AcceptOrderActivity$3;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3$1;->this$1:Lcom/txdriver/ui/activity/AcceptOrderActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 124
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3$1;->this$1:Lcom/txdriver/ui/activity/AcceptOrderActivity$3;

    iget-object p1, p1, Lcom/txdriver/ui/activity/AcceptOrderActivity$3;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->access$000(Lcom/txdriver/ui/activity/AcceptOrderActivity;)Lcom/txdriver/db/Order;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/db/Order;->delete()V

    .line 125
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3$1;->this$1:Lcom/txdriver/ui/activity/AcceptOrderActivity$3;

    iget-object p1, p1, Lcom/txdriver/ui/activity/AcceptOrderActivity$3;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    new-instance p2, Lcom/txdriver/socket/packet/CancelOrderPacket;

    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3$1;->this$1:Lcom/txdriver/ui/activity/AcceptOrderActivity$3;

    iget-object v0, v0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->access$000(Lcom/txdriver/ui/activity/AcceptOrderActivity;)Lcom/txdriver/db/Order;

    move-result-object v0

    iget v0, v0, Lcom/txdriver/db/Order;->orderId:I

    const/4 v1, -0x1

    invoke-direct {p2, v0, v1}, Lcom/txdriver/socket/packet/CancelOrderPacket;-><init>(IB)V

    invoke-virtual {p1, p2}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    .line 126
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3$1;->this$1:Lcom/txdriver/ui/activity/AcceptOrderActivity$3;

    iget-object p1, p1, Lcom/txdriver/ui/activity/AcceptOrderActivity$3;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->finish()V

    return-void
.end method
