.class Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$2;
.super Ljava/lang/Object;
.source "RegistrationReceiveCodeActivity.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->requestCodeRepeat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest<",
        "Lcom/txdriver/json/RegistrationUuid;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 2

    .line 118
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->app:Lcom/txdriver/App;

    const v0, 0x7f100213

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/RegistrationUuid;)V
    .locals 2

    if-nez p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->app:Lcom/txdriver/App;

    const v0, 0x7f100213

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    iget-object v0, v0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {p1}, Lcom/txdriver/json/RegistrationUuid;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/txdriver/preferences/Preferences;->setPrefDriverUuid(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p1, Lcom/txdriver/json/RegistrationUuid;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$2;->onResponse(Lcom/txdriver/json/RegistrationUuid;)V

    return-void
.end method
