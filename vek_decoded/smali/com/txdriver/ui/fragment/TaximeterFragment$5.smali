.class Lcom/txdriver/ui/fragment/TaximeterFragment$5;
.super Ljava/lang/Object;
.source "TaximeterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 123
    iput-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment$5;->this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment$5;->this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->access$100(Lcom/txdriver/ui/fragment/TaximeterFragment;)Lcom/txdriver/taximeter/Taximeter;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment$5;->this$0:Lcom/txdriver/ui/fragment/TaximeterFragment;

    invoke-static {v0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->access$100(Lcom/txdriver/ui/fragment/TaximeterFragment;)Lcom/txdriver/taximeter/Taximeter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Taximeter;->isIdle()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/txdriver/taximeter/Taximeter;->setIdle(Z)V

    return-void
.end method
