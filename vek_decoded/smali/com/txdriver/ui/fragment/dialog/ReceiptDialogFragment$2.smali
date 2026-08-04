.class Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$2;
.super Ljava/lang/Object;
.source "ReceiptDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;

.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$2;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 104
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->access$100(Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;)Lcom/txdriver/db/Order;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p2, p1, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    sget-object v0, Lcom/txdriver/db/Order$Status;->ON_ROUTE:Lcom/txdriver/db/Order$Status;

    if-ne p2, v0, :cond_0

    .line 106
    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;

    iget-object p2, p2, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$2;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p2, v0, p1}, Lcom/txdriver/order/OrderHelper;->doneOrder(Lcom/txdriver/App;Landroidx/fragment/app/FragmentActivity;Lcom/txdriver/db/Order;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->access$000(Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;)Lcom/txdriver/taximeter/Taximeter;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/txdriver/taximeter/Taximeter;->pause(Z)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->access$000(Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;)Lcom/txdriver/taximeter/Taximeter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->stopAndReset()V

    :cond_1
    :goto_0
    return-void
.end method
