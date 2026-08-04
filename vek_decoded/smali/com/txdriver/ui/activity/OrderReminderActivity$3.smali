.class Lcom/txdriver/ui/activity/OrderReminderActivity$3;
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

    .line 68
    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$3;->this$0:Lcom/txdriver/ui/activity/OrderReminderActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 2

    .line 71
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$3;->this$0:Lcom/txdriver/ui/activity/OrderReminderActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/OrderReminderActivity;->access$000(Lcom/txdriver/ui/activity/OrderReminderActivity;)Lcom/txdriver/db/Order;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$3;->this$0:Lcom/txdriver/ui/activity/OrderReminderActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/OrderReminderActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$3;->this$0:Lcom/txdriver/ui/activity/OrderReminderActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/OrderReminderActivity;->access$000(Lcom/txdriver/ui/activity/OrderReminderActivity;)Lcom/txdriver/db/Order;

    move-result-object v0

    iget v0, v0, Lcom/txdriver/db/Order;->orderId:I

    invoke-static {p1, v0}, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->show(Landroidx/fragment/app/FragmentManager;I)Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;

    move-result-object p1

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, v0}, Lcom/txdriver/ui/fragment/dialog/CancelOrderDialogFragment;->setCancelable(Z)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$3;->this$0:Lcom/txdriver/ui/activity/OrderReminderActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/OrderReminderActivity;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$3;->this$0:Lcom/txdriver/ui/activity/OrderReminderActivity;

    iget-object v0, v0, Lcom/txdriver/ui/activity/OrderReminderActivity;->app:Lcom/txdriver/App;

    const v1, 0x7f100190

    invoke-virtual {v0, v1}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
