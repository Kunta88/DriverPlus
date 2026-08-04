.class Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$2;
.super Ljava/lang/Object;
.source "RegistrationAddPhoneNumberActivity.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->requestCode()V
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
.field final synthetic this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 2

    .line 115
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->rVerificationButton:Landroid/widget/Button;

    const v0, 0x7f100239

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 116
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->app:Lcom/txdriver/App;

    const v0, 0x7f100223

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/RegistrationUuid;)V
    .locals 4

    const v0, 0x7f100239

    if-nez p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->rVerificationButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 100
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->app:Lcom/txdriver/App;

    const v0, 0x7f100074

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 102
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;

    const-class v3, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    iget-object v2, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;

    iget-object v2, v2, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {p1}, Lcom/txdriver/json/RegistrationUuid;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/txdriver/preferences/Preferences;->setPrefDriverUuid(Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->access$100(Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 105
    iget-object v2, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;

    invoke-static {v2}, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->access$000(Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;)Lbr/com/sapereaude/maskedEditText/MaskedEditText;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "phone"

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->rVerificationButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 108
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->access$000(Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;)Lbr/com/sapereaude/maskedEditText/MaskedEditText;

    move-result-object p1

    invoke-virtual {p1}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PHONE"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;

    invoke-virtual {p1, v1}, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 95
    check-cast p1, Lcom/txdriver/json/RegistrationUuid;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$2;->onResponse(Lcom/txdriver/json/RegistrationUuid;)V

    return-void
.end method
