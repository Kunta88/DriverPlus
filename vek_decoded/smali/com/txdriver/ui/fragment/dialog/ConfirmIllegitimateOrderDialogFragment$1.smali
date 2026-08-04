.class Lcom/txdriver/ui/fragment/dialog/ConfirmIllegitimateOrderDialogFragment$1;
.super Ljava/lang/Object;
.source "ConfirmIllegitimateOrderDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/dialog/ConfirmIllegitimateOrderDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/ConfirmIllegitimateOrderDialogFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/ConfirmIllegitimateOrderDialogFragment;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmIllegitimateOrderDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ConfirmIllegitimateOrderDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 37
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmIllegitimateOrderDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ConfirmIllegitimateOrderDialogFragment;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/dialog/ConfirmIllegitimateOrderDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    new-instance p2, Lcom/txdriver/socket/packet/IllegitimateOrderPacket;

    invoke-direct {p2}, Lcom/txdriver/socket/packet/IllegitimateOrderPacket;-><init>()V

    invoke-virtual {p1, p2}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    return-void
.end method
