.class Lcom/txdriver/ui/activity/AuthActivity$2;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "AuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/AuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/AuthActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/AuthActivity;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity$2;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 3

    .line 81
    iget-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity$2;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/AuthActivity;->access$000(Lcom/txdriver/ui/activity/AuthActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity$2;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/AuthActivity;->access$100(Lcom/txdriver/ui/activity/AuthActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity$2;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/AuthActivity;->access$200(Lcom/txdriver/ui/activity/AuthActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/txdriver/ui/activity/AuthActivity$2;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    iget-object v1, v1, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/txdriver/preferences/Preferences;->setLogin(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity$2;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/txdriver/preferences/Preferences;->setPassword(Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity$2;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->isDevMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity$2;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/txdriver/ui/activity/AuthActivity$2;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    const-class v2, Lcom/txdriver/service/MainService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/activity/AuthActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity$2;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/AuthActivity;->access$300(Lcom/txdriver/ui/activity/AuthActivity;)V

    .line 91
    :goto_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity$2;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/AuthActivity;->access$400(Lcom/txdriver/ui/activity/AuthActivity;)V

    :cond_1
    return-void
.end method
