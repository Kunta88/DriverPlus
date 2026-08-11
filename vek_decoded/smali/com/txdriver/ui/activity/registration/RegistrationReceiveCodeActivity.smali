.class public Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;
.super Lcom/txdriver/ui/activity/BaseActivity;
.source "RegistrationReceiveCodeActivity.java"


# static fields
.field private static final COUNTER:J = 0x7530L


# instance fields
.field private codeInputEditText:Landroid/widget/EditText;

.field private companyId:I

.field private countDownTimerTextView:Landroid/widget/TextView;

.field private phone:Ljava/lang/String;

.field private repeatRequestCodeClickListener:Landroid/view/View$OnClickListener;

.field private requestCodeRepeatButton:Landroid/widget/Button;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private validatePhoneResponse:Lcom/txdriver/json/ValidatePhoneResponse;

.field private verifyNumberButton:Landroid/widget/Button;

.field private verifyNumberButtonClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;-><init>()V

    .line 127
    new-instance v0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$3;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$3;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->verifyNumberButtonClickListener:Landroid/view/View$OnClickListener;

    .line 136
    new-instance v0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$4;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->repeatRequestCodeClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)Lcom/txdriver/json/ValidatePhoneResponse;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->validatePhoneResponse:Lcom/txdriver/json/ValidatePhoneResponse;

    return-object p0
.end method

.method static synthetic access$002(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;Lcom/txdriver/json/ValidatePhoneResponse;)Lcom/txdriver/json/ValidatePhoneResponse;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->validatePhoneResponse:Lcom/txdriver/json/ValidatePhoneResponse;

    return-object p1
.end method

.method static synthetic access$100(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)Landroid/widget/Button;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->verifyNumberButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)Z
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->validateCode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->requestValidatePhoneCode()V

    return-void
.end method

.method static synthetic access$400(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->countDownTimerTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)Landroid/widget/Button;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->requestCodeRepeatButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$600(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;J)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->updateTimer(J)V

    return-void
.end method

.method private requestValidatePhoneCode()V
    .locals 4

    .line 78
    new-instance v0, Lcom/txdriver/http/request/RegistrationValidatePhoneRequest;

    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->app:Lcom/txdriver/App;

    iget-object v2, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getPrefDriverUuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->codeInputEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/txdriver/http/request/RegistrationValidatePhoneRequest;-><init>(Lcom/txdriver/App;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v1, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$1;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$1;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/RegistrationValidatePhoneRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 100
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/RegistrationValidatePhoneRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateTimer(J)V
    .locals 3

    long-to-int p2, p1

    .line 159
    div-int/lit16 p2, p2, 0x3e8

    const/16 p1, 0xa

    if-ge p2, p1, :cond_0

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 166
    :goto_0
    iget-object p2, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->countDownTimerTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private validateCode()Z
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->codeInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->app:Lcom/txdriver/App;

    const v1, 0x7f1000c1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v2

    .line 69
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->app:Lcom/txdriver/App;

    const v1, 0x7f100087

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v2

    :cond_1
    return v3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 40
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 42
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    const p1, 0x7f0c0032

    .line 43
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->setContentView(I)V

    const p1, 0x7f090259

    .line 45
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->codeInputEditText:Landroid/widget/EditText;

    const p1, 0x7f090316

    .line 46
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->countDownTimerTextView:Landroid/widget/TextView;

    const p1, 0x7f090257

    .line 48
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->verifyNumberButton:Landroid/widget/Button;

    .line 49
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->verifyNumberButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09007d

    .line 51
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->requestCodeRepeatButton:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->repeatRequestCodeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "driverRegistration"

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "companyId"

    .line 55
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->companyId:I

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "phone"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->phone:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public requestCodeRepeat()V
    .locals 4

    .line 104
    iget v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->companyId:I

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Lcom/txdriver/http/request/DriverRegistrationCodeRequest;

    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->app:Lcom/txdriver/App;

    iget-object v2, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->phone:Ljava/lang/String;

    iget v3, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->companyId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/txdriver/http/request/DriverRegistrationCodeRequest;-><init>(Lcom/txdriver/App;Ljava/lang/String;I)V

    .line 106
    new-instance v1, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$2;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity$2;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/DriverRegistrationCodeRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 121
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/DriverRegistrationCodeRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationReceiveCodeActivity;->app:Lcom/txdriver/App;

    const v1, 0x7f100074

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
