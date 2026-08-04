.class Lcom/txdriver/ui/activity/LaunchActivity$2;
.super Lcom/txdriver/ui/view/ViewOnClickListener;
.source "LaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/LaunchActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/LaunchActivity;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$2;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-direct {p0}, Lcom/txdriver/ui/view/ViewOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewClick(Landroid/view/View;)V
    .locals 2

    .line 121
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$2;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/LaunchActivity;->access$200(Lcom/txdriver/ui/activity/LaunchActivity;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/json/City;

    if-eqz p1, :cond_3

    .line 122
    iget v0, p1, Lcom/txdriver/json/City;->id:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity$2;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/LaunchActivity;->access$300(Lcom/txdriver/ui/activity/LaunchActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/json/Company;

    if-eqz v0, :cond_2

    .line 127
    iget v1, v0, Lcom/txdriver/json/Company;->id:I

    if-nez v1, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/txdriver/ui/activity/LaunchActivity$2;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    iget-object v1, v1, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/txdriver/preferences/Preferences;->setCompany(Lcom/txdriver/json/Company;)V

    .line 132
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity$2;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    iget-object v0, v0, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/txdriver/preferences/Preferences;->setCity(Lcom/txdriver/json/City;)V

    .line 133
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$2;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/txdriver/preferences/Preferences;->setVersion(I)V

    .line 134
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$2;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/AuthActivity;->start(Landroid/content/Context;)V

    return-void

    .line 128
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$2;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity$2;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    const v1, 0x7f100211

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/activity/LaunchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 123
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$2;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity$2;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    const v1, 0x7f100210

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/activity/LaunchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
