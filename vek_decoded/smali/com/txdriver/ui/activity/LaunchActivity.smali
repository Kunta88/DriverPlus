.class public Lcom/txdriver/ui/activity/LaunchActivity;
.super Lcom/txdriver/ui/activity/BaseActivity;
.source "LaunchActivity.java"

# interfaces
.implements Lcom/txdriver/location/LocationManager$LocationChangeListener;


# static fields
.field private static final ACTION_CHANGE_COMPANY:Ljava/lang/String; = "action_change_company"

.field public static final ACTION_EXIT:Ljava/lang/String; = "action_exit"


# instance fields
.field private appConfigRequest:Lcom/txdriver/http/request/AppConfigRequest;

.field private citiesRequest:Lcom/txdriver/http/request/CitiesRequest;

.field private cityAdapter:Lcom/txdriver/ui/adapter/CityAdapter;

.field private citySpinner:Landroid/widget/Spinner;

.field private companiesRequest:Lcom/txdriver/http/request/CompaniesRequest;

.field private companyAdapter:Lcom/txdriver/ui/adapter/CompanyAdapter;

.field private companyInfos:[Lcom/txdriver/json/CompanyInfo;

.field private companyLayout:Landroid/view/View;

.field private companySpinner:Landroid/widget/Spinner;

.field private contentLayout:Landroid/view/View;

.field private errorLayout:Landroid/view/View;

.field private registrationFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/activity/LaunchActivity;J)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/txdriver/ui/activity/LaunchActivity;->requestCompanies(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/txdriver/ui/activity/LaunchActivity;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->companyLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/txdriver/ui/activity/LaunchActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/txdriver/ui/activity/LaunchActivity;->requestEmploymentSettings()V

    return-void
.end method

.method static synthetic access$1100(Lcom/txdriver/ui/activity/LaunchActivity;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->registrationFlag:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/txdriver/ui/activity/LaunchActivity;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->registrationFlag:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/txdriver/ui/activity/LaunchActivity;)[Lcom/txdriver/json/CompanyInfo;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->companyInfos:[Lcom/txdriver/json/CompanyInfo;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/txdriver/ui/activity/LaunchActivity;[Lcom/txdriver/json/CompanyInfo;)[Lcom/txdriver/json/CompanyInfo;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->companyInfos:[Lcom/txdriver/json/CompanyInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/txdriver/ui/activity/LaunchActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->citySpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$300(Lcom/txdriver/ui/activity/LaunchActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->companySpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$400(Lcom/txdriver/ui/activity/LaunchActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/txdriver/ui/activity/LaunchActivity;->requestCities()V

    return-void
.end method

.method static synthetic access$500(Lcom/txdriver/ui/activity/LaunchActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/txdriver/ui/activity/LaunchActivity;->showError()V

    return-void
.end method

.method static synthetic access$600(Lcom/txdriver/ui/activity/LaunchActivity;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/txdriver/ui/activity/LaunchActivity;->showContent(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/txdriver/ui/activity/LaunchActivity;)Lcom/txdriver/ui/adapter/CompanyAdapter;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->companyAdapter:Lcom/txdriver/ui/adapter/CompanyAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/txdriver/ui/activity/LaunchActivity;)Lcom/txdriver/ui/adapter/CityAdapter;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->cityAdapter:Lcom/txdriver/ui/adapter/CityAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/txdriver/ui/activity/LaunchActivity;)Z
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/txdriver/ui/activity/LaunchActivity;->requestLocation()Z

    move-result p0

    return p0
.end method

.method public static exit(Landroid/content/Context;)V
    .locals 2

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_exit"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initLayout()V
    .locals 4

    const v0, 0x7f09014d

    .line 91
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->contentLayout:Landroid/view/View;

    const v0, 0x7f09014b

    .line 92
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09014f

    .line 93
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->citySpinner:Landroid/widget/Spinner;

    .line 94
    new-instance v1, Lcom/txdriver/ui/adapter/CityAdapter;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/adapter/CityAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->cityAdapter:Lcom/txdriver/ui/adapter/CityAdapter;

    .line 95
    iget-object v2, p0, Lcom/txdriver/ui/activity/LaunchActivity;->citySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 96
    iget-object v1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->citySpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/txdriver/ui/activity/LaunchActivity$1;

    invoke-direct {v2, p0}, Lcom/txdriver/ui/activity/LaunchActivity$1;-><init>(Lcom/txdriver/ui/activity/LaunchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v1, 0x7f09014c

    .line 112
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->companyLayout:Landroid/view/View;

    const v1, 0x7f090150

    .line 113
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->companySpinner:Landroid/widget/Spinner;

    .line 114
    new-instance v1, Lcom/txdriver/ui/adapter/CompanyAdapter;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/adapter/CompanyAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->companyAdapter:Lcom/txdriver/ui/adapter/CompanyAdapter;

    .line 115
    iget-object v2, p0, Lcom/txdriver/ui/activity/LaunchActivity;->companySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 116
    iget-object v1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->companyLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f09014a

    .line 117
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 118
    new-instance v3, Lcom/txdriver/ui/activity/LaunchActivity$2;

    invoke-direct {v3, p0}, Lcom/txdriver/ui/activity/LaunchActivity$2;-><init>(Lcom/txdriver/ui/activity/LaunchActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09014e

    .line 137
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->errorLayout:Landroid/view/View;

    .line 138
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090149

    .line 139
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 140
    new-instance v2, Lcom/txdriver/ui/activity/LaunchActivity$3;

    invoke-direct {v2, p0}, Lcom/txdriver/ui/activity/LaunchActivity$3;-><init>(Lcom/txdriver/ui/activity/LaunchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    new-instance v1, Lcom/txdriver/ui/activity/LaunchActivity$4;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/LaunchActivity$4;-><init>(Lcom/txdriver/ui/activity/LaunchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private requestAppConfig()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->appConfigRequest:Lcom/txdriver/http/request/AppConfigRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 309
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/AppConfigRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 311
    :cond_0
    new-instance v0, Lcom/txdriver/http/request/AppConfigRequest;

    iget-object v1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1}, Lcom/txdriver/http/request/AppConfigRequest;-><init>(Lcom/txdriver/App;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->appConfigRequest:Lcom/txdriver/http/request/AppConfigRequest;

    .line 312
    new-instance v1, Lcom/txdriver/ui/activity/LaunchActivity$8;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/LaunchActivity$8;-><init>(Lcom/txdriver/ui/activity/LaunchActivity;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/AppConfigRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 327
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->appConfigRequest:Lcom/txdriver/http/request/AppConfigRequest;

    invoke-virtual {v0, v1}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    return-void
.end method

.method private requestCities()V
    .locals 2

    const/4 v0, 0x0

    .line 209
    invoke-direct {p0, v0}, Lcom/txdriver/ui/activity/LaunchActivity;->showContent(Z)V

    .line 210
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->citiesRequest:Lcom/txdriver/http/request/CitiesRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 211
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/CitiesRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 213
    :cond_0
    new-instance v0, Lcom/txdriver/http/request/CitiesRequest;

    iget-object v1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1}, Lcom/txdriver/http/request/CitiesRequest;-><init>(Lcom/txdriver/App;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->citiesRequest:Lcom/txdriver/http/request/CitiesRequest;

    .line 214
    new-instance v1, Lcom/txdriver/ui/activity/LaunchActivity$6;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/LaunchActivity$6;-><init>(Lcom/txdriver/ui/activity/LaunchActivity;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/CitiesRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 235
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->citiesRequest:Lcom/txdriver/http/request/CitiesRequest;

    invoke-virtual {v0, v1}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    return-void
.end method

.method private requestCompanies(J)V
    .locals 2

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0, v0}, Lcom/txdriver/ui/activity/LaunchActivity;->showContent(Z)V

    .line 164
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->companiesRequest:Lcom/txdriver/http/request/CompaniesRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 165
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/CompaniesRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 167
    :cond_0
    new-instance v0, Lcom/txdriver/http/request/CompaniesRequest;

    iget-object v1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1, p1, p2}, Lcom/txdriver/http/request/CompaniesRequest;-><init>(Lcom/txdriver/App;J)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->companiesRequest:Lcom/txdriver/http/request/CompaniesRequest;

    .line 168
    new-instance p1, Lcom/txdriver/ui/activity/LaunchActivity$5;

    invoke-direct {p1, p0}, Lcom/txdriver/ui/activity/LaunchActivity$5;-><init>(Lcom/txdriver/ui/activity/LaunchActivity;)V

    invoke-virtual {v0, p1}, Lcom/txdriver/http/request/CompaniesRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 188
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/ui/activity/LaunchActivity;->companiesRequest:Lcom/txdriver/http/request/CompaniesRequest;

    invoke-virtual {p1, p2}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    return-void
.end method

.method private requestCompanies(Landroid/location/Location;)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->companiesRequest:Lcom/txdriver/http/request/CompaniesRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 271
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/CompaniesRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 273
    :cond_0
    new-instance v0, Lcom/txdriver/http/request/CompaniesRequest;

    iget-object v1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1, p1}, Lcom/txdriver/http/request/CompaniesRequest;-><init>(Lcom/txdriver/App;Landroid/location/Location;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->companiesRequest:Lcom/txdriver/http/request/CompaniesRequest;

    .line 274
    new-instance p1, Lcom/txdriver/ui/activity/LaunchActivity$7;

    invoke-direct {p1, p0}, Lcom/txdriver/ui/activity/LaunchActivity$7;-><init>(Lcom/txdriver/ui/activity/LaunchActivity;)V

    invoke-virtual {v0, p1}, Lcom/txdriver/http/request/CompaniesRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 300
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->companiesRequest:Lcom/txdriver/http/request/CompaniesRequest;

    invoke-virtual {p1, v0}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    return-void
.end method

.method private requestEmploymentSettings()V
    .locals 2

    .line 331
    new-instance v0, Lcom/txdriver/http/request/EmploymentRequest;

    iget-object v1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1}, Lcom/txdriver/http/request/EmploymentRequest;-><init>(Lcom/txdriver/App;)V

    .line 332
    new-instance v1, Lcom/txdriver/ui/activity/LaunchActivity$9;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/LaunchActivity$9;-><init>(Lcom/txdriver/ui/activity/LaunchActivity;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/EmploymentRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 346
    iget-object v1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    return-void
.end method

.method private requestLocation()Z
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/location/LocationManager;->getLastGpsLocation()Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/LaunchActivity;->onLocationChanged(Landroid/location/Location;)V

    return v1

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/location/LocationManager;->getLastNetworkLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/LaunchActivity;->onLocationChanged(Landroid/location/Location;)V

    return v1

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/txdriver/location/LocationManager;->addLocationChangeListener(Lcom/txdriver/location/LocationManager$LocationChangeListener;)V

    const/4 v0, 0x0

    return v0
.end method

.method private showContent(Z)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->contentLayout:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->errorLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showError()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->contentLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->errorLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/txdriver/ui/activity/LaunchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_change_company"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-direct {p0}, Lcom/txdriver/ui/activity/LaunchActivity;->requestAppConfig()V

    .line 77
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "action_exit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/LaunchActivity;->finish()V

    return-void

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getCompany()Lcom/txdriver/json/Company;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/txdriver/ui/activity/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "action_change_company"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 82
    invoke-static {p0}, Lcom/txdriver/ui/activity/AuthActivity;->start(Landroid/content/Context;)V

    return-void

    :cond_1
    const p1, 0x7f0c0024

    .line 85
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/LaunchActivity;->setContentView(I)V

    .line 86
    invoke-direct {p0}, Lcom/txdriver/ui/activity/LaunchActivity;->initLayout()V

    const/4 p1, 0x0

    .line 87
    invoke-direct {p0, p1}, Lcom/txdriver/ui/activity/LaunchActivity;->showContent(Z)V

    return-void
.end method

.method public onEventMainThread(Lcom/txdriver/socket/SocketEvents$AuthEvent;)V
    .locals 0

    .line 304
    invoke-static {p0}, Lcom/txdriver/ui/activity/MainActivity;->start(Landroid/content/Context;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    .line 265
    invoke-direct {p0, p1}, Lcom/txdriver/ui/activity/LaunchActivity;->requestCompanies(Landroid/location/Location;)V

    .line 266
    iget-object p1, p0, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/txdriver/location/LocationManager;->removeLocationChangeListener(Lcom/txdriver/location/LocationManager$LocationChangeListener;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 67
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseActivity;->onStart()V

    .line 68
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->citySpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/txdriver/ui/activity/LaunchActivity;->requestCities()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 193
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseActivity;->onStop()V

    .line 194
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->companiesRequest:Lcom/txdriver/http/request/CompaniesRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/CompaniesRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->citiesRequest:Lcom/txdriver/http/request/CitiesRequest;

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/CitiesRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/txdriver/ui/activity/LaunchActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/txdriver/location/LocationManager;->removeLocationChangeListener(Lcom/txdriver/location/LocationManager$LocationChangeListener;)V

    return-void
.end method

.method public showConnecting(Z)V
    .locals 1

    const v0, 0x7f100094

    .line 205
    invoke-virtual {p0, p1, v0}, Lcom/txdriver/ui/activity/LaunchActivity;->showProgressLayout(ZI)V

    return-void
.end method
