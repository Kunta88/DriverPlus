.class public Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;
.super Lcom/txdriver/ui/activity/BaseActivity;
.source "RegistrationChooseCompanyActivity.java"


# static fields
.field public static final REGISTRATION_VALUES:Ljava/lang/String; = "driverRegistration"

.field public static final REGISTRATION_VALUES_COMPANY_ID:Ljava/lang/String; = "companyId"

.field public static final REGISTRATION_VALUES_COMPANY_LOGO:Ljava/lang/String; = "companyLogo"

.field public static final REGISTRATION_VALUES_PHONE_MASK:Ljava/lang/String; = "phoneMask"


# instance fields
.field private adapter:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;

.field private companiesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private companyPhoneMask:Ljava/lang/String;

.field private employmentSettings:Lcom/txdriver/json/EmploymentSettings;

.field private rChooseCompanyButtonClickListener:Landroid/view/View$OnClickListener;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;-><init>()V

    .line 63
    new-instance v0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$1;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->rChooseCompanyButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;)Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->adapter:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$200(Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->companyPhoneMask:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->companyPhoneMask:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;)Lcom/txdriver/json/EmploymentSettings;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->employmentSettings:Lcom/txdriver/json/EmploymentSettings;

    return-object p0
.end method

.method static synthetic access$302(Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;Lcom/txdriver/json/EmploymentSettings;)Lcom/txdriver/json/EmploymentSettings;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->employmentSettings:Lcom/txdriver/json/EmploymentSettings;

    return-object p1
.end method

.method static synthetic access$400(Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->initViews()V

    return-void
.end method

.method private initViews()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->employmentSettings:Lcom/txdriver/json/EmploymentSettings;

    iget-object v0, v0, Lcom/txdriver/json/EmploymentSettings;->companyInfo:[Lcom/txdriver/json/CompanyInfo;

    .line 58
    new-instance v1, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;

    invoke-direct {v1, v0}, Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;-><init>([Lcom/txdriver/json/CompanyInfo;)V

    iput-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->adapter:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;

    .line 59
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->companiesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 60
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->companiesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->adapter:Lcom/txdriver/ui/adapter/VirtualCompanyAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private requestCarInfoAndEmpSettings()V
    .locals 2

    .line 83
    new-instance v0, Lcom/txdriver/http/request/EmploymentRequest;

    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1}, Lcom/txdriver/http/request/EmploymentRequest;-><init>(Lcom/txdriver/App;)V

    .line 84
    new-instance v1, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$2;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity$2;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/EmploymentRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 112
    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 46
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    const p1, 0x7f0c002f

    .line 47
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->setContentView(I)V

    const p1, 0x7f0900a0

    .line 49
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->companiesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f090253

    .line 50
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 51
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->rChooseCompanyButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "driverRegistration"

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseActivity;->onStart()V

    .line 39
    invoke-direct {p0}, Lcom/txdriver/ui/activity/registration/RegistrationChooseCompanyActivity;->requestCarInfoAndEmpSettings()V

    return-void
.end method
