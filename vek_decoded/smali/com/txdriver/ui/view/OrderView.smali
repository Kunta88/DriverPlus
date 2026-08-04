.class public Lcom/txdriver/ui/view/OrderView;
.super Landroid/widget/LinearLayout;
.source "OrderView.java"


# instance fields
.field private addressTextView:Landroid/widget/TextView;

.field private app:Lcom/txdriver/App;

.field private carTypeTextView:Landroid/widget/TextView;

.field private commissionLayout:Landroid/widget/LinearLayout;

.field private commissionTextView:Landroid/widget/TextView;

.field private currency:Ljava/lang/String;

.field private dateTextView:Landroid/widget/TextView;

.field private destinationAddressTextView:Landroid/widget/TextView;

.field private destinationLayout:Landroid/widget/LinearLayout;

.field private destinationParkingTextView:Landroid/widget/TextView;

.field private discountLayout:Landroid/widget/LinearLayout;

.field private discountTextView:Landroid/widget/TextView;

.field private distanceTextView:Landroid/widget/TextView;

.field private extrasLayout:Landroid/widget/LinearLayout;

.field private extrasTextView:Landroid/widget/TextView;

.field private markupLayout:Landroid/widget/LinearLayout;

.field private markupTextView:Landroid/widget/TextView;

.field private noteLayout:Landroid/widget/LinearLayout;

.field private noteTextView:Landroid/widget/TextView;

.field private orderTypeTextView:Landroid/widget/TextView;

.field private parkingTextView:Landroid/widget/TextView;

.field private paymentTypesLayout:Landroid/widget/LinearLayout;

.field private paymentTypesTextView:Landroid/widget/TextView;

.field private priceLayout:Landroid/widget/LinearLayout;

.field private priceTextView:Landroid/widget/TextView;

.field private sellerLayout:Landroid/widget/LinearLayout;

.field private sellerTextView:Landroid/widget/TextView;

