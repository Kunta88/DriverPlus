.class Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$2;
.super Ljava/lang/Object;
.source "RegistrationAddRefererActivity.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->requestReferer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest<",
        "Lcom/txdriver/json/RegistrationReferrerResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 2

    .line 113
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->access$100(Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f100051

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 114
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->app:Lcom/txdriver/App;

    const v0, 0x7f1001ff

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/RegistrationReferrerResponse;)V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;

    iput-object p1, v0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->driverIdResponse:Lcom/txdriver/json/RegistrationReferrerResponse;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;

    iget-object v2, v2, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->driverIdResponse:Lcom/txdriver/json/RegistrationReferrerResponse;

    invoke-virtual {v2}, Lcom/txdriver/json/RegistrationReferrerResponse;->getReferrerId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ANSWER"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const v3, 0x7f100051

    if-nez p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->access$100(Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    .line 100
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->app:Lcom/txdriver/App;

    const v1, 0x7f100074

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/txdriver/json/RegistrationReferrerResponse;->getReferrerId()I

    move-result p1

    if-lez p1, :cond_1

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;

    iget-object v0, v0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->driverIdResponse:Lcom/txdriver/json/RegistrationReferrerResponse;

    invoke-virtual {v0}, Lcom/txdriver/json/RegistrationReferrerResponse;->getReferrerId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;

    const-class v1, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->access$100(Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 105
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;

    invoke-virtual {v0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->app:Lcom/txdriver/App;

    const v1, 0x7f100200

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 93
    check-cast p1, Lcom/txdriver/json/RegistrationReferrerResponse;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$2;->onResponse(Lcom/txdriver/json/RegistrationReferrerResponse;)V

    return-void
.end method
