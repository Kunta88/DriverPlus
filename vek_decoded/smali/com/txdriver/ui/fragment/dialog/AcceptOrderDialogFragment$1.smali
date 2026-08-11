.class Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment$1;
.super Ljava/lang/Object;
.source "AcceptOrderDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->access$000(Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;)Lcom/txdriver/db/Order;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->access$000(Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;)Lcom/txdriver/db/Order;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->acceptOrder(Lcom/txdriver/db/Order;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;

    const v0, 0x7f100190

    invoke-virtual {p2, v0}, Lcom/txdriver/ui/fragment/dialog/AcceptOrderDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
