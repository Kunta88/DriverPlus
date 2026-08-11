.class Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment$1;
.super Ljava/lang/Object;
.source "ParkingDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 67
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->access$000(Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;)Lcom/txdriver/db/Parking;

    move-result-object p2

    iget p2, p2, Lcom/txdriver/db/Parking;->parkingId:I

    mul-int/lit8 p2, p2, -0x1

    invoke-static {p1, p2}, Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;->access$100(Lcom/txdriver/ui/fragment/dialog/ParkingDialogFragment;I)V

    return-void
.end method
