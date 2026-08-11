.class Lcom/txdriver/ui/activity/OrderActivity$18;
.super Ljava/lang/Object;
.source "OrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/OrderActivity;->showBottomSheetMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/OrderActivity;

.field final synthetic val$dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/OrderActivity;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$18;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    iput-object p2, p0, Lcom/txdriver/ui/activity/OrderActivity$18;->val$dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 545
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$18;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/OrderActivity;->access$000(Lcom/txdriver/ui/activity/OrderActivity;)Lcom/txdriver/db/Order;

    move-result-object p1

    iget-object p1, p1, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget p1, p1, Lcom/txdriver/db/OrderType;->callToClient:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 547
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$18;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/OrderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "android.hardware.telephony"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$18;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/OrderActivity;->access$000(Lcom/txdriver/ui/activity/OrderActivity;)Lcom/txdriver/db/Order;

    move-result-object p1

    iget-object p1, p1, Lcom/txdriver/db/Order;->phoneNumber:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 548
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-array v1, v0, [Ljava/lang/Object;

    .line 549
    iget-object v2, p0, Lcom/txdriver/ui/activity/OrderActivity$18;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {v2}, Lcom/txdriver/ui/activity/OrderActivity;->access$000(Lcom/txdriver/ui/activity/OrderActivity;)Lcom/txdriver/db/Order;

    move-result-object v2

    iget-object v2, v2, Lcom/txdriver/db/Order;->phoneNumber:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "tel:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 550
    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity$18;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    iget-object v1, v1, Lcom/txdriver/ui/activity/OrderActivity;->app:Lcom/txdriver/App;

    const-string v2, "android.permission.CALL_PHONE"

    invoke-static {v1, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$18;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    const/16 v1, 0x3e8

    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity$18;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-virtual {v0, p1}, Lcom/txdriver/ui/activity/OrderActivity;->startActivity(Landroid/content/Intent;)V

    .line 554
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$18;->val$dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    goto :goto_0

    .line 557
    :cond_2
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$18;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/OrderActivity;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity$18;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    const v1, 0x7f1001cc

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/activity/OrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 561
    :cond_3
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$18;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/OrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    new-instance v0, Lcom/txdriver/socket/packet/CallToClientPacket;

    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity$18;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {v1}, Lcom/txdriver/ui/activity/OrderActivity;->access$000(Lcom/txdriver/ui/activity/OrderActivity;)Lcom/txdriver/db/Order;

    move-result-object v1

    iget v1, v1, Lcom/txdriver/db/Order;->orderId:I

    invoke-direct {v0, v1}, Lcom/txdriver/socket/packet/CallToClientPacket;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    .line 562
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$18;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/OrderActivity;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderActivity$18;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    const v1, 0x7f100059

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/activity/OrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 563
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$18;->val$dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    :goto_0
    return-void
.end method
