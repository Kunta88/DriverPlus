.class Lcom/txdriver/ui/fragment/OrderDetailsFragment$4;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "OrderDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/OrderDetailsFragment;->createDestinationView(Lcom/txdriver/db/Address;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/OrderDetailsFragment;

.field final synthetic val$address:Lcom/txdriver/db/Address;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/OrderDetailsFragment;Lcom/txdriver/db/Address;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment$4;->this$0:Lcom/txdriver/ui/fragment/OrderDetailsFragment;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment$4;->val$address:Lcom/txdriver/db/Address;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 2

    .line 257
    iget-object p1, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment$4;->this$0:Lcom/txdriver/ui/fragment/OrderDetailsFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment$4;->val$address:Lcom/txdriver/db/Address;

    invoke-virtual {v0}, Lcom/txdriver/db/Address;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;J)V

    return-void
.end method
