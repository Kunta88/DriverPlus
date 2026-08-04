.class Lcom/txdriver/ui/activity/AcceptOrderActivity$6;
.super Ljava/lang/Object;
.source "AcceptOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/AcceptOrderActivity;->initAcceptButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

.field final synthetic val$deliveryTime:Lcom/txdriver/db/DeliveryTime;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/AcceptOrderActivity;Lcom/txdriver/db/DeliveryTime;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$6;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    iput-object p2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$6;->val$deliveryTime:Lcom/txdriver/db/DeliveryTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 301
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$6;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->access$000(Lcom/txdriver/ui/activity/AcceptOrderActivity;)Lcom/txdriver/db/Order;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 302
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$6;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->access$000(Lcom/txdriver/ui/activity/AcceptOrderActivity;)Lcom/txdriver/db/Order;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$6;->val$deliveryTime:Lcom/txdriver/db/DeliveryTime;

    iget v1, v1, Lcom/txdriver/db/DeliveryTime;->time:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->acceptOrder(Lcom/txdriver/db/Order;Ljava/lang/Integer;)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$6;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$6;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    iget-object v0, v0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    const v1, 0x7f100190

    invoke-virtual {v0, v1}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$6;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->finish()V

    :goto_0
    return-void
.end method
