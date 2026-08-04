.class Lcom/txdriver/ui/activity/BaseActivity$1;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/BaseActivity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/txdriver/ui/activity/BaseActivity$1;->this$0:Lcom/txdriver/ui/activity/BaseActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 2

    .line 66
    invoke-static {}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->newInstance()Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity$1;->this$0:Lcom/txdriver/ui/activity/BaseActivity;

    iget-object v0, v0, Lcom/txdriver/ui/activity/BaseActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->isInDanger()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity$1;->this$0:Lcom/txdriver/ui/activity/BaseActivity;

    const v1, 0x7f1000a5

    .line 68
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity$1;->this$0:Lcom/txdriver/ui/activity/BaseActivity;

    const v1, 0x7f1000bd

    .line 69
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    invoke-virtual {p1, v0}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/txdriver/ui/activity/BaseActivity$1$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/BaseActivity$1$1;-><init>(Lcom/txdriver/ui/activity/BaseActivity$1;)V

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/txdriver/ui/activity/BaseActivity$1;->this$0:Lcom/txdriver/ui/activity/BaseActivity;

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;)V

    return-void
.end method
