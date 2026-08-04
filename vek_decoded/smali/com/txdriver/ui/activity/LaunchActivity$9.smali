.class Lcom/txdriver/ui/activity/LaunchActivity$9;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/LaunchActivity;->requestEmploymentSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
        "Lcom/txdriver/json/EmploymentSettings;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/LaunchActivity;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$9;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 1

    .line 342
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$9;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/txdriver/ui/activity/LaunchActivity;->access$1102(Lcom/txdriver/ui/activity/LaunchActivity;Z)Z

    .line 343
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$9;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity$9;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/LaunchActivity;->access$1100(Lcom/txdriver/ui/activity/LaunchActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/txdriver/preferences/Preferences;->setDriverRegistration(Z)V

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/EmploymentSettings;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity$9;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    iget-object p1, p1, Lcom/txdriver/json/EmploymentSettings;->companyInfo:[Lcom/txdriver/json/CompanyInfo;

    invoke-static {v0, p1}, Lcom/txdriver/ui/activity/LaunchActivity;->access$1202(Lcom/txdriver/ui/activity/LaunchActivity;[Lcom/txdriver/json/CompanyInfo;)[Lcom/txdriver/json/CompanyInfo;

    .line 336
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$9;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/LaunchActivity;->access$1200(Lcom/txdriver/ui/activity/LaunchActivity;)[Lcom/txdriver/json/CompanyInfo;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/txdriver/ui/activity/LaunchActivity;->access$1102(Lcom/txdriver/ui/activity/LaunchActivity;Z)Z

    .line 337
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$9;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity$9;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/LaunchActivity;->access$1100(Lcom/txdriver/ui/activity/LaunchActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/txdriver/preferences/Preferences;->setDriverRegistration(Z)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 332
    check-cast p1, Lcom/txdriver/json/EmploymentSettings;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/LaunchActivity$9;->onResponse(Lcom/txdriver/json/EmploymentSettings;)V

    return-void
.end method
