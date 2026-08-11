.class public Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;
.super Lcom/txdriver/ui/activity/BaseActivity;
.source "RegistrationAddCarActivity.java"


# instance fields
.field private carColorAdapter:Lcom/txdriver/ui/adapter/CarColorAdapter;

.field private carColorId:I

.field private carColors:[Lcom/txdriver/json/CarColor;

.field private carIdInputEditText:Landroid/widget/EditText;

.field private carModelAdapter:Lcom/txdriver/ui/adapter/CarModelAdapter;

.field private carModelId:I

.field private carModels:[Lcom/txdriver/json/CarModel;

.field private carTypeAdapter:Lcom/txdriver/ui/adapter/CarTypeAdapter;

.field private carTypeId:I

.field private carTypes:[Lcom/txdriver/json/CarType;

.field private companyId:I

.field private rAddCarButton:Landroid/widget/Button;

.field private rAddCarButtonClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;-><init>()V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carTypeId:I

    .line 44
    iput v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carModelId:I

    .line 45
    iput v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carColorId:I

    .line 184
    new-instance v0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$6;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$6;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->rAddCarButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carColorId:I

    return p1
.end method

.method static synthetic access$100(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)[Lcom/txdriver/json/CarColor;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carColors:[Lcom/txdriver/json/CarColor;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)Z
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->validateCarId()Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;[Lcom/txdriver/json/CarColor;)[Lcom/txdriver/json/CarColor;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carColors:[Lcom/txdriver/json/CarColor;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->requestAddCar()V

    return-void
.end method

.method static synthetic access$202(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carModelId:I

    return p1
.end method

.method static synthetic access$300(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)[Lcom/txdriver/json/CarModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carModels:[Lcom/txdriver/json/CarModel;

    return-object p0
.end method

.method static synthetic access$302(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;[Lcom/txdriver/json/CarModel;)[Lcom/txdriver/json/CarModel;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carModels:[Lcom/txdriver/json/CarModel;

    return-object p1
.end method

.method static synthetic access$402(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carTypeId:I

    return p1
.end method

.method static synthetic access$500(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)[Lcom/txdriver/json/CarType;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carTypes:[Lcom/txdriver/json/CarType;

    return-object p0
.end method

.method static synthetic access$502(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;[Lcom/txdriver/json/CarType;)[Lcom/txdriver/json/CarType;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carTypes:[Lcom/txdriver/json/CarType;

    return-object p1
.end method

.method static synthetic access$600(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)Lcom/txdriver/ui/adapter/CarColorAdapter;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carColorAdapter:Lcom/txdriver/ui/adapter/CarColorAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)Lcom/txdriver/ui/adapter/CarModelAdapter;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carModelAdapter:Lcom/txdriver/ui/adapter/CarModelAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)Lcom/txdriver/ui/adapter/CarTypeAdapter;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carTypeAdapter:Lcom/txdriver/ui/adapter/CarTypeAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)Landroid/widget/Button;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->rAddCarButton:Landroid/widget/Button;

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 72
    new-instance v0, Lcom/txdriver/ui/adapter/CarColorAdapter;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/adapter/CarColorAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carColorAdapter:Lcom/txdriver/ui/adapter/CarColorAdapter;

    const v0, 0x7f09025c

    .line 73
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 74
    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carColorAdapter:Lcom/txdriver/ui/adapter/CarColorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 75
    new-instance v1, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$1;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$1;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 86
    new-instance v0, Lcom/txdriver/ui/adapter/CarModelAdapter;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/adapter/CarModelAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carModelAdapter:Lcom/txdriver/ui/adapter/CarModelAdapter;

    const v0, 0x7f09025d

    .line 87
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 88
    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carModelAdapter:Lcom/txdriver/ui/adapter/CarModelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 89
    new-instance v1, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$2;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$2;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 100
    new-instance v0, Lcom/txdriver/ui/adapter/CarTypeAdapter;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/adapter/CarTypeAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carTypeAdapter:Lcom/txdriver/ui/adapter/CarTypeAdapter;

    const v0, 0x7f09025e

    .line 101
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 102
    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carTypeAdapter:Lcom/txdriver/ui/adapter/CarTypeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 103
    new-instance v1, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$3;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$3;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private requestAddCar()V
    .locals 8

    .line 161
    new-instance v7, Lcom/txdriver/http/request/RegistrationAddCarRequest;

    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->app:Lcom/txdriver/App;

    iget v2, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carTypeId:I

    iget v3, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carModelId:I

    iget v4, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carColorId:I

    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carIdInputEditText:Landroid/widget/EditText;

    .line 162
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getPrefDriverUuid()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/txdriver/http/request/RegistrationAddCarRequest;-><init>(Lcom/txdriver/App;IIILjava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$5;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$5;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)V

    invoke-virtual {v7, v0}, Lcom/txdriver/http/request/RegistrationAddCarRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 181
    invoke-virtual {v7, v0}, Lcom/txdriver/http/request/RegistrationAddCarRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private requestCompanyCarInfo()V
    .locals 3

    .line 136
    new-instance v0, Lcom/txdriver/http/request/CarInfoFromCompanyRequest;

    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->app:Lcom/txdriver/App;

    iget v2, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->companyId:I

    invoke-direct {v0, v1, v2}, Lcom/txdriver/http/request/CarInfoFromCompanyRequest;-><init>(Lcom/txdriver/App;I)V

    .line 137
    new-instance v1, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$4;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity$4;-><init>(Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/CarInfoFromCompanyRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 157
    iget-object v1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    return-void
.end method

.method private validateCarId()Z
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carIdInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->app:Lcom/txdriver/App;

    const v3, 0x7f1000c0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    .line 121
    :cond_0
    iget v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carTypeId:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 122
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->app:Lcom/txdriver/App;

    const v3, 0x7f1001f7

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    .line 124
    :cond_1
    iget v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carModelId:I

    if-ne v0, v3, :cond_2

    .line 125
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->app:Lcom/txdriver/App;

    const v3, 0x7f1001f6

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    .line 127
    :cond_2
    iget v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carColorId:I

    if-ne v0, v3, :cond_3

    .line 128
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->app:Lcom/txdriver/App;

    const v3, 0x7f1001f5

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_3
    return v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 57
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    const p1, 0x7f0c002a

    .line 58
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->setContentView(I)V

    const p1, 0x7f090258

    .line 60
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->carIdInputEditText:Landroid/widget/EditText;

    const p1, 0x7f09024f

    .line 61
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->rAddCarButton:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->rAddCarButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "driverRegistration"

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "companyId"

    .line 65
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->companyId:I

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->init()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseActivity;->onStart()V

    .line 50
    invoke-direct {p0}, Lcom/txdriver/ui/activity/registration/RegistrationAddCarActivity;->requestCompanyCarInfo()V

    return-void
.end method
