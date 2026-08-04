.class Lcom/txdriver/ui/fragment/OrderDetailsFragment$2;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "OrderDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/fragment/OrderDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/OrderDetailsFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/OrderDetailsFragment;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment$2;->this$0:Lcom/txdriver/ui/fragment/OrderDetailsFragment;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 5

    .line 58
    iget-object p1, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment$2;->this$0:Lcom/txdriver/ui/fragment/OrderDetailsFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->access$000(Lcom/txdriver/ui/fragment/OrderDetailsFragment;)Lcom/txdriver/db/Order;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/db/Order;->getAddress()Lcom/txdriver/db/Address;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 59
    iget-wide v0, p1, Lcom/txdriver/db/Address;->lat:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p1, Lcom/txdriver/db/Address;->lng:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment$2;->this$0:Lcom/txdriver/ui/fragment/OrderDetailsFragment;

    invoke-virtual {v0}, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/txdriver/db/Address;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;J)V

    :cond_1
    return-void
.end method
