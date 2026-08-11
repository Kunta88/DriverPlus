.class Lcom/txdriver/ui/fragment/dialog/ConfirmLeaveParkingDialogFragment$1;
.super Ljava/lang/Object;
.source "ConfirmLeaveParkingDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/dialog/ConfirmLeaveParkingDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/ConfirmLeaveParkingDialogFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/ConfirmLeaveParkingDialogFragment;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmLeaveParkingDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ConfirmLeaveParkingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 38
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmLeaveParkingDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ConfirmLeaveParkingDialogFragment;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/dialog/ConfirmLeaveParkingDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    new-instance p2, Lcom/txdriver/socket/packet/LeaveAllParkingsPacket;

    invoke-direct {p2}, Lcom/txdriver/socket/packet/LeaveAllParkingsPacket;-><init>()V

    invoke-virtual {p1, p2}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    return-void
.end method
