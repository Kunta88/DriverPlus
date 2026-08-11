.class public Lcom/txdriver/ui/fragment/DriverInfoFragment;
.super Lcom/txdriver/ui/fragment/BaseFragment;
.source "DriverInfoFragment.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/ui/fragment/BaseFragment;",
        "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
        "Lcom/txdriver/json/DriverInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final DRIVER_INFO_STATE:Ljava/lang/String; = "driver_info_state"


# instance fields
.field private currency:Ljava/lang/String;

.field private driverInfo:Lcom/txdriver/json/DriverInfo;

.field private driverInfoRequest:Lcom/txdriver/http/request/DriverInfoRequest;

.field private mBalanceTextView:Landroid/widget/TextView;

.field private mCarTextView:Landroid/widget/TextView;

.field private mDriverNameTextView:Landroid/widget/TextView;

.field private mLast30DaysEarningsTextView:Landroid/widget/TextView;

.field private mLast30DaysStatisticTextView:Landroid/widget/TextView;

.field private mLastMonthEarningsTextView:Landroid/widget/TextView;

.field private mLastMonthStatisticTextView:Landroid/widget/TextView;

.field private mMonthEarningsTextView:Landroid/widget/TextView;

.field private mMonthStatisticTextView:Landroid/widget/TextView;

.field private mPhoneNumberTextView:Landroid/widget/TextView;

.field private mRatingLayout:Landroid/widget/TableRow;

.field private mRatingPositionLayout:Landroid/widget/TableRow;

.field private mRatingPositionTextView:Landroid/widget/TextView;

.field private mRatingTextView:Landroid/widget/TextView;

.field private mSessionEarningsTextView:Landroid/widget/TextView;

.field private mSessionStatisticTextView:Landroid/widget/TextView;

.field private mWeekEarningsTextView:Landroid/widget/TextView;

