.class Lcom/txdriver/ui/activity/AcceptOrderActivity$3;
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

    .line 107
    iput-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 3

    .line 110
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getSoundManager()Lcom/txdriver/notification/SoundManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/notification/SoundManager;->stop()V

    .line 111
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->access$000(Lcom/txdriver/ui/activity/AcceptOrderActivity;)Lcom/txdriver/db/Order;

    move-result-object p1

    if-nez p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    iget-object v0, v0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    const v1, 0x7f100190

    invoke-virtual {v0, v1}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->finish()V

    return-void

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->access$000(Lcom/txdriver/ui/activity/AcceptOrderActivity;)Lcom/txdriver/db/Order;

    move-result-object p1

    iget-object p1, p1, Lcom/txdriver/db/Order;->kind:Lcom/txdriver/db/Order$Kind;

    sget-object v0, Lcom/txdriver/db/Order$Kind;->NONE:Lcom/txdriver/db/Order$Kind;

    if-ne p1, v0, :cond_2

    .line 117
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050005

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 118
    invoke-static {}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->newInstance()Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;

    move-result-object p1

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p1, v0}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setCancelable(Z)V

    .line 120
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    const v1, 0x7f100038

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 121
    new-instance v0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity$3$1;-><init>(Lcom/txdriver/ui/activity/AcceptOrderActivity$3;)V

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 129
    new-instance v0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3$2;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity$3$2;-><init>(Lcom/txdriver/ui/activity/AcceptOrderActivity$3;Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;)V

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->access$100(Lcom/txdriver/ui/activity/AcceptOrderActivity;)Lcom/txdriver/ui/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->access$000(Lcom/txdriver/ui/activity/AcceptOrderActivity;)Lcom/txdriver/db/Order;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/db/Order;->delete()V

    .line 138
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    new-instance v0, Lcom/txdriver/socket/packet/CancelOrderPacket;

    iget-object v1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-static {v1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->access$000(Lcom/txdriver/ui/activity/AcceptOrderActivity;)Lcom/txdriver/db/Order;

    move-result-object v1

    iget v1, v1, Lcom/txdriver/db/Order;->orderId:I

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/txdriver/socket/packet/CancelOrderPacket;-><init>(IB)V

    invoke-virtual {p1, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    .line 139
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->finish()V

    goto :goto_0

    .line 142
    :cond_2
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3;->this$0:Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->finish()V

    :goto_0
    return-void
.end method
