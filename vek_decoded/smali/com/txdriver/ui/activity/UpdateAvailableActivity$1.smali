.class Lcom/txdriver/ui/activity/UpdateAvailableActivity$1;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "UpdateAvailableActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/UpdateAvailableActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/UpdateAvailableActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/UpdateAvailableActivity;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$1;->this$0:Lcom/txdriver/ui/activity/UpdateAvailableActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 3

    .line 30
    iget-object p1, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$1;->this$0:Lcom/txdriver/ui/activity/UpdateAvailableActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->access$000(Lcom/txdriver/ui/activity/UpdateAvailableActivity;)Lcom/txdriver/json/AppConfig;

    move-result-object p1

    iget-boolean p1, p1, Lcom/txdriver/json/AppConfig;->requireUpdate:Z

    if-eqz p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$1;->this$0:Lcom/txdriver/ui/activity/UpdateAvailableActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/LaunchActivity;->exit(Landroid/content/Context;)V

    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$1;->this$0:Lcom/txdriver/ui/activity/UpdateAvailableActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->app:Lcom/txdriver/App;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$1;->this$0:Lcom/txdriver/ui/activity/UpdateAvailableActivity;

    iget-object v1, v1, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->app:Lcom/txdriver/App;

    const-class v2, Lcom/txdriver/service/MainService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/txdriver/App;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 35
    :goto_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$1;->this$0:Lcom/txdriver/ui/activity/UpdateAvailableActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->finish()V

    return-void
.end method
