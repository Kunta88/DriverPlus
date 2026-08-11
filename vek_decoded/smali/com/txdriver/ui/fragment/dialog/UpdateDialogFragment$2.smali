.class Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment$2;
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

    .line 56
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;->app:Lcom/txdriver/App;

    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;

    invoke-static {p2}, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;->access$000(Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;)Lcom/txdriver/json/AppConfig;

    move-result-object p2

    iget-object p2, p2, Lcom/txdriver/json/AppConfig;->appUrl:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/txdriver/utils/Utils;->downloadUpdate(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment$2;->this$0:Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/txdriver/ui/activity/LaunchActivity;->exit(Landroid/content/Context;)V

    return-void
.end method
