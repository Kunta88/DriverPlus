.class Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$5;
.super Ljava/lang/Object;
.source "RegistrationAddCarActivity.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->requestAddCar()V
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
.field final synthetic this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$5;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 1

    .line 178
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$5;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->access$900(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f100051

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/RegistrationUuid;)V
    .locals 2

    const v0, 0x7f100051

    if-nez p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$5;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->access$900(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 168
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$5;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->app:Lcom/txdriver/App;

    const v0, 0x7f100074

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$5;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->access$900(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 171
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$5;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    const-class v1, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$5;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;

    invoke-virtual {v0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 163
    check-cast p1, Lcom/txdriver/json/RegistrationUuid;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$5;->onResponse(Lcom/txdriver/json/RegistrationUuid;)V

    return-void
.end method
