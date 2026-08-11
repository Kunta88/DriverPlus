.class Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$1;
.super Ljava/lang/Object;
.source "RegistrationChooseCompanyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 66
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->access$000(Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;)Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->getCompanyId()I

    move-result p1

    .line 67
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;

    invoke-static {v0}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->access$000(Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;)Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->getCompanyLogo()Ljava/lang/String;

    move-result-object v0

    if-lez p1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;

    invoke-static {v1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->access$000(Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;)Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;->getLastSelectedPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 69
    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;

    invoke-static {v1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->access$100(Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "companyId"

    .line 70
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "companyLogo"

    .line 71
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;

    invoke-static {p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->access$200(Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "phoneMask"

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;

    const-class v1, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;

    invoke-virtual {v0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$1;->this$0:Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;

    iget-object p1, p1, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->app:Lcom/txdriver/App;

    const v0, 0x7f1001f9

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
