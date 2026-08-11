.class Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$1;
.super Ljava/lang/Object;
.source "OrderPriceDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getStatus()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 104
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/txdriver/taximeter/Taximeter;->pause(Z)V

    :cond_0
    return-void
.end method
