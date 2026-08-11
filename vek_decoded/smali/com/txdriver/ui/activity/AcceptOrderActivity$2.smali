.class Lcom/txdriver/ui/activity/AcceptOrderActivity$2;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "AcceptOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/AcceptOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/AcceptOrderActivity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$2;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 2

    .line 98
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$2;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getSoundManager()Lcom/txdriver/notification/SoundManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/notification/SoundManager;->stop()V

    .line 99
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$2;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->access$000(Lcom/txdriver/ui/activity/AcceptOrderActivity;)Lcom/txdriver/db/Order;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$2;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->access$000(Lcom/txdriver/ui/activity/AcceptOrderActivity;)Lcom/txdriver/db/Order;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->acceptOrder(Lcom/txdriver/db/Order;Ljava/lang/Integer;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$2;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$2;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    iget-object v0, v0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    const v1, 0x7f100190

    invoke-virtual {v0, v1}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$2;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->finish()V

    :goto_0
    return-void
.end method