.field private timeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-direct {p0}, Lcom/txdriver/ui/view/OrderView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    invoke-direct {p0}, Lcom/txdriver/ui/view/OrderView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/txdriver/ui/view/OrderView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00c8

    invoke-static {v0, v1, p0}, Lcom/txdriver/ui/view/OrderView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    invoke-virtual {p0}, Lcom/txdriver/ui/view/OrderView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/txdriver/ui/view/OrderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/txdriver/App;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->app:Lcom/txdriver/App;

    .line 66
    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getCurrency()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->currency:Ljava/lang/String;

    :cond_0
    const v0, 0x7f0901fa

    .line 68
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->addressTextView:Landroid/widget/TextView;

    const v0, 0x7f09020d

    .line 69
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->timeTextView:Landroid/widget/TextView;

    const v0, 0x7f0901fe

    .line 70
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->dateTextView:Landroid/widget/TextView;

    const v0, 0x7f090209

    .line 71
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->parkingTextView:Landroid/widget/TextView;

    const v0, 0x7f0901fc

    .line 72
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->commissionTextView:Landroid/widget/TextView;

    const v0, 0x7f090206

    .line 73
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->markupTextView:Landroid/widget/TextView;

    const v0, 0x7f090202

    .line 74
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->discountTextView:Landroid/widget/TextView;

    const v0, 0x7f0901fb

    .line 75
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->carTypeTextView:Landroid/widget/TextView;

    const v0, 0x7f090208

    .line 76
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->orderTypeTextView:Landroid/widget/TextView;

    const v0, 0x7f0901e5

    .line 77
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->priceLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0901e0

    .line 78
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->commissionLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0901e4

    .line 79
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->markupLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0901e2

    .line 80
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->discountLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0901e6

    .line 81
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->extrasLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0901e1

    .line 82
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->destinationLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090205

    .line 83
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->extrasTextView:Landroid/widget/TextView;

    const v0, 0x7f090200

    .line 84
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->destinationAddressTextView:Landroid/widget/TextView;

    const v0, 0x7f090201

    .line 85
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->destinationParkingTextView:Landroid/widget/TextView;

    const v0, 0x7f09020b

    .line 86
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->priceTextView:Landroid/widget/TextView;

    const v0, 0x7f0901e7

    .line 87
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->noteLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090207

    .line 88
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->noteTextView:Landroid/widget/TextView;

    const v0, 0x7f0901e9

    .line 89
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->sellerLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f09020c

    .line 90
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->sellerTextView:Landroid/widget/TextView;

    const v0, 0x7f090203

    .line 91
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->distanceTextView:Landroid/widget/TextView;

    const v0, 0x7f09020a

    .line 92
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->paymentTypesTextView:Landroid/widget/TextView;

    const v0, 0x7f0901e8

    .line 93
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/view/OrderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/txdriver/ui/view/OrderView;->paymentTypesLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method private setDiscount(Lcom/txdriver/db/Order;)V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->app:Lcom/txdriver/App;

    iget-object v1, p0, Lcom/txdriver/ui/view/OrderView;->currency:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/txdriver/order/OrderHelper;->getDiscountText(Lcom/txdriver/App;Lcom/txdriver/db/Order;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->discountLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->discountTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "-%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/view/OrderView;->discountLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setMarkup(Lcom/txdriver/db/Order;)V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->app:Lcom/txdriver/App;

    iget-object v1, p0, Lcom/txdriver/ui/view/OrderView;->currency:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/txdriver/order/OrderHelper;->getMarkupText(Lcom/txdriver/App;Lcom/txdriver/db/Order;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->markupLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->markupTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/view/OrderView;->markupLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setPaymentTypes(Lcom/txdriver/db/Order;)V
    .locals 2

    .line 221
    iget-object p1, p1, Lcom/txdriver/db/Order;->paymentTypes:Ljava/util/List;

    .line 222
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->paymentTypesLayout:Landroid/widget/LinearLayout;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->paymentTypesTextView:Landroid/widget/TextView;

    const-string v1, " ,"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setSeller(Lcom/txdriver/db/Order;)V
    .locals 2

    .line 212
    iget-object v0, p1, Lcom/txdriver/db/Order;->sellerName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->sellerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->sellerTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/txdriver/db/Order;->sellerName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/view/OrderView;->sellerLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public setCarType(Lcom/txdriver/db/Order;)V
    .locals 5

    .line 129
    iget-object v0, p1, Lcom/txdriver/db/Order;->carType:Lcom/txdriver/db/CarType;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->carTypeTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/txdriver/db/Order;->carType:Lcom/txdriver/db/CarType;

    iget-object v1, v1, Lcom/txdriver/db/CarType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p1, Lcom/txdriver/db/Order;->carType:Lcom/txdriver/db/CarType;

    iget-object v0, v0, Lcom/txdriver/db/CarType;->color:Ljava/lang/String;

    const-string v1, "#"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x4159999980000000L    # 6710886.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/txdriver/ui/view/OrderView;->carTypeTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/txdriver/db/Order;->carType:Lcom/txdriver/db/CarType;

    iget-object p1, p1, Lcom/txdriver/db/CarType;->color:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 133
    iget-object p1, p0, Lcom/txdriver/ui/view/OrderView;->carTypeTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public setCommission(Lcom/txdriver/db/Order;)V
    .locals 2

    .line 154
    iget-object v0, p1, Lcom/txdriver/db/Order;->commission:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->commissionLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->commissionTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/txdriver/db/Order;->commission:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/view/OrderView;->commissionLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setDestination(Lcom/txdriver/db/Order;)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->destinationLayout:Landroid/widget/LinearLayout;

    iget-object v1, p1, Lcom/txdriver/db/Order;->destinationAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->destinationAddressTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/txdriver/db/Order;->destinationAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/txdriver/db/Order;->destinationAddress:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/txdriver/ui/view/OrderView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10009e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->destinationParkingTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/txdriver/db/Order;->destinationParking:Lcom/txdriver/db/Parking;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/txdriver/db/Order;->destinationParking:Lcom/txdriver/db/Parking;

    iget-object p1, p1, Lcom/txdriver/db/Parking;->name:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string p1, ""

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setExtras(Lcom/txdriver/db/Order;)V
    .locals 4

    .line 203
    iget-object v0, p1, Lcom/txdriver/db/Order;->carExtras:Ljava/util/List;

    .line 204
    iget-object v1, p1, Lcom/txdriver/db/Order;->driverExtras:Ljava/util/List;

    .line 205
    iget-object v2, p0, Lcom/txdriver/ui/view/OrderView;->extrasLayout:Landroid/widget/LinearLayout;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->extrasTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/txdriver/db/Order;->getExtras()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setNote(Lcom/txdriver/db/Order;)V
    .locals 2

    .line 183
    iget-object v0, p1, Lcom/txdriver/db/Order;->note:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->noteLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->noteTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/txdriver/db/Order;->note:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/view/OrderView;->noteLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setOrder(Lcom/txdriver/db/Order;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->addressTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/txdriver/db/Order;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->timeTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p1, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->dateTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p1, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const v1, 0x7f1000aa

    const-string v2, ""

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/txdriver/db/Order;->destinationAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->distanceTextView:Landroid/widget/TextView;

    iget v3, p1, Lcom/txdriver/db/Order;->distance:I

    if-lez v3, :cond_1

    iget v2, p1, Lcom/txdriver/db/Order;->distance:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/txdriver/utils/DistanceUtils;->mToKm(D)D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/txdriver/ui/view/OrderView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p1, Lcom/txdriver/db/Order;->destinationAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 112
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->distanceTextView:Landroid/widget/TextView;

    iget v3, p1, Lcom/txdriver/db/Order;->distance:I

    if-lez v3, :cond_3

    iget v2, p1, Lcom/txdriver/db/Order;->distance:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/txdriver/utils/DistanceUtils;->mToKm(D)D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/txdriver/ui/view/OrderView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/view/OrderView;->setCarType(Lcom/txdriver/db/Order;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/view/OrderView;->setType(Lcom/txdriver/db/Order;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/view/OrderView;->setParking(Lcom/txdriver/db/Order;)V

    .line 117
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/view/OrderView;->setCommission(Lcom/txdriver/db/Order;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/txdriver/ui/view/OrderView;->setMarkup(Lcom/txdriver/db/Order;)V

    .line 119
    invoke-direct {p0, p1}, Lcom/txdriver/ui/view/OrderView;->setDiscount(Lcom/txdriver/db/Order;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/view/OrderView;->setNote(Lcom/txdriver/db/Order;)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/view/OrderView;->setDestination(Lcom/txdriver/db/Order;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/view/OrderView;->setPrice(Lcom/txdriver/db/Order;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/view/OrderView;->setExtras(Lcom/txdriver/db/Order;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/txdriver/ui/view/OrderView;->setSeller(Lcom/txdriver/db/Order;)V

    .line 125
    invoke-direct {p0, p1}, Lcom/txdriver/ui/view/OrderView;->setPaymentTypes(Lcom/txdriver/db/Order;)V

    return-void
.end method

.method public setParking(Lcom/txdriver/db/Order;)V
    .locals 2

    .line 147
    iget-object v0, p1, Lcom/txdriver/db/Order;->parking:Lcom/txdriver/db/Parking;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->parkingTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->parkingTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/txdriver/db/Order;->parking:Lcom/txdriver/db/Parking;

    iget-object p1, p1, Lcom/txdriver/db/Parking;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setPrice(Lcom/txdriver/db/Order;)V
    .locals 6

    .line 198
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->priceLayout:Landroid/widget/LinearLayout;

    iget-wide v1, p1, Lcom/txdriver/db/Order;->price:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->priceTextView:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/txdriver/db/Order;->price:D

    iget-object p1, p0, Lcom/txdriver/ui/view/OrderView;->currency:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setType(Lcom/txdriver/db/Order;)V
    .locals 5

    .line 138
    iget-object v0, p1, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/txdriver/ui/view/OrderView;->orderTypeTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-object v1, v1, Lcom/txdriver/db/OrderType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p1, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-object v0, v0, Lcom/txdriver/db/OrderType;->color:Ljava/lang/String;

    const-string v1, "#"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x4159999980000000L    # 6710886.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/txdriver/ui/view/OrderView;->orderTypeTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-object p1, p1, Lcom/txdriver/db/OrderType;->color:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 142
    iget-object p1, p0, Lcom/txdriver/ui/view/OrderView;->orderTypeTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method
