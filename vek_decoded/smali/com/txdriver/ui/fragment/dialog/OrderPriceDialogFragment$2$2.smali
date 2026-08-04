.class Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$2;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "OrderPriceDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$2;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 3

    .line 170
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$2;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$2;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object v0, v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->val$paymentsView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->updateSpinnersAdapters(Landroid/widget/LinearLayout;)V

    .line 171
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$2;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$2;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-wide v0, v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->val$orderPrice:D

    iget-object v2, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$2;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object v2, v2, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->val$paymentsView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v1, v2}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->addPaymentView(DLandroid/widget/LinearLayout;)V

    .line 172
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$2;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$2;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object v0, v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->val$paymentsView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->setNeutralButtonVisibility(Landroid/widget/LinearLayout;)V

    return-void
.end method
