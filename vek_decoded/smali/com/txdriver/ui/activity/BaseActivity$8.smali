.class Lcom/txdriver/ui/activity/BaseActivity$8;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/BaseActivity;->getConnectingSnackbar()Lcom/google/android/material/snackbar/Snackbar;
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

    .line 285
    iput-object p1, p0, Lcom/txdriver/ui/activity/BaseActivity$8;->this$0:Lcom/txdriver/ui/activity/BaseActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 1

    .line 288
    iget-object p1, p0, Lcom/txdriver/ui/activity/BaseActivity$8;->this$0:Lcom/txdriver/ui/activity/BaseActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/BaseActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance v0, Lcom/txdriver/service/MainService$StopEvent;

    invoke-direct {v0}, Lcom/txdriver/service/MainService$StopEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 289
    iget-object p1, p0, Lcom/txdriver/ui/activity/BaseActivity$8;->this$0:Lcom/txdriver/ui/activity/BaseActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/BaseActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1}, Lde/greenrobot/event/EventBus;->removeAllStickyEvents()V

    .line 290
    iget-object p1, p0, Lcom/txdriver/ui/activity/BaseActivity$8;->this$0:Lcom/txdriver/ui/activity/BaseActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/BaseActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/socket/Client;->close()V

    .line 291
    iget-object p1, p0, Lcom/txdriver/ui/activity/BaseActivity$8;->this$0:Lcom/txdriver/ui/activity/BaseActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/BaseActivity;->finish()V

    .line 292
    iget-object p1, p0, Lcom/txdriver/ui/activity/BaseActivity$8;->this$0:Lcom/txdriver/ui/activity/BaseActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/BaseActivity;->app:Lcom/txdriver/App;

    invoke-static {p1}, Lcom/txdriver/ui/activity/AuthActivity;->start(Landroid/content/Context;)V

    return-void
.end method
