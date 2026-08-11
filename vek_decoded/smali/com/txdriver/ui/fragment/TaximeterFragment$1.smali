.class Lcom/txdriver/ui/fragment/TaximeterFragment$1;
.super Ljava/lang/Object;
.source "TaximeterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/fragment/TaximeterFragment;
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

    .line 64
    iput-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment$1;->this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment$1;->this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->access$000(Lcom/txdriver/ui/fragment/TaximeterFragment;)Lcom/activeandroid/widget/ModelAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/activeandroid/widget/ModelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/Tariff;

    if-eqz p1, :cond_0

    .line 68
    iget-object p2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment$1;->this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;

    invoke-static {p2}, Lcom/txdriver/ui/fragment/TaximeterFragment;->access$100(Lcom/txdriver/ui/fragment/TaximeterFragment;)Lcom/txdriver/taximeter/Taximeter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/txdriver/taximeter/Taximeter;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/txdriver/db/Tariff;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 69
    iget-object p2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment$1;->this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;

    invoke-static {p2}, Lcom/txdriver/ui/fragment/TaximeterFragment;->access$100(Lcom/txdriver/ui/fragment/TaximeterFragment;)Lcom/txdriver/taximeter/Taximeter;

    move-result-object p2

    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment$1;->this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;

    invoke-static {v0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->access$200(Lcom/txdriver/ui/fragment/TaximeterFragment;)Lcom/txdriver/db/Order;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/txdriver/taximeter/TaximeterHelper;->setTariff(Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;Lcom/txdriver/db/Tariff;)V

    :cond_0
    return-void
.end method
