.class Lcom/txdriver/ui/fragment/dialog/ConfirmCloseSessionDialogFragment$1;
.super Ljava/lang/Object;
.source "ConfirmCloseSessionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/dialog/ConfirmCloseSessionDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/ConfirmCloseSessionDialogFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/ConfirmCloseSessionDialogFragment;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmCloseSessionDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ConfirmCloseSessionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmCloseSessionDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ConfirmCloseSessionDialogFragment;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/dialog/ConfirmCloseSessionDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    new-instance p2, Lcom/txdriver/socket/packet/CloseSessionPacket;

    invoke-direct {p2}, Lcom/txdriver/socket/packet/CloseSessionPacket;-><init>()V

    invoke-virtual {p1, p2}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    return-void
.end method
