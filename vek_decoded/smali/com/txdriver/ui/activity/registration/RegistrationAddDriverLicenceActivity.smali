.class public Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;
.super Lcom/txdriver/ui/activity/BaseActivity;
.source "RegistrationAddDriverLicenceActivity.java"


# instance fields
.field private passportInputEditText:Landroid/widget/EditText;

.field private rAddPassportButton:Landroid/widget/Button;

.field private rAddPassportClickListener:Landroid/view/View$OnClickListener;

.field registrationAddDriverLicenceRequest:Lcom/txdriver/http/request/RegistrationAddDriverLicenceRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;-><init>()V

    .line 76
    new-instance v0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity$2;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity$2;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->rAddPassportClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;)Landroid/widget/Button;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->rAddPassportButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;)Z
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->validateLicence()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->requestAddDriverLicence()V

    return-void
.end method

.method private requestAddDriverLicence()V
    .locals 4

    .line 52
    new-instance v0, Lcom/txdriver/http/request/RegistrationAddDriverLicenceRequest;

    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->app:Lcom/txdriver/App;

    iget-object v2, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getPrefDriverUuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->passportInputEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/txdriver/http/request/RegistrationAddDriverLicenceRequest;-><init>(Lcom/txdriver/App;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->registrationAddDriverLicenceRequest:Lcom/txdriver/http/request/RegistrationAddDriverLicenceRequest;

    .line 53
    new-instance v1, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity$1;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity$1;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/RegistrationAddDriverLicenceRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;)V

    .line 73
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->registrationAddDriverLicenceRequest:Lcom/txdriver/http/request/RegistrationAddDriverLicenceRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/RegistrationAddDriverLicenceRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private validateLicence()Z
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->passportInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->app:Lcom/txdriver/App;

    const v3, 0x7f1000c3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->passportInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_1

    .line 44
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->app:Lcom/txdriver/App;

    const v3, 0x7f1001bc

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_1
    return v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 30
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    const p1, 0x7f0c002c

    .line 31
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->setContentView(I)V

    const p1, 0x7f09025b

    .line 33
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->passportInputEditText:Landroid/widget/EditText;

    const p1, 0x7f090251

    .line 34
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->rAddPassportButton:Landroid/widget/Button;

    .line 35
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddDriverLicenceActivity;->rAddPassportClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
