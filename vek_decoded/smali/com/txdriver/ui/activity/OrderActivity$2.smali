.class Lcom/txdriver/ui/activity/OrderActivity$2;
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

    .line 117
    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$2;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 2

    .line 120
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$2;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/OrderActivity;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity$2;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/OrderActivity;->access$000(Lcom/txdriver/ui/activity/OrderActivity;)Lcom/txdriver/db/Order;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/order/OrderHelper;->isFarFromClient(Lcom/txdriver/App;Lcom/txdriver/db/Order;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$2;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    const v0, 0x7f100287

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/activity/OrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$2;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    const/4 v0, 0x3

    invoke-static {p1}, Lcom/txdriver/ui/activity/OrderActivity;->access$100(Lcom/txdriver/ui/activity/OrderActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/txdriver/ui/activity/OrderActivity;->setState(BLjava/lang/String;)V

    :goto_0
    return-void
.end method
