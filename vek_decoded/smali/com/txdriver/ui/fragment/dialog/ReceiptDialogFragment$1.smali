.class Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$1;
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


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->access$000(Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;)Lcom/txdriver/taximeter/Taximeter;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/txdriver/taximeter/Taximeter;->pause(Z)V

    return-void
.end method
