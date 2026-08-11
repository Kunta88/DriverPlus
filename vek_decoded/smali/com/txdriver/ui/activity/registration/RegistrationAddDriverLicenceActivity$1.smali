.class Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity$1;
.super Ljava/lang/Object;
.source "RegistrationAddDriverLicenceActivity.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->requestAddDriverLicence()V
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
.field final synthetic this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 2

    .line 69
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->access$000(Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f100051

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 70
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->app:Lcom/txdriver/App;

    const v0, 0x7f1001ff

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/RegistrationUuid;)V
    .locals 3

    const v0, 0x7f100051

    if-nez p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->access$000(Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 58
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->app:Lcom/txdriver/App;

    const v0, 0x7f100074

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 60
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/txdriver/json/RegistrationUuid;->uuid:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UUID"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->access$000(Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 62
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;

    const-class v1, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;

    invoke-virtual {v0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Lcom/txdriver/json/RegistrationUuid;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity$1;->onResponse(Lcom/txdriver/json/RegistrationUuid;)V

    return-void
.end method
