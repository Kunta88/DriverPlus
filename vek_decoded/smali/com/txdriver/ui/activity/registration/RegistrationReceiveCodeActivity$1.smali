.class Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$1;
.super Ljava/lang/Object;
.source "RegistrationReceiveCodeActivity.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->requestValidatePhoneCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest<",
        "Lcom/txdriver/json/ValidatePhoneResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 2

    .line 96
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->access$100(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f100245

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 97
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->app:Lcom/txdriver/App;

    const v0, 0x7f1001ff

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/ValidatePhoneResponse;)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-static {v0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->access$002(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;Lcom/txdriver/json/ValidatePhoneResponse;)Lcom/txdriver/json/ValidatePhoneResponse;

    .line 83
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->access$000(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)Lcom/txdriver/json/ValidatePhoneResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/json/ValidatePhoneResponse;->getAnswerCode()I

    move-result p1

    const v0, 0x7f100245

    if-nez p1, :cond_0

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-static {v1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->access$000(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)Lcom/txdriver/json/ValidatePhoneResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/json/ValidatePhoneResponse;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-static {v1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->access$000(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)Lcom/txdriver/json/ValidatePhoneResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/json/ValidatePhoneResponse;->getAnswerCode()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UUID"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    const-class v2, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-static {v1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->access$100(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 87
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-virtual {v0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->access$100(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 90
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->app:Lcom/txdriver/App;

    const v0, 0x7f1001fe

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 79
    check-cast p1, Lcom/txdriver/json/ValidatePhoneResponse;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$1;->onResponse(Lcom/txdriver/json/ValidatePhoneResponse;)V

    return-void
.end method
