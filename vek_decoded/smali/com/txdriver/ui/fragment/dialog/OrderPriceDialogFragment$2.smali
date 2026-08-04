.class Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;
.super Ljava/lang/Object;
.source "OrderPriceDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

.field final synthetic val$dialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic val$orderPrice:D

.field final synthetic val$paymentsView:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/LinearLayout;D)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->val$paymentsView:Landroid/widget/LinearLayout;

    iput-wide p4, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->val$orderPrice:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 113
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->access$002(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;Landroid/widget/Button;)Landroid/widget/Button;

    .line 114
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->access$102(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;Landroid/widget/Button;)Landroid/widget/Button;

    .line 115
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->access$100(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    invoke-static {v0}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->access$200(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 116
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->access$000(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$1;-><init>(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->access$100(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$2;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2$2;-><init>(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;->val$paymentsView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->setNeutralButtonVisibility(Landroid/widget/LinearLayout;)V

    return-void
.end method
