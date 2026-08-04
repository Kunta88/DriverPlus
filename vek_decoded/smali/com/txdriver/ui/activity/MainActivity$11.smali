.class Lcom/txdriver/ui/activity/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/MainActivity;->stopAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/MainActivity;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/txdriver/ui/activity/MainActivity$11;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity$11;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/MainActivity;->access$1200(Lcom/txdriver/ui/activity/MainActivity;)V

    .line 675
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity$11;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    iget-object v0, v0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getNotificationsNewsCounter()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity$11;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    iget-object v0, v0, Lcom/txdriver/ui/activity/MainActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getNotificationsPcTasksCounter()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity$11;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/MainActivity;->access$1300(Lcom/txdriver/ui/activity/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0800a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 676
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/MainActivity$11;->this$0:Lcom/txdriver/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/MainActivity;->access$1300(Lcom/txdriver/ui/activity/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0800a8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_1
    return-void
.end method
