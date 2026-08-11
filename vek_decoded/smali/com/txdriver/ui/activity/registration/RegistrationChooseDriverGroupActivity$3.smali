.class Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$3;
.super Ljava/lang/Object;
.source "RegistrationChooseDriverGroupActivity.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->requestCompleteRegistration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest<",
        "Lcom/txdriver/json/NewCallSignResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$3;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 2

    .line 119
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$3;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->access$400(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f100051

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 120
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$3;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->app:Lcom/txdriver/App;

    const v0, 0x7f1001ff

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/NewCallSignResponse;)V
    .locals 4

    const v0, 0x7f100051

    if-nez p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$3;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->access$400(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 106
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$3;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->app:Lcom/txdriver/App;

    const v0, 0x7f100074

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 108
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/txdriver/json/NewCallSignResponse;->getNewCallSign()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/txdriver/json/NewCallSignResponse;->getNewCallSignPassword()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ANSWER"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$3;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    const-class v3, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    invoke-virtual {p1}, Lcom/txdriver/json/NewCallSignResponse;->getNewCallSign()I

    move-result v2

    const-string v3, "callSign"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p1}, Lcom/txdriver/json/NewCallSignResponse;->getNewCallSignPassword()I

    move-result p1

    const-string v2, "callSignPassword"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$3;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->access$400(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 113
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$3;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    invoke-virtual {p1, v1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 100
    check-cast p1, Lcom/txdriver/json/NewCallSignResponse;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$3;->onResponse(Lcom/txdriver/json/NewCallSignResponse;)V

    return-void
.end method
