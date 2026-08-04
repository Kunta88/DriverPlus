.class Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment$1;
.super Ljava/lang/Object;
.source "AddressesDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 60
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;->access$000(Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;)Lcom/activeandroid/widget/ModelAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/activeandroid/widget/ModelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/Address;

    .line 61
    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;

    invoke-virtual {p2}, Lcom/txdriver/ui/fragment/dialog/AddressesDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-wide v0, p1, Lcom/txdriver/db/Address;->lat:D

    iget-wide v2, p1, Lcom/txdriver/db/Address;->lng:D

    invoke-static {p2, v0, v1, v2, v3}, Lcom/txdriver/utils/Utils;->openNavigator(Landroid/content/Context;DD)V

    return-void
.end method
