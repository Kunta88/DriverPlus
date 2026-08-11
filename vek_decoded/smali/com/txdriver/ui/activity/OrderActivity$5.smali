.class Lcom/txdriver/ui/activity/OrderActivity$5;
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

    .line 150
    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$5;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 2

    .line 153
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$5;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/OrderActivity;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity$5;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/OrderActivity;->access$000(Lcom/txdriver/ui/activity/OrderActivity;)Lcom/txdriver/db/Order;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/taximeter/TaximeterHelper;->isUseTaximeter(Lcom/txdriver/App;Lcom/txdriver/db/Order;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$5;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;)Landroidx/fragment/app/DialogFragment;

    goto :goto_0

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$5;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/OrderActivity;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity$5;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/OrderActivity;->access$000(Lcom/txdriver/ui/activity/OrderActivity;)Lcom/txdriver/db/Order;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/txdriver/order/OrderHelper;->doneOrder(Lcom/txdriver/App;Landroidx/fragment/app/FragmentActivity;Lcom/txdriver/db/Order;)Z

    :goto_0
    return-void
.end method
