.class public Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;
.super Lcom/txdriver/ui/activity/BaseActivity;
.source "RegistrationAddRefererActivity.java"


# instance fields
.field private companyId:I

.field driverIdResponse:Lcom/txdriver/json/RegistrationReferrerResponse;

.field private rAddRefDriverButton:Landroid/widget/Button;

.field private rAddRefDriverClickListener:Landroid/view/View$OnClickListener;

.field private rRegWithoutReferrerClickListener:Landroid/view/View$OnClickListener;

.field private refNumberEditText:Lbr/com/sapereaude/maskedEditText/MaskedEditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;-><init>()V

    .line 120
    new-instance v0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$3;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$3;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->rAddRefDriverClickListener:Landroid/view/View$OnClickListener;

    .line 129
    new-instance v0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$4;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$4;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->rRegWithoutReferrerClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;)Lbr/com/sapereaude/maskedEditText/MaskedEditText;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->refNumberEditText:Lbr/com/sapereaude/maskedEditText/MaskedEditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;)Landroid/widget/Button;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->rAddRefDriverButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;)Z
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->validateRefNumber()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->requestReferer()V

    return-void
.end method

.method private requestReferer()V
    .locals 5

    .line 92
    new-instance v0, Lcom/txdriver/http/request/RegistrationReferralRequest;

    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->app:Lcom/txdriver/App;

    iget-object v2, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getPrefDriverUuid()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->companyId:I

    iget-object v4, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->refNumberEditText:Lbr/com/sapereaude/maskedEditText/MaskedEditText;

    invoke-virtual {v4}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/txdriver/http/request/RegistrationReferralRequest;-><init>(Lcom/txdriver/App;Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    new-instance v1, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$2;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$2;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/RegistrationReferralRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 117
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/RegistrationReferralRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setPhoneMask(Ljava/lang/String;)V
    .locals 3

    const-string v0, "[+1234567890()-]"

    const-string v1, ""

    .line 70
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v2, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->refNumberEditText:Lbr/com/sapereaude/maskedEditText/MaskedEditText;

    invoke-virtual {v2, p1}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->setMask(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->refNumberEditText:Lbr/com/sapereaude/maskedEditText/MaskedEditText;

    invoke-virtual {p1, v0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->refNumberEditText:Lbr/com/sapereaude/maskedEditText/MaskedEditText;

    invoke-virtual {p1, v1}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private validateRefNumber()Z
    .locals 7

    .line 78
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->refNumberEditText:Lbr/com/sapereaude/maskedEditText/MaskedEditText;

    invoke-virtual {v0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 80
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

    .line 84
    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->getResources()Landroid/content/res/Resources;

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
    .locals 3

    .line 35
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 37
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    const p1, 0x7f0c002e

    .line 38
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->setContentView(I)V

    const p1, 0x7f09024d

    .line 40
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lbr/com/sapereaude/maskedEditText/MaskedEditText;

    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->refNumberEditText:Lbr/com/sapereaude/maskedEditText/MaskedEditText;

    .line 41
    new-instance v0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity$1;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;)V

    invoke-virtual {p1, v0}, Lbr/com/sapereaude/maskedEditText/MaskedEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const p1, 0x7f090252

    .line 52
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->rAddRefDriverButton:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->rAddRefDriverClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09024e

    .line 54
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 55
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->rRegWithoutReferrerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "driverRegistration"

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "companyId"

    .line 58
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->companyId:I

    :cond_0
    const-string v0, "phoneMask"

    .line 61
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " "

    .line 62
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 64
    invoke-direct {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddRefererActivity;->setPhoneMask(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
