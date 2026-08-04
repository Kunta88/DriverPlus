.class Lcom/txdriver/ui/fragment/TaximeterFragment$3;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "TaximeterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/TaximeterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/TaximeterFragment;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment$3;->this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 3

    .line 106
    iget-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment$3;->this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->access$400(Lcom/txdriver/ui/fragment/TaximeterFragment;)Lcom/txdriver/db/Tariff;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment$3;->this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;

    iget-object v0, v0, Lcom/txdriver/ui/fragment/TaximeterFragment;->app:Lcom/txdriver/App;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment$3;->this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;

    iget-object v1, v1, Lcom/txdriver/ui/fragment/TaximeterFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment$3;->this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;

    invoke-static {v2}, Lcom/txdriver/ui/fragment/TaximeterFragment;->access$200(Lcom/txdriver/ui/fragment/TaximeterFragment;)Lcom/txdriver/db/Order;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/txdriver/taximeter/TaximeterHelper;->startTaximeter(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;Lcom/txdriver/db/Tariff;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment$3;->this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment$3;->this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;

    const v1, 0x7f10007c

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
