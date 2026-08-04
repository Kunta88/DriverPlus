.class public Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;
.super Lcom/txdriver/ui/activity/BaseActivity;
.source "RegistrationEndActivity.java"


# instance fields
.field private companyImageView:Landroid/widget/ImageView;

.field private companyLogo:Ljava/lang/String;

.field private login:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private rEndRegistrationButtonClickListener:Landroid/view/View$OnClickListener;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;-><init>()V

    .line 67
    new-instance v0, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity$1;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->rEndRegistrationButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->login:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->password:Ljava/lang/String;

    return-object p0
.end method

.method private setCompanyLogo(Ljava/lang/String;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->app:Lcom/txdriver/App;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    const v0, 0x7f0800d4

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    const/16 v0, 0x12c

    const/16 v1, 0xc8

    invoke-virtual {p1, v0, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->centerInside()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->companyImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 29
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 31
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    const p1, 0x7f0c0031

    .line 32
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->setContentView(I)V

    const p1, 0x7f0902bf

    .line 34
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0902be

    .line 35
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09015c

    .line 36
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->companyImageView:Landroid/widget/ImageView;

    const v1, 0x7f090255

    .line 37
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 38
    iget-object v2, p0, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->rEndRegistrationButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "driverRegistration"

    const/4 v2, 0x0

    .line 40
    invoke-virtual {p0, v1, v2}, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "companyLogo"

    .line 41
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->companyLogo:Ljava/lang/String;

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->companyLogo:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->setCompanyLogo(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "callSign"

    .line 49
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "callSignPassword"

    .line 50
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 52
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100235

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100234

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->login:Ljava/lang/String;

    .line 59
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationEndActivity;->password:Ljava/lang/String;

    return-void
.end method
