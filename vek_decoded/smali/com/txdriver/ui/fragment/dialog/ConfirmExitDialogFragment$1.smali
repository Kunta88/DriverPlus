.class Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment$1;
.super Ljava/lang/Object;
.source "ConfirmExitDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment;Landroid/app/Activity;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance p2, Lcom/txdriver/service/MainService$StopEvent;

    invoke-direct {p2}, Lcom/txdriver/service/MainService$StopEvent;-><init>()V

    invoke-virtual {p1, p2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 37
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1}, Lde/greenrobot/event/EventBus;->removeAllStickyEvents()V

    .line 38
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/socket/Client;->close()V

    .line 39
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finishAffinity()V

    .line 40
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->restoreFlagOnExit()V

    return-void
.end method
