.class public abstract Lcom/txdriver/ui/fragment/dialog/BaseOrderDialogFragment;
.super Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;
.source "BaseOrderDialogFragment.java"


# instance fields
.field contentView:Landroid/view/View;

.field private orderView:Lcom/txdriver/ui/view/OrderView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 20
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/BaseOrderDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c004d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/BaseOrderDialogFragment;->contentView:Landroid/view/View;

    const v0, 0x7f0901c0

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/txdriver/ui/view/OrderView;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/BaseOrderDialogFragment;->orderView:Lcom/txdriver/ui/view/OrderView;

    return-void
.end method

.method showOrder(Lcom/txdriver/db/Order;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/BaseOrderDialogFragment;->orderView:Lcom/txdriver/ui/view/OrderView;

    invoke-virtual {v0, p1}, Lcom/txdriver/ui/view/OrderView;->setOrder(Lcom/txdriver/db/Order;)V

    return-void
.end method
