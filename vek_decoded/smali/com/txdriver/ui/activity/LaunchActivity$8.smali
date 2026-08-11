.class Lcom/txdriver/ui/activity/LaunchActivity$8;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/LaunchActivity;->requestAppConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
        "Lcom/txdriver/json/AppConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/LaunchActivity;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$8;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 1

    .line 323
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$8;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/txdriver/ui/activity/LaunchActivity;->access$1102(Lcom/txdriver/ui/activity/LaunchActivity;Z)Z

    .line 324
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$8;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity$8;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/LaunchActivity;->access$1100(Lcom/txdriver/ui/activity/LaunchActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/txdriver/preferences/Preferences;->setDriverRegistration(Z)V

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/AppConfig;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 315
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$8;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->askEmployments()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 316
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$8;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/txdriver/preferences/Preferences;->setAskForEmployments(Z)V

    .line 317
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity$8;->this$0:Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/LaunchActivity;->access$1000(Lcom/txdriver/ui/activity/LaunchActivity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 312
    check-cast p1, Lcom/txdriver/json/AppConfig;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/LaunchActivity$8;->onResponse(Lcom/txdriver/json/AppConfig;)V

    return-void
.end method
