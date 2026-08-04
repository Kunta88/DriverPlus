.class Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment$3;
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

    .line 60
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment$3;->this$0:Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;

    invoke-direct {p0}, Lcom/txdriver/ui/view/DialogOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDebouncedClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment$3;->this$0:Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/dialog/SendMessageDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/txdriver/ui/activity/ChatActivity;->start(Landroid/content/Context;)V

    return-void
.end method
