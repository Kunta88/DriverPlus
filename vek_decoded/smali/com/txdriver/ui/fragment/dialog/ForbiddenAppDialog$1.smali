.class Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog$1;
.super Ljava/lang/Object;
.source "ForbiddenAppDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance p2, Lcom/txdriver/service/MainService$StopEvent;

    invoke-direct {p2}, Lcom/txdriver/service/MainService$StopEvent;-><init>()V

    invoke-virtual {p1, p2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1}, Lde/greenrobot/event/EventBus;->removeAllStickyEvents()V

    .line 55
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/socket/Client;->close()V

    .line 56
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 57
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;->app:Lcom/txdriver/App;

    invoke-static {p1}, Lcom/txdriver/ui/activity/LaunchActivity;->exit(Landroid/content/Context;)V

    .line 58
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog$1;->this$0:Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/ForbiddenAppDialog$1;->val$packageName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/txdriver/utils/Utils;->launchAppSettings(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
