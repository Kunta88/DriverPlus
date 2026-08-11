.class Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment$2;
.super Lcom/txdriver/ui/view/DialogOnClickListener;
.source "SendMessageDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;

    invoke-direct {p0}, Lcom/txdriver/ui/view/DialogOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDebouncedClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 68
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/txdriver/ui/fragment/dialog/MessageInputDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;J)V

    return-void
.end method
