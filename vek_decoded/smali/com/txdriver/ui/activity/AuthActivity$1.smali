.class Lcom/txdriver/ui/activity/AuthActivity$1;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 67
    iput-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity$1;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 70
    iget-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity$1;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05000c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity$1;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    new-instance v0, Lcom/txdriver/json/Company;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/txdriver/json/Company;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/txdriver/preferences/Preferences;->setCompany(Lcom/txdriver/json/Company;)V

    .line 72
    iget-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity$1;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    new-instance v0, Lcom/txdriver/json/City;

    invoke-direct {v0, v1, v2}, Lcom/txdriver/json/City;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/txdriver/preferences/Preferences;->setCity(Lcom/txdriver/json/City;)V

    .line 73
    iget-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity$1;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/LaunchActivity;->start(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
