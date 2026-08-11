.class Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment$1;
.super Ljava/lang/Object;
.source "ConfirmOrderStateDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 58
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    new-instance p2, Lcom/txdriver/socket/packet/OrderStatePacket;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;

    invoke-static {v0}, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;->access$000(Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;

    invoke-static {v1}, Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;->access$100(Lcom/txdriver/ui/fragment/dialog/ConfirmOrderStateDialogFragment;)B

    move-result v1

    invoke-direct {p2, v0, v1}, Lcom/txdriver/socket/packet/OrderStatePacket;-><init>(IB)V

    invoke-virtual {p1, p2}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    return-void
.end method
