.class public Lcom/txdriver/ui/activity/AuthActivity;
.super Lcom/txdriver/ui/activity/BaseActivity;
.source "AuthActivity.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/ui/activity/BaseActivity;",
        "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
        "Lcom/txdriver/json/AppConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final REGISTRATION_VALUES:Ljava/lang/String; = "driverRegistration"

.field public static final REGISTRATION_VALUES_COMPANY_ID:Ljava/lang/String; = "companyId"

.field public static final REGISTRATION_VALUES_COMPANY_LOGO:Ljava/lang/String; = "companyLogo"

.field public static final REGISTRATION_VALUES_PHONE_MASK:Ljava/lang/String; = "phoneMask"

.field private static final REQUEST_ACCESS_BACKGROUND_LOCATION:I = 0x3ee

.field private static final REQUEST_LOCATION:I = 0x3e8


# instance fields
.field private EXECUTED_CHECK_ACTION_OVERLAY:Z

.field private EXECUTED_CHECK_GPS_BACKGROUND_LOCATION:Z

.field private EXECUTED_CHECK_GPS_FINE_LOCATION:Z

.field private appConfigRequest:Lcom/txdriver/http/request/AppConfigRequest;

.field private companyPhoneMask:Ljava/lang/String;

.field private employmentSettings:Lcom/txdriver/json/EmploymentSettings;

.field private logoImageView:Landroid/widget/ImageView;

.field private mLoginButtonClickListener:Landroid/view/View$OnClickListener;

.field private mLoginEditText:Landroid/widget/EditText;

.field private mPasswordEditText:Landroid/widget/EditText;

.field private mRegisterButtonClickListener:Landroid/view/View$OnClickListener;

.field private onLogoClickListener:Landroid/view/View$OnClickListener;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->EXECUTED_CHECK_GPS_FINE_LOCATION:Z

    .line 53
    iput-boolean v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->EXECUTED_CHECK_GPS_BACKGROUND_LOCATION:Z

    .line 54
    iput-boolean v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->EXECUTED_CHECK_ACTION_OVERLAY:Z

    .line 67
    new-instance v0, Lcom/txdriver/ui/activity/AuthActivity$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/AuthActivity$1;-><init>(Lcom/txdriver/ui/activity/AuthActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->onLogoClickListener:Landroid/view/View$OnClickListener;

    .line 77
    new-instance v0, Lcom/txdriver/ui/activity/AuthActivity$2;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/AuthActivity$2;-><init>(Lcom/txdriver/ui/activity/AuthActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->mLoginButtonClickListener:Landroid/view/View$OnClickListener;

    .line 95
    new-instance v0, Lcom/txdriver/ui/activity/AuthActivity$3;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/AuthActivity$3;-><init>(Lcom/txdriver/ui/activity/AuthActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->mRegisterButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/activity/AuthActivity;)Z
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/txdriver/ui/activity/AuthActivity;->valid()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/activity/AuthActivity;)Landroid/widget/EditText;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/txdriver/ui/activity/AuthActivity;->mLoginEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/txdriver/ui/activity/AuthActivity;)Landroid/widget/EditText;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/txdriver/ui/activity/AuthActivity;->mPasswordEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/txdriver/ui/activity/AuthActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/txdriver/ui/activity/AuthActivity;->requestAppConfig()V

    return-void
.end method

