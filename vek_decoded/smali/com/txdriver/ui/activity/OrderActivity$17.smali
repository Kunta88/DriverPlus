.class Lcom/txdriver/ui/activity/OrderActivity$17;
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

    .line 534
    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$17;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    iput-object p2, p0, Lcom/txdriver/ui/activity/OrderActivity$17;->val$dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 537
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$17;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/OrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    new-instance v0, Lcom/txdriver/socket/packet/GetAvailableExtrasPacket;

    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderActivity$17;->this$0:Lcom/txdriver/ui/activity/OrderActivity;

    invoke-static {v1}, Lcom/txdriver/ui/activity/OrderActivity;->access$000(Lcom/txdriver/ui/activity/OrderActivity;)Lcom/txdriver/db/Order;

    move-result-object v1

    iget v1, v1, Lcom/txdriver/db/Order;->orderId:I

    invoke-direct {v0, v1}, Lcom/txdriver/socket/packet/GetAvailableExtrasPacket;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    .line 538
    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderActivity$17;->val$dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method
