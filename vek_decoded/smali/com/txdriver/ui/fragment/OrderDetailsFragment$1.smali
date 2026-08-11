.class Lcom/txdriver/ui/fragment/OrderDetailsFragment$1;
.super Ljava/lang/Object;
.source "OrderDetailsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 48
    iput-object p1, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment$1;->this$0:Lcom/txdriver/ui/fragment/OrderDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 51
    iget-object p1, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment$1;->this$0:Lcom/txdriver/ui/fragment/OrderDetailsFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p4, p5}, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;J)V

    return-void
.end method
