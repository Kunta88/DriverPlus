.class Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment$1;
.super Ljava/lang/Object;
.source "UpdateDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 66
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;

    invoke-static {p1}, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;->access$000(Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;)Lcom/txdriver/json/AppConfig;

    move-result-object p1

    iget-boolean p1, p1, Lcom/txdriver/json/AppConfig;->requireUpdate:Z

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/txdriver/ui/activity/LaunchActivity;->exit(Landroid/content/Context;)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;->app:Lcom/txdriver/App;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment$1;->this$0:Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;

    iget-object v0, v0, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;->app:Lcom/txdriver/App;

    const-class v1, Lcom/txdriver/service/MainService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/txdriver/App;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method
