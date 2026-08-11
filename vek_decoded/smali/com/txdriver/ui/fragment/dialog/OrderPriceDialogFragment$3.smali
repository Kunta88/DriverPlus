.class Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;
.super Ljava/lang/Object;
.source "OrderPriceDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->createPaymentView(DLjava/util/List;Landroid/widget/LinearLayout;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

.field final synthetic val$checkNumberEditText:Landroid/widget/EditText;

.field final synthetic val$orderPrice:D

.field final synthetic val$paymentTypeSpinner:Landroid/widget/Spinner;

.field final synthetic val$paymentsView:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/LinearLayout;D)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;->val$paymentTypeSpinner:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;->val$checkNumberEditText:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;->val$paymentsView:Landroid/widget/LinearLayout;

    iput-wide p5, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;->val$orderPrice:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 258
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;->val$paymentTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/PaymentType;

    .line 259
    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;->val$checkNumberEditText:Landroid/widget/EditText;

    iget-boolean p3, p1, Lcom/txdriver/db/PaymentType;->inputCheckNumber:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 260
    iget-boolean p2, p1, Lcom/txdriver/db/PaymentType;->bonus:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;->val$paymentsView:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_1

    goto :goto_1

    .line 263
    :cond_1
    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    invoke-static {p2}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->access$600(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;)Lcom/txdriver/db/Order;

    move-result-object p2

    iget-wide p2, p2, Lcom/txdriver/db/Order;->clientBonusBalance:D

    const-wide/16 p4, 0x0

    cmpl-double v0, p2, p4

    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    invoke-static {p2}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->access$600(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;)Lcom/txdriver/db/Order;

    move-result-object p2

    iget-wide p2, p2, Lcom/txdriver/db/Order;->clientBonusBalance:D

    iget-object p4, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    iget-wide v0, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;->val$orderPrice:D

    invoke-static {p4, p1, v0, v1}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->access$700(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;Lcom/txdriver/db/PaymentType;D)D

    move-result-wide p4

    cmpg-double p1, p2, p4

    if-gez p1, :cond_2

    goto :goto_1

    .line 266
    :cond_2
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->access$600(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;)Lcom/txdriver/db/Order;

    move-result-object p1

    iget-wide p1, p1, Lcom/txdriver/db/Order;->clientBonusBalance:D

    iget-wide p3, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;->val$orderPrice:D

    cmpl-double p5, p1, p3

    if-ltz p5, :cond_3

    return-void

    .line 269
    :cond_3
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;->val$paymentsView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->updateSpinnersAdapters(Landroid/widget/LinearLayout;)V

    .line 270
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    iget-wide p2, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;->val$orderPrice:D

    iget-object p4, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;->val$paymentsView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2, p3, p4}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->addPaymentView(DLandroid/widget/LinearLayout;)V

    .line 271
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;->val$paymentsView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->setNeutralButtonVisibility(Landroid/widget/LinearLayout;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
