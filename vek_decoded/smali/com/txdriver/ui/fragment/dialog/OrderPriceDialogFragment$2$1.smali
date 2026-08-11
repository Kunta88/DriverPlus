.class Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;
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

    .line 116
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 122
    :goto_0
    iget-object v5, v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object v5, v5, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->val$paymentsView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    const-string v6, "0"

    const v7, 0x7f0901f1

    const v8, 0x7f0901f0

    if-ge v4, v5, :cond_3

    .line 123
    iget-object v5, v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object v5, v5, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->val$paymentsView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 124
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 126
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 127
    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/txdriver/db/PaymentType;

    if-nez v5, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    iget-boolean v5, v5, Lcom/txdriver/db/PaymentType;->bonus:Z

    if-eqz v5, :cond_2

    float-to-double v9, v3

    .line 132
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v5

    double-to-float v3, v9

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 136
    :cond_3
    :goto_2
    iget-object v4, v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object v4, v4, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->val$paymentsView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 137
    iget-object v4, v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object v4, v4, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->val$paymentsView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 138
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v9, 0x7f0901ef

    .line 139
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Landroid/widget/TextView;

    .line 140
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 141
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/txdriver/db/PaymentType;

    if-nez v4, :cond_4

    goto/16 :goto_5

    .line 145
    :cond_4
    iget-object v9, v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object v9, v9, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    iget-object v10, v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-wide v12, v10, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->val$orderPrice:D

    iget-object v10, v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object v10, v10, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    iget-object v11, v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object v11, v11, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->val$paymentsView:Landroid/widget/LinearLayout;

    invoke-static {v10, v11}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->access$300(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;Landroid/widget/LinearLayout;)D

    move-result-wide v15

    float-to-double v10, v3

    move-wide/from16 v17, v10

    move-object v10, v5

    move-object v11, v4

    move-object v7, v14

    move-wide v14, v15

    move-wide/from16 v16, v17

    invoke-static/range {v9 .. v17}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->access$400(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;Landroid/widget/TextView;Lcom/txdriver/db/PaymentType;DDD)Z

    move-result v9

    if-nez v9, :cond_5

    return-void

    .line 148
    :cond_5
    iget-object v9, v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object v9, v9, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    invoke-static {v9, v7, v4}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->access$500(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;Landroid/widget/TextView;Lcom/txdriver/db/PaymentType;)Z

    move-result v9

    if-nez v9, :cond_6

    return-void

    .line 151
    :cond_6
    new-instance v9, Lcom/txdriver/socket/data/PaymentData;

    invoke-direct {v9}, Lcom/txdriver/socket/data/PaymentData;-><init>()V

    .line 152
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_7
    move-object v5, v6

    :goto_3
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v9, Lcom/txdriver/socket/data/PaymentData;->price:D

    .line 153
    iget v5, v4, Lcom/txdriver/db/PaymentType;->typeId:I

    iput v5, v9, Lcom/txdriver/socket/data/PaymentData;->paymentType:I

    .line 154
    iget-boolean v4, v4, Lcom/txdriver/db/PaymentType;->inputCheckNumber:Z

    if-eqz v4, :cond_8

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    iput-object v4, v9, Lcom/txdriver/socket/data/PaymentData;->checkNumber:Ljava/lang/String;

    .line 155
    iget-wide v4, v9, Lcom/txdriver/socket/data/PaymentData;->price:D

    const-wide/16 v10, 0x0

    cmpl-double v7, v4, v10

    if-lez v7, :cond_9

    .line 156
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_5
    add-int/lit8 v2, v2, 0x1

    const v7, 0x7f0901f1

    goto/16 :goto_2

    .line 159
    :cond_a
    iget-object v2, v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object v2, v2, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    iget-object v3, v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object v3, v3, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->val$paymentsView:Landroid/widget/LinearLayout;

    invoke-static {v2, v3}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->access$300(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;Landroid/widget/LinearLayout;)D

    move-result-wide v2

    iget-object v4, v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-wide v4, v4, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->val$orderPrice:D

    cmpg-double v6, v2, v4

    if-gez v6, :cond_b

    .line 160
    iget-object v1, v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object v1, v1, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    invoke-virtual {v1}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object v2, v2, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    const v3, 0x7f1001c6

    invoke-virtual {v2, v3}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 163
    :cond_b
    iget-object v2, v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object v2, v2, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    iget-object v2, v2, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v2

    new-instance v3, Lcom/txdriver/socket/packet/OrderDonePacket;

    iget-object v4, v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object v4, v4, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    iget-object v4, v4, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->app:Lcom/txdriver/App;

    iget-object v5, v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object v5, v5, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    invoke-static {v5}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->access$600(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;)Lcom/txdriver/db/Order;

    move-result-object v5

    iget-object v6, v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object v6, v6, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    iget-object v6, v6, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v6}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object v6

    invoke-direct {v3, v4, v5, v1, v6}, Lcom/txdriver/socket/packet/OrderDonePacket;-><init>(Lcom/txdriver/App;Lcom/txdriver/db/Order;Ljava/util/List;Lcom/txdriver/taximeter/Taximeter;)V

    invoke-virtual {v2, v3}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    .line 164
    iget-object v1, v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;->this$1:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    iget-object v1, v1, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    invoke-virtual {v1}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->dismiss()V

    return-void
.end method