.method static synthetic access$400(Lcom/txdriver/ui/activity/AuthActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/txdriver/ui/activity/AuthActivity;->resetNotificationsCounter()V

    return-void
.end method

.method static synthetic access$500(Lcom/txdriver/ui/activity/AuthActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/txdriver/ui/activity/AuthActivity;->requestCarInfoAndEmpSettings()V

    return-void
.end method

.method static synthetic access$600(Lcom/txdriver/ui/activity/AuthActivity;)Lcom/txdriver/json/EmploymentSettings;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/txdriver/ui/activity/AuthActivity;->employmentSettings:Lcom/txdriver/json/EmploymentSettings;

    return-object p0
.end method

.method static synthetic access$602(Lcom/txdriver/ui/activity/AuthActivity;Lcom/txdriver/json/EmploymentSettings;)Lcom/txdriver/json/EmploymentSettings;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity;->employmentSettings:Lcom/txdriver/json/EmploymentSettings;

    return-object p1
.end method

.method static synthetic access$700(Lcom/txdriver/ui/activity/AuthActivity;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/txdriver/ui/activity/AuthActivity;->companyPhoneMask:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/txdriver/ui/activity/AuthActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity;->companyPhoneMask:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/txdriver/ui/activity/AuthActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/txdriver/ui/activity/AuthActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private initLayout()V
    .locals 3

    const v0, 0x7f09015c

    .line 155
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->logoImageView:Landroid/widget/ImageView;

    .line 156
    iget-object v1, p0, Lcom/txdriver/ui/activity/AuthActivity;->onLogoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09005d

    .line 157
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->mLoginEditText:Landroid/widget/EditText;

    const v0, 0x7f09005e

    .line 158
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->mPasswordEditText:Landroid/widget/EditText;

    const v0, 0x7f09005b

    .line 159
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f09007c

    .line 160
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 161
    iget-object v2, p0, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->isDriverRegistrationActive()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    iget-object v2, p0, Lcom/txdriver/ui/activity/AuthActivity;->mLoginButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->mRegisterButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private requestAppConfig()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->appConfigRequest:Lcom/txdriver/http/request/AppConfigRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/AppConfigRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 196
    :cond_0
    new-instance v0, Lcom/txdriver/http/request/AppConfigRequest;

    iget-object v1, p0, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1}, Lcom/txdriver/http/request/AppConfigRequest;-><init>(Lcom/txdriver/App;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->appConfigRequest:Lcom/txdriver/http/request/AppConfigRequest;

    .line 197
    invoke-virtual {v0, p0}, Lcom/txdriver/http/request/AppConfigRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 198
    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/activity/AuthActivity;->appConfigRequest:Lcom/txdriver/http/request/AppConfigRequest;

    invoke-virtual {v0, v1}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    return-void
.end method

.method private requestCarInfoAndEmpSettings()V
    .locals 2

    .line 216
    new-instance v0, Lcom/txdriver/http/request/EmploymentRequest;

    iget-object v1, p0, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1}, Lcom/txdriver/http/request/EmploymentRequest;-><init>(Lcom/txdriver/App;)V

    .line 217
    new-instance v1, Lcom/txdriver/ui/activity/AuthActivity$4;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/AuthActivity$4;-><init>(Lcom/txdriver/ui/activity/AuthActivity;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/EmploymentRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 246
    iget-object v1, p0, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    return-void
.end method

.method private resetNotificationsCounter()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getNotificationsNewsCounter()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUNTER_OF_NEWS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getNotificationsPcTasksCounter()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUNTER_OF_PC_TASKS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getNotificationsNewsCounter()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setNotificationsNewsCounter(I)V

    .line 259
    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getNotificationsNewsCounter()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "COUNTER_NEWS_RESET"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getNotificationsPcTasksCounter()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 262
    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setNotificationsPcTasksCounter(I)V

    .line 263
    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getNotificationsPcTasksCounter()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUNTER_PC_TASKS_RESET"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/txdriver/ui/activity/AuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateUi()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->mLoginEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->getLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->mPasswordEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/preferences/Preferences;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private valid()Z
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->mLoginEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f1000c7

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->mLoginEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 177
    :goto_0
    iget-object v3, p0, Lcom/txdriver/ui/activity/AuthActivity;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/txdriver/ui/activity/AuthActivity;->mLoginEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 183
    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->mLoginEditText:Landroid/widget/EditText;

    const v1, 0x7f1000cb

    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    return v2
.end method


# virtual methods
.method checkActionOverlayPermission()V
    .locals 3

    .line 316
    invoke-static {}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->newInstance()Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;

    move-result-object v0

    const/4 v1, 0x0

    .line 317
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setCancelable(Z)V

    .line 318
    iget-object v1, p0, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 319
    new-instance v1, Lcom/txdriver/ui/activity/AuthActivity$7;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/AuthActivity$7;-><init>(Lcom/txdriver/ui/activity/AuthActivity;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 327
    invoke-virtual {v0, p0}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;)V

    return-void
.end method

.method checkBackgroundLocation()V
    .locals 3

    .line 301
    invoke-static {}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->newInstance()Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;

    move-result-object v0

    const/4 v1, 0x0

    .line 302
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setCancelable(Z)V

    .line 303
    iget-object v1, p0, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 304
    new-instance v1, Lcom/txdriver/ui/activity/AuthActivity$6;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/AuthActivity$6;-><init>(Lcom/txdriver/ui/activity/AuthActivity;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 311
    invoke-virtual {v0, p0}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;)V

    return-void
.end method

.method checkLocationPermission()V
    .locals 3

    .line 288
    invoke-static {}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->newInstance()Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;

    move-result-object v0

    const/4 v1, 0x0

    .line 289
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setCancelable(Z)V

    .line 290
    iget-object v1, p0, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 291
    new-instance v1, Lcom/txdriver/ui/activity/AuthActivity$5;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/AuthActivity$5;-><init>(Lcom/txdriver/ui/activity/AuthActivity;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 297
    invoke-virtual {v0, p0}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 251
    invoke-static {p0}, Lcom/txdriver/ui/fragment/dialog/ConfirmExitDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 131
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    iget-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->setDefaults()V

    .line 133
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->isSavePassword()Z

    move-result p1

    if-nez p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/txdriver/preferences/Preferences;->setPassword(Ljava/lang/String;)V

    :cond_0
    const p1, 0x7f0c001f

    .line 136
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/AuthActivity;->setContentView(I)V

    const/4 p1, 0x0

    const-string v0, "driverRegistration"

    .line 137
    invoke-virtual {p0, v0, p1}, Lcom/txdriver/ui/activity/AuthActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/activity/AuthActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 138
    invoke-direct {p0}, Lcom/txdriver/ui/activity/AuthActivity;->initLayout()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AuthActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onEventMainThread(Lcom/txdriver/socket/SocketEvents$AuthEvent;)V
    .locals 0

    .line 189
    invoke-static {p0}, Lcom/txdriver/ui/activity/MainActivity;->start(Landroid/content/Context;)V

    return-void
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 1

    .line 212
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/txdriver/service/MainService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/AuthActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090069

    if-eq v0, v1, :cond_0

    .line 121
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 118
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/txdriver/ui/activity/SettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/txdriver/ui/activity/AuthActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 332
    invoke-super {p0, p1, p2, p3}, Lcom/txdriver/ui/activity/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x3e8

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    const/16 p2, 0x3ee

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    .line 342
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    .line 343
    aget p1, p3, v0

    if-eqz p1, :cond_2

    .line 344
    invoke-static {}, Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment;->newInstance()Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment;

    move-result-object p1

    .line 345
    invoke-virtual {p1, v0}, Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment;->setCancelable(Z)V

    .line 346
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AuthActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/txdriver/utils/Utils;->showDialog(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;)V

    goto :goto_0

    .line 335
    :cond_1
    aget p1, p3, v0

    if-eqz p1, :cond_2

    .line 336
    invoke-static {}, Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment;->newInstance()Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment;

    move-result-object p1

    .line 337
    invoke-virtual {p1, v0}, Lcom/txdriver/ui/fragment/dialog/EnableGpsDialogFragment;->setCancelable(Z)V

    .line 338
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AuthActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/txdriver/utils/Utils;->showDialog(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResponse(Lcom/txdriver/json/AppConfig;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->app:Lcom/txdriver/App;

    iget v1, p1, Lcom/txdriver/json/AppConfig;->appVersion:I

    invoke-static {v0, v1}, Lcom/txdriver/utils/Utils;->isUpdateAvailable(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-static {p0, p1}, Lcom/txdriver/ui/fragment/dialog/UpdateDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;Lcom/txdriver/json/AppConfig;)V

    goto :goto_0

    .line 206
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/txdriver/service/MainService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/AuthActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/txdriver/json/AppConfig;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/AuthActivity;->onResponse(Lcom/txdriver/json/AppConfig;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 269
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseActivity;->onResume()V

    .line 270
    iget-boolean v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->EXECUTED_CHECK_GPS_FINE_LOCATION:Z

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iput-boolean v2, p0, Lcom/txdriver/ui/activity/AuthActivity;->EXECUTED_CHECK_GPS_FINE_LOCATION:Z

    .line 272
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AuthActivity;->checkLocationPermission()V

    goto :goto_0

    .line 273
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_2

    .line 274
    iget-boolean v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->EXECUTED_CHECK_ACTION_OVERLAY:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    iput-boolean v2, p0, Lcom/txdriver/ui/activity/AuthActivity;->EXECUTED_CHECK_ACTION_OVERLAY:Z

    .line 276
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AuthActivity;->checkActionOverlayPermission()V

    goto :goto_0

    .line 277
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_2

    .line 278
    iget-boolean v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->EXECUTED_CHECK_GPS_BACKGROUND_LOCATION:Z

    if-nez v0, :cond_2

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 279
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    iput-boolean v2, p0, Lcom/txdriver/ui/activity/AuthActivity;->EXECUTED_CHECK_GPS_BACKGROUND_LOCATION:Z

    .line 281
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AuthActivity;->checkBackgroundLocation()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 126
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseActivity;->onStart()V

    .line 127
    invoke-direct {p0}, Lcom/txdriver/ui/activity/AuthActivity;->updateUi()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 143
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseActivity;->onStop()V

    .line 144
    iget-object v0, p0, Lcom/txdriver/ui/activity/AuthActivity;->appConfigRequest:Lcom/txdriver/http/request/AppConfigRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 145
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/AppConfigRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    :cond_0
    return-void
.end method

.method public showConnecting(Z)V
    .locals 1

    const v0, 0x7f100094

    .line 151
    invoke-virtual {p0, p1, v0}, Lcom/txdriver/ui/activity/AuthActivity;->showProgressLayout(ZI)V

    return-void
.end method
