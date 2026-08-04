.class Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$2;
.super Ljava/lang/Object;
.source "RegistrationChooseCompanyActivity.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->requestCarInfoAndEmpSettings()V
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
.field final synthetic this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 2

    .line 109
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->app:Lcom/txdriver/App;

    const v0, 0x7f1001ff

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/EmploymentSettings;)V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;

    invoke-static {v0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->access$302(Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;Lcom/txdriver/json/EmploymentSettings;)Lcom/txdriver/json/EmploymentSettings;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->app:Lcom/txdriver/App;

    const v1, 0x7f100074

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;

    invoke-static {v1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->access$300(Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;)Lcom/txdriver/json/EmploymentSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/json/EmploymentSettings;->getPhoneMask()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->access$202(Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    iget-object v1, p1, Lcom/txdriver/json/EmploymentSettings;->companyInfo:[Lcom/txdriver/json/CompanyInfo;

    array-length v1, v1

    if-ne v1, v0, :cond_1

    .line 93
    iget-object v0, p1, Lcom/txdriver/json/EmploymentSettings;->companyInfo:[Lcom/txdriver/json/CompanyInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/txdriver/json/CompanyInfo;->getCompanyId()I

    move-result v0

    .line 94
    iget-object p1, p1, Lcom/txdriver/json/EmploymentSettings;->companyInfo:[Lcom/txdriver/json/CompanyInfo;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/txdriver/json/CompanyInfo;->getCompanyLogo()Ljava/lang/String;

    move-result-object p1

    .line 95
    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;

    invoke-static {v1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->access$100(Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "companyId"

    .line 96
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "companyLogo"

    .line 97
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->access$200(Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "phoneMask"

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;

    const-class v1, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;

    invoke-virtual {v0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$2;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->access$400(Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 84
    check-cast p1, Lcom/txdriver/json/EmploymentSettings;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$2;->onResponse(Lcom/txdriver/json/EmploymentSettings;)V

    return-void
.end method
