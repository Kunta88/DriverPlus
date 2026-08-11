.class Lcom/txdriver/ui/activity/registration/RegistrationEndActivity$1;
.super Ljava/lang/Object;
.source "RegistrationEndActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 70
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->access$000(Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/txdriver/preferences/Preferences;->setLogin(Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->access$100(Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/txdriver/preferences/Preferences;->setPassword(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;

    const-class v2, Lcom/txdriver/ui/activity/AuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
