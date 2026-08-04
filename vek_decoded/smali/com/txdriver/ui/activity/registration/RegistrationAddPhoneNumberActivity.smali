.class public Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;
.super Lcom/txdriver/ui/activity/BaseActivity;
.source "RegistrationAddPhoneNumberActivity.java"


# static fields
.field public static final REGISTRATION_VALUES_PHONE:Ljava/lang/String; = "phone"


# instance fields
.field private companyId:I

.field private phoneEditText:Lbr/com/sapereaude/maskedEditText/MaskedEditText;

.field rVerificationButton:Landroid/widget/Button;

.field private rVerificationButtonClickListener:Landroid/view/View$OnClickListener;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;-><init>()V

    .line 125
    new-instance v0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$3;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$3;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->rVerificationButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;)Lbr/com/sapereaude/maskedEditText/MaskedEditText;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->phoneEditText:Lbr/com/sapereaude/maskedEditText/MaskedEditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$200(Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;)Z
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->validatePhone()Z

    move-result p0

    return p0
.end method

.method private setPhoneMask(Ljava/lang/String;)V
    .locals 3

    const-string v0, "[+1234567890()-]"

    const-string v1, ""

    .line 71
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v2, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->phoneEditText:Lbr/com/sapereaude/maskedEditText/MaskedEditText;

    invoke-virtual {v2, p1}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->setMask(Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->phoneEditText:Lbr/com/sapereaude/maskedEditText/MaskedEditText;

    invoke-virtual {p1, v0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->phoneEditText:Lbr/com/sapereaude/maskedEditText/MaskedEditText;

    invoke-virtual {p1, v1}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private validatePhone()Z
    .locals 7

    .line 79
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->phoneEditText:Lbr/com/sapereaude/maskedEditText/MaskedEditText;

    invoke-virtual {v0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-char v5, v0, v3

    const/16 v6, 0x58

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-eqz v4, :cond_2

    .line 85
    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    return v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 37
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 39
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    const p1, 0x7f0c002d

    .line 40
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->setContentView(I)V

    const p1, 0x7f090229

    .line 42
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lbr/com/sapereaude/maskedEditText/MaskedEditText;

    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->phoneEditText:Lbr/com/sapereaude/maskedEditText/MaskedEditText;

    .line 43
    new-instance v0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$1;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;)V

    invoke-virtual {p1, v0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const p1, 0x7f090256

    .line 54
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->rVerificationButton:Landroid/widget/Button;

    .line 55
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->rVerificationButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "driverRegistration"

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "companyId"

    .line 59
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->companyId:I

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "phoneMask"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, " "

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 65
    invoke-direct {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->setPhoneMask(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public requestCode()V
    .locals 4

    .line 93
    iget v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->companyId:I

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lcom/txdriver/http/request/DriverRegistrationCodeRequest;

    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->app:Lcom/txdriver/App;

    iget-object v2, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->phoneEditText:Lbr/com/sapereaude/maskedEditText/MaskedEditText;

    invoke-virtual {v2}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->companyId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/txdriver/http/request/DriverRegistrationCodeRequest;-><init>(Lcom/txdriver/App;Ljava/lang/String;I)V

    .line 95
    new-instance v1, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$2;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity$2;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/DriverRegistrationCodeRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 119
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/DriverRegistrationCodeRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddPhoneNumberActivity;->app:Lcom/txdriver/App;

    const v1, 0x7f100074

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