.field private mWeekStatisticTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 6

    .line 113
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getCurrency()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->currency:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->isRatingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mRatingLayout:Landroid/widget/TableRow;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mRatingPositionLayout:Landroid/widget/TableRow;

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mBalanceTextView:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    iget v4, v4, Lcom/txdriver/json/DriverInfo;->balance:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%1$.2f"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mRatingTextView:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    iget v3, v3, Lcom/txdriver/json/DriverInfo;->rating:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    const-string v3, "%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mRatingPositionTextView:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    iget v2, v2, Lcom/txdriver/json/DriverInfo;->ratingPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mDriverNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    iget-object v1, v1, Lcom/txdriver/json/DriverInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mPhoneNumberTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    iget-object v1, v1, Lcom/txdriver/json/DriverInfo;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mCarTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    iget-object v1, v1, Lcom/txdriver/json/DriverInfo;->car:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    iget-object v0, v0, Lcom/txdriver/json/DriverInfo;->stats:Lcom/txdriver/json/DriverInfo$Stats;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mSessionStatisticTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    iget-object v1, v1, Lcom/txdriver/json/DriverInfo;->stats:Lcom/txdriver/json/DriverInfo$Stats;

    iget v1, v1, Lcom/txdriver/json/DriverInfo$Stats;->session:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mWeekStatisticTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    iget-object v1, v1, Lcom/txdriver/json/DriverInfo;->stats:Lcom/txdriver/json/DriverInfo$Stats;

    iget v1, v1, Lcom/txdriver/json/DriverInfo$Stats;->week:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mMonthStatisticTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    iget-object v1, v1, Lcom/txdriver/json/DriverInfo;->stats:Lcom/txdriver/json/DriverInfo$Stats;

    iget v1, v1, Lcom/txdriver/json/DriverInfo$Stats;->month:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mLastMonthStatisticTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    iget-object v1, v1, Lcom/txdriver/json/DriverInfo;->stats:Lcom/txdriver/json/DriverInfo$Stats;

    iget v1, v1, Lcom/txdriver/json/DriverInfo$Stats;->lastMonth:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mLast30DaysStatisticTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    iget-object v1, v1, Lcom/txdriver/json/DriverInfo;->stats:Lcom/txdriver/json/DriverInfo$Stats;

    iget v1, v1, Lcom/txdriver/json/DriverInfo$Stats;->last30Days:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    iget-object v0, v0, Lcom/txdriver/json/DriverInfo;->earnings:Lcom/txdriver/json/DriverInfo$Earnings;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mSessionEarningsTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    iget-object v1, v1, Lcom/txdriver/json/DriverInfo;->earnings:Lcom/txdriver/json/DriverInfo$Earnings;

    iget v1, v1, Lcom/txdriver/json/DriverInfo$Earnings;->session:F

    float-to-double v1, v1

    iget-object v3, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->currency:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mWeekEarningsTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    iget-object v1, v1, Lcom/txdriver/json/DriverInfo;->earnings:Lcom/txdriver/json/DriverInfo$Earnings;

    iget v1, v1, Lcom/txdriver/json/DriverInfo$Earnings;->week:F

    float-to-double v1, v1

    iget-object v3, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->currency:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mMonthEarningsTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    iget-object v1, v1, Lcom/txdriver/json/DriverInfo;->earnings:Lcom/txdriver/json/DriverInfo$Earnings;

    iget v1, v1, Lcom/txdriver/json/DriverInfo$Earnings;->month:F

    float-to-double v1, v1

    iget-object v3, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->currency:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mLastMonthEarningsTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    iget-object v1, v1, Lcom/txdriver/json/DriverInfo;->earnings:Lcom/txdriver/json/DriverInfo$Earnings;

    iget v1, v1, Lcom/txdriver/json/DriverInfo$Earnings;->lastMonth:F

    float-to-double v1, v1

    iget-object v3, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->currency:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mLast30DaysEarningsTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    iget-object v1, v1, Lcom/txdriver/json/DriverInfo;->earnings:Lcom/txdriver/json/DriverInfo$Earnings;

    iget v1, v1, Lcom/txdriver/json/DriverInfo$Earnings;->last30Days:F

    float-to-double v1, v1

    iget-object v3, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->currency:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private requestDriverInfo()V
    .locals 2

    .line 104
    new-instance v0, Lcom/txdriver/http/request/DriverInfoRequest;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->app:Lcom/txdriver/App;

    invoke-direct {v0, v1}, Lcom/txdriver/http/request/DriverInfoRequest;-><init>(Lcom/txdriver/App;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfoRequest:Lcom/txdriver/http/request/DriverInfoRequest;

    .line 105
    invoke-virtual {v0, p0}, Lcom/txdriver/http/request/DriverInfoRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 106
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfoRequest:Lcom/txdriver/http/request/DriverInfoRequest;

    invoke-virtual {v0, v1}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    .line 107
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/DriverInfoFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/DriverInfoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/DriverInfoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/txdriver/ui/activity/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/activity/BaseActivity;->showPending(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "driver_info_state"

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/txdriver/json/DriverInfo;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    if-nez p1, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/DriverInfoFragment;->requestDriverInfo()V

    goto :goto_0

    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/DriverInfoFragment;->initView()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0057

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900da

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mBalanceTextView:Landroid/widget/TextView;

    const p2, 0x7f0900d8

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TableRow;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mRatingLayout:Landroid/widget/TableRow;

    const p2, 0x7f0900e4

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mRatingTextView:Landroid/widget/TextView;

    const p2, 0x7f0900d9

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TableRow;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mRatingPositionLayout:Landroid/widget/TableRow;

    const p2, 0x7f0900e5

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mRatingPositionTextView:Landroid/widget/TextView;

    const p2, 0x7f0900e7

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mSessionStatisticTextView:Landroid/widget/TextView;

    const p2, 0x7f0900e9

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mWeekStatisticTextView:Landroid/widget/TextView;

    const p2, 0x7f0900e1

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mMonthStatisticTextView:Landroid/widget/TextView;

    const p2, 0x7f0900df

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mLastMonthStatisticTextView:Landroid/widget/TextView;

    const p2, 0x7f0900dd

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mLast30DaysStatisticTextView:Landroid/widget/TextView;

    const p2, 0x7f0900e6

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mSessionEarningsTextView:Landroid/widget/TextView;

    const p2, 0x7f0900e8

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mWeekEarningsTextView:Landroid/widget/TextView;

    const p2, 0x7f0900e0

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mMonthEarningsTextView:Landroid/widget/TextView;

    const p2, 0x7f0900de

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mLastMonthEarningsTextView:Landroid/widget/TextView;

    const p2, 0x7f0900dc

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mLast30DaysEarningsTextView:Landroid/widget/TextView;

    const p2, 0x7f0900e2

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mDriverNameTextView:Landroid/widget/TextView;

    const p2, 0x7f0900e3

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mPhoneNumberTextView:Landroid/widget/TextView;

    const p2, 0x7f0900db

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->mCarTextView:Landroid/widget/TextView;

    .line 70
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/DriverInfoFragment;->initView()V

    return-object p1
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 1

    .line 156
    iget-object p1, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->app:Lcom/txdriver/App;

    const v0, 0x7f100264

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/DriverInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/DriverInfo;)V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/DriverInfoFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/DriverInfoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/DriverInfoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/txdriver/ui/activity/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/activity/BaseActivity;->showPending(Z)V

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    if-eqz p1, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/DriverInfoFragment;->initView()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/txdriver/json/DriverInfo;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/DriverInfoFragment;->onResponse(Lcom/txdriver/json/DriverInfo;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 89
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 90
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfo:Lcom/txdriver/json/DriverInfo;

    if-eqz v0, :cond_0

    const-string v1, "driver_info_state"

    .line 91
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 97
    invoke-super {p0}, Lcom/txdriver/ui/fragment/BaseFragment;->onStop()V

    .line 98
    iget-object v0, p0, Lcom/txdriver/ui/fragment/DriverInfoFragment;->driverInfoRequest:Lcom/txdriver/http/request/DriverInfoRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/DriverInfoRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    :cond_0
    return-void
.end method
