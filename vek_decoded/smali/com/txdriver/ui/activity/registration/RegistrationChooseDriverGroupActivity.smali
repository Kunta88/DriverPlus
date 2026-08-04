.class public Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;
.super Lcom/txdriver/ui/activity/BaseActivity;
.source "RegistrationChooseDriverGroupActivity.java"


# instance fields
.field private companyId:I

.field private completeRegistrationButton:Landroid/widget/Button;

.field private completeRegistrationOnClickListener:Landroid/view/View$OnClickListener;

.field private driverGroupAdapter:Lcom/txdriver/ui/adapter/DriverGroupAdapter;

.field private driverGroupId:I

.field private driverGroups:[Lcom/txdriver/json/DriverGroup;

.field private driverRateId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;-><init>()V

    .line 126
    new-instance v0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$4;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$4;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->completeRegistrationOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->driverGroupId:I

    return p0
.end method

.method static synthetic access$002(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->driverGroupId:I

    return p1
.end method

.method static synthetic access$100(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;)[Lcom/txdriver/json/DriverGroup;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->driverGroups:[Lcom/txdriver/json/DriverGroup;

    return-object p0
.end method

.method static synthetic access$102(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;[Lcom/txdriver/json/DriverGroup;)[Lcom/txdriver/json/DriverGroup;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->driverGroups:[Lcom/txdriver/json/DriverGroup;

    return-object p1
.end method

.method static synthetic access$202(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->driverRateId:I

    return p1
.end method

.method static synthetic access$300(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;)Lcom/txdriver/ui/adapter/DriverGroupAdapter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->driverGroupAdapter:Lcom/txdriver/ui/adapter/DriverGroupAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;)Landroid/widget/Button;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->completeRegistrationButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->requestCompleteRegistration()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 60
    new-instance v0, Lcom/txdriver/ui/adapter/DriverGroupAdapter;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/adapter/DriverGroupAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->driverGroupAdapter:Lcom/txdriver/ui/adapter/DriverGroupAdapter;

    const v0, 0x7f09025f

    .line 61
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 62
    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->driverGroupAdapter:Lcom/txdriver/ui/adapter/DriverGroupAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 63
    new-instance v1, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$1;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$1;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private requestCompleteRegistration()V
    .locals 7

    .line 99
    new-instance v6, Lcom/txdriver/http/request/RegistrationCompleteRequest;

    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getPrefDriverUuid()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->companyId:I

    iget v4, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->driverRateId:I

    iget v5, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->driverGroupId:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/txdriver/http/request/RegistrationCompleteRequest;-><init>(Lcom/txdriver/App;Ljava/lang/String;III)V

    .line 100
    new-instance v0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$3;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$3;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;)V

    invoke-virtual {v6, v0}, Lcom/txdriver/http/request/RegistrationCompleteRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 123
    invoke-virtual {v6, v0}, Lcom/txdriver/http/request/RegistrationCompleteRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private requestDriverGroupsAndRate()V
    .locals 3

    .line 77
    new-instance v0, Lcom/txdriver/http/request/DriverGroupAndRateRequest;

    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->app:Lcom/txdriver/App;

    iget v2, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->companyId:I

    invoke-direct {v0, v1, v2}, Lcom/txdriver/http/request/DriverGroupAndRateRequest;-><init>(Lcom/txdriver/App;I)V

    .line 78
    new-instance v1, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$2;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity$2;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/DriverGroupAndRateRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 95
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/DriverGroupAndRateRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 44
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 46
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    const p1, 0x7f0c0030

    .line 47
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->setContentView(I)V

    const p1, 0x7f090254

    .line 49
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->completeRegistrationButton:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->completeRegistrationOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "driverRegistration"

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "companyId"

    .line 53
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->companyId:I

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->init()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseActivity;->onStart()V

    .line 39
    invoke-direct {p0}, Lcom/txdriver/ui/activity/registration/RegistrationChooseDriverGroupActivity;->requestDriverGroupsAndRate()V

    return-void
.end method
