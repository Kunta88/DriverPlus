.class Lcom/txdriver/ui/activity/AuthActivity$4;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/AuthActivity;->requestCarInfoAndEmpSettings()V
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
.field final synthetic this$0:Lcom/txdriver/ui/activity/AuthActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/AuthActivity;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity$4;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/EmploymentSettings;)V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity$4;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    invoke-static {v0, p1}, Lcom/txdriver/ui/activity/AuthActivity;->access$602(Lcom/txdriver/ui/activity/AuthActivity;Lcom/txdriver/json/EmploymentSettings;)Lcom/txdriver/json/EmploymentSettings;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity$4;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    const v1, 0x7f100074

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/txdriver/ui/activity/AuthActivity$4;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    invoke-static {v1}, Lcom/txdriver/ui/activity/AuthActivity;->access$600(Lcom/txdriver/ui/activity/AuthActivity;)Lcom/txdriver/json/EmploymentSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/json/EmploymentSettings;->getPhoneMask()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/txdriver/ui/activity/AuthActivity;->access$702(Lcom/txdriver/ui/activity/AuthActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    iget-object v1, p1, Lcom/txdriver/json/EmploymentSettings;->companyInfo:[Lcom/txdriver/json/CompanyInfo;

    array-length v1, v1

    if-ne v1, v0, :cond_1

    .line 226
    iget-object v0, p1, Lcom/txdriver/json/EmploymentSettings;->companyInfo:[Lcom/txdriver/json/CompanyInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/txdriver/json/CompanyInfo;->getCompanyId()I

    move-result v0

    .line 227
    iget-object p1, p1, Lcom/txdriver/json/EmploymentSettings;->companyInfo:[Lcom/txdriver/json/CompanyInfo;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/txdriver/json/CompanyInfo;->getCompanyLogo()Ljava/lang/String;

    move-result-object p1

    .line 228
    iget-object v1, p0, Lcom/txdriver/ui/activity/AuthActivity$4;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    invoke-static {v1}, Lcom/txdriver/ui/activity/AuthActivity;->access$800(Lcom/txdriver/ui/activity/AuthActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "companyId"

    .line 229
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "companyLogo"

    .line 230
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 231
    iget-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity$4;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/AuthActivity;->access$700(Lcom/txdriver/ui/activity/AuthActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "phoneMask"

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 232
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 233
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity$4;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    const-class v1, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity$4;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    invoke-virtual {v0, p1}, Lcom/txdriver/ui/activity/AuthActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 236
    :cond_1
    iget-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity$4;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/txdriver/ui/activity/AuthActivity$4;->this$0:Lcom/txdriver/ui/activity/AuthActivity;

    const-class v2, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/activity/AuthActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 217
    check-cast p1, Lcom/txdriver/json/EmploymentSettings;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/AuthActivity$4;->onResponse(Lcom/txdriver/json/EmploymentSettings;)V

    return-void
.end method
