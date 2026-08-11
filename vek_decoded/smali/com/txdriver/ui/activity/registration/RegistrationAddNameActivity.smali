.class public Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;
.super Lcom/txdriver/ui/activity/BaseActivity;
.source "RegistrationAddNameActivity.java"


# instance fields
.field private nameInputEditText:Landroid/widget/EditText;

.field private rAddNameButton:Landroid/widget/Button;

.field private rAddNameClickListener:Landroid/view/View$OnClickListener;

.field registrationAddDriverFullNameRequest:Lcom/txdriver/http/request/RegistrationAddDriverFullNameRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;-><init>()V

    .line 84
    new-instance v0, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity$2;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity$2;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->rAddNameClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;)Landroid/widget/Button;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->rAddNameButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;)Z
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->validateName()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->requestAddDriverName()V

    return-void
.end method

.method private requestAddDriverName()V
    .locals 4

    .line 60
    new-instance v0, Lcom/txdriver/http/request/RegistrationAddDriverFullNameRequest;

    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->app:Lcom/txdriver/App;

    iget-object v2, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->nameInputEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v3}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/txdriver/preferences/Preferences;->getPrefDriverUuid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/txdriver/http/request/RegistrationAddDriverFullNameRequest;-><init>(Lcom/txdriver/App;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->registrationAddDriverFullNameRequest:Lcom/txdriver/http/request/RegistrationAddDriverFullNameRequest;

    .line 61
    new-instance v1, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity$1;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity$1;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/RegistrationAddDriverFullNameRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;)V

    .line 81
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->registrationAddDriverFullNameRequest:Lcom/txdriver/http/request/RegistrationAddDriverFullNameRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/RegistrationAddDriverFullNameRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private validateName()Z
    .locals 7

    .line 40
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->nameInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->app:Lcom/txdriver/App;

    const v3, 0x7f1000c2

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->nameInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_1

    .line 45
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->app:Lcom/txdriver/App;

    const v3, 0x7f100164

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->nameInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-char v6, v0, v4

    .line 49
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    .line 52
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->app:Lcom/txdriver/App;

    const v3, 0x7f100163

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_4
    return v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 30
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    const p1, 0x7f0c002b

    .line 31
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->setContentView(I)V

    const p1, 0x7f09025a

    .line 33
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->nameInputEditText:Landroid/widget/EditText;

    const p1, 0x7f090250

    .line 34
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->rAddNameButton:Landroid/widget/Button;

    .line 35
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddNameActivity;->rAddNameClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
