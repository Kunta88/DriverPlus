.class Lcom/txdriver/ui/menu/EditOrderExtrasMenu$2;
.super Ljava/lang/Object;
.source "EditOrderExtrasMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/menu/EditOrderExtrasMenu;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/menu/EditOrderExtrasMenu;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu$2;->this$0:Lcom/txdriver/ui/menu/EditOrderExtrasMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 73
    iget-object p1, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu$2;->this$0:Lcom/txdriver/ui/menu/EditOrderExtrasMenu;

    invoke-static {p1}, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->access$400(Lcom/txdriver/ui/menu/EditOrderExtrasMenu;)Lcom/txdriver/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    new-instance v0, Lcom/txdriver/socket/packet/EditOrderExtrasPacket;

    iget-object v1, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu$2;->this$0:Lcom/txdriver/ui/menu/EditOrderExtrasMenu;

    invoke-static {v1}, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->access$100(Lcom/txdriver/ui/menu/EditOrderExtrasMenu;)Lcom/txdriver/db/Order;

    move-result-object v1

    iget v1, v1, Lcom/txdriver/db/Order;->orderId:I

    iget-object v2, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu$2;->this$0:Lcom/txdriver/ui/menu/EditOrderExtrasMenu;

    invoke-static {v2}, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->access$200(Lcom/txdriver/ui/menu/EditOrderExtrasMenu;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu$2;->this$0:Lcom/txdriver/ui/menu/EditOrderExtrasMenu;

    invoke-static {v3}, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->access$300(Lcom/txdriver/ui/menu/EditOrderExtrasMenu;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/txdriver/socket/packet/EditOrderExtrasPacket;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    .line 74
    iget-object p1, p0, Lcom/txdriver/ui/menu/EditOrderExtrasMenu$2;->this$0:Lcom/txdriver/ui/menu/EditOrderExtrasMenu;

    invoke-static {p1}, Lcom/txdriver/ui/menu/EditOrderExtrasMenu;->access$000(Lcom/txdriver/ui/menu/EditOrderExtrasMenu;)Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method
