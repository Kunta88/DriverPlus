.class Lcom/txdriver/ui/activity/UpdateAvailableActivity$2;
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

    .line 38
    iput-object p1, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$2;->this$0:Lcom/txdriver/ui/activity/UpdateAvailableActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 1

    .line 41
    iget-object p1, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$2;->this$0:Lcom/txdriver/ui/activity/UpdateAvailableActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$2;->this$0:Lcom/txdriver/ui/activity/UpdateAvailableActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->access$000(Lcom/txdriver/ui/activity/UpdateAvailableActivity;)Lcom/txdriver/json/AppConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/txdriver/json/AppConfig;->appUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->downloadUpdate(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$2;->this$0:Lcom/txdriver/ui/activity/UpdateAvailableActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/LaunchActivity;->exit(Landroid/content/Context;)V

    .line 43
    iget-object p1, p0, Lcom/txdriver/ui/activity/UpdateAvailableActivity$2;->this$0:Lcom/txdriver/ui/activity/UpdateAvailableActivity;

    invoke-virtual {p1}, Lcom/txdriver/ui/activity/UpdateAvailableActivity;->finish()V

    return-void
.end method
