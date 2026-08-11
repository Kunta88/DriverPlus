.class Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment$1;
.super Ljava/lang/Object;
.source "NavigateDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 49
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;->access$000(Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;)Lcom/txdriver/db/Address;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;

    invoke-static {p2}, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;->access$000(Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;)Lcom/txdriver/db/Address;

    move-result-object p2

    iget-wide v0, p2, Lcom/txdriver/db/Address;->lat:D

    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;

    invoke-static {p2}, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;->access$000(Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;)Lcom/txdriver/db/Address;

    move-result-object p2

    iget-wide v2, p2, Lcom/txdriver/db/Address;->lng:D

    invoke-static {p1, v0, v1, v2, v3}, Lcom/txdriver/utils/Utils;->openNavigator(Landroid/content/Context;DD)V

    :cond_0
    return-void
.end method
