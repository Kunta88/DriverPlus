.class Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment$2;
.super Lcom/txdriver/ui/view/DialogOnClickListener;
.source "ParkingDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;

    invoke-direct {p0}, Lcom/txdriver/ui/view/DialogOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDebouncedClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->access$200(Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;)I

    move-result p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;

    invoke-static {p2}, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->access$300(Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 79
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;

    const v0, 0x7f1000cc

    invoke-virtual {p2, v0}, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->access$000(Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;)Lcom/txdriver/db/Parking;

    move-result-object p2

    iget p2, p2, Lcom/txdriver/db/Parking;->parkingId:I

    invoke-static {p1, p2}, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->access$100(Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;I)V

    :goto_0
    return-void
.end method
