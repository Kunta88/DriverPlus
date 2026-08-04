.class public Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;
.super Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;
.source "ReceiptDialogFragment.java"

# interfaces
.implements Lcom/txdriver/taximeter/TaximeterUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter;
    }
.end annotation


# instance fields
.field private mCurrency:Ljava/lang/String;

.field private mDiscountLayout:Landroid/view/View;

.field private mDiscountTextView:Landroid/widget/TextView;

.field private mDistancePriceDescrTextView:Landroid/widget/TextView;

.field private mDistancePriceTextView:Landroid/widget/TextView;

.field private mDistanceTextView:Landroid/widget/TextView;

.field private mEndChargeLayout:Landroid/view/View;

.field private mEndChargeTextView:Landroid/widget/TextView;

.field private mExtrasLayout:Landroid/view/View;

.field private mExtrasTextView:Landroid/widget/TextView;

.field private mFotterView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mMarkupLayout:Landroid/view/View;

.field private mMarkupTextView:Landroid/widget/TextView;

.field private mMinPriceLayout:Landroid/view/View;

.field private mMinPriceTextView:Landroid/widget/TextView;

.field private mOrder:Lcom/txdriver/db/Order;

.field private mStartChargeLayout:Landroid/view/View;

.field private mStartChargeTextView:Landroid/widget/TextView;

.field private mSumTextView:Landroid/widget/TextView;

.field private mTaximeter:Lcom/txdriver/taximeter/Taximeter;

.field private mTimePriceDescrTextView:Landroid/widget/TextView;

.field private mTimePriceTextView:Landroid/widget/TextView;

.field private mTimeTextView:Landroid/widget/TextView;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWaitDescrTextView:Landroid/widget/TextView;

.field private mWaitLayout:Landroid/view/View;

.field private mWaitTextView:Landroid/widget/TextView;

.field private mZoneChargeLayout:Landroid/view/View;

.field private mZoneChargeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;)Lcom/txdriver/taximeter/Taximeter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;)Lcom/txdriver/db/Order;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mOrder:Lcom/txdriver/db/Order;

    return-object p0
.end method

.method private getContentView()Landroid/view/View;
    .locals 5

    .line 227
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0050

    const/4 v2, 0x0

    .line 228
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090247

    .line 229
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mListView:Landroid/widget/ListView;

    const v3, 0x7f0c0074

    const/4 v4, 0x0

    .line 230
    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    return-object v1
.end method

.method private getTariffName(Lcom/txdriver/db/TariffZone;Lcom/txdriver/db/Tariff;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const v2, 0x7f100253

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 219
    invoke-virtual {p0, v2}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    iget-object p2, p2, Lcom/txdriver/db/Tariff;->name:Ljava/lang/String;

    aput-object p2, v4, v1

    iget-object p1, p1, Lcom/txdriver/db/TariffZone;->zone:Lcom/txdriver/db/Zone;

    iget-object p1, p1, Lcom/txdriver/db/Zone;->name:Ljava/lang/String;

    aput-object p1, v4, v0

    const-string p1, "%s: %s - %s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    .line 221
    invoke-virtual {p0, v2}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    iget-object p2, p2, Lcom/txdriver/db/Tariff;->name:Ljava/lang/String;

    aput-object p2, p1, v1

    const-string p2, "%s: %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private initListFooterView()V
    .locals 12

    .line 170
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mDistanceTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v1}, Lcom/txdriver/taximeter/Taximeter;->getDistance()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/txdriver/utils/DistanceUtils;->mToKm(D)D

    move-result-wide v1

    const v3, 0x7f1000aa

    .line 171
    invoke-virtual {p0, v3}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-static {v1, v2, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTimeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v1}, Lcom/txdriver/taximeter/Taximeter;->getTime()I

    move-result v1

    invoke-static {v1}, Lcom/txdriver/utils/TimeUtils;->formatSecconds(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTimePriceTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v1}, Lcom/txdriver/taximeter/Taximeter;->getTimePrice()D

    move-result-wide v1

    iget-object v3, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mCurrency:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mDistancePriceTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v1}, Lcom/txdriver/taximeter/Taximeter;->getDistancePrice()D

    move-result-wide v1

    iget-object v3, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mCurrency:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Taximeter;->getStatements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "%s x %s"

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v0, v3, :cond_0

    .line 176
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Taximeter;->getStatements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/taximeter/Statement;

    .line 177
    iget-object v6, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTimePriceDescrTextView:Landroid/widget/TextView;

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->getPaidTime()I

    move-result v8

    invoke-static {v8}, Lcom/txdriver/utils/TimeUtils;->secondsToMinutes(I)D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->getMinutePrice()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v6, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mDistancePriceDescrTextView:Landroid/widget/TextView;

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->getPaidDistance()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/txdriver/utils/DistanceUtils;->mToKm(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->getKilometerPrice()F

    move-result v0

    float-to-double v8, v0

    invoke-static {v8, v9}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTimePriceDescrTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mDistancePriceDescrTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mMinPriceLayout:Landroid/view/View;

    iget-object v6, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v6}, Lcom/txdriver/taximeter/Taximeter;->getMinPrice()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-lez v10, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    const/16 v6, 0x8

    :goto_1
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mMinPriceTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v6}, Lcom/txdriver/taximeter/Taximeter;->getMinPrice()D

    move-result-wide v6

    iget-object v10, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mCurrency:Ljava/lang/String;

    invoke-static {v6, v7, v10}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mStartChargeLayout:Landroid/view/View;

    iget-object v6, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v6}, Lcom/txdriver/taximeter/Taximeter;->getStartCharge()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mStartChargeTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v6}, Lcom/txdriver/taximeter/Taximeter;->getStartCharge()F

    move-result v6

    float-to-double v10, v6

    iget-object v6, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mCurrency:Ljava/lang/String;

    invoke-static {v10, v11, v6}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mEndChargeLayout:Landroid/view/View;

    iget-object v6, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v6}, Lcom/txdriver/taximeter/Taximeter;->getEndCharge()F

    move-result v6

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    const/16 v6, 0x8

    :goto_3
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mEndChargeTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v6}, Lcom/txdriver/taximeter/Taximeter;->getEndCharge()F

    move-result v6

    float-to-double v10, v6

    iget-object v6, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mCurrency:Ljava/lang/String;

    invoke-static {v10, v11, v6}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mZoneChargeLayout:Landroid/view/View;

    iget-object v6, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v6}, Lcom/txdriver/taximeter/Taximeter;->getZonesCharge()F

    move-result v6

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    const/16 v6, 0x8

    :goto_4
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mZoneChargeTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v6}, Lcom/txdriver/taximeter/Taximeter;->getZonesCharge()F

    move-result v6

    float-to-double v6, v6

    iget-object v10, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mCurrency:Ljava/lang/String;

    invoke-static {v6, v7, v10}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->app:Lcom/txdriver/App;

    iget-object v6, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v7, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v7}, Lcom/txdriver/taximeter/Taximeter;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/txdriver/order/OrderHelper;->getWaitPrice(Lcom/txdriver/App;Lcom/txdriver/db/Order;Lcom/txdriver/db/Tariff;)D

    move-result-wide v6

    .line 193
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mWaitLayout:Landroid/view/View;

    cmpl-double v10, v6, v8

    if-lez v10, :cond_5

    const/4 v4, 0x0

    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mWaitTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mCurrency:Ljava/lang/String;

    invoke-static {v6, v7, v4}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    cmpl-double v0, v6, v8

    if-lez v0, :cond_6

    .line 196
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mWaitDescrTextView:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    iget-object v4, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v4}, Lcom/txdriver/taximeter/Taximeter;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v4

    invoke-static {v4}, Lcom/txdriver/order/OrderHelper;->getPricePerWaitMinute(Lcom/txdriver/db/Tariff;)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_6
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->app:Lcom/txdriver/App;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mOrder:Lcom/txdriver/db/Order;

    invoke-static {v0, v1, v2}, Lcom/txdriver/taximeter/TaximeterHelper;->getExtrasPrice(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;)D

    move-result-wide v0

    cmpl-double v2, v0, v8

    if-lez v2, :cond_7

    .line 200
    iget-object v2, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mExtrasLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v2, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mExtrasTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mCurrency:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :cond_7
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->app:Lcom/txdriver/App;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mOrder:Lcom/txdriver/db/Order;

    invoke-static {v0, v1, v2}, Lcom/txdriver/taximeter/TaximeterHelper;->getDiscountAmount(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;)D

    move-result-wide v0

    cmpl-double v2, v0, v8

    if-lez v2, :cond_8

    .line 205
    iget-object v2, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mDiscountLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v2, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mDiscountTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mCurrency:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :cond_8
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->app:Lcom/txdriver/App;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mOrder:Lcom/txdriver/db/Order;

    invoke-static {v0, v1, v2}, Lcom/txdriver/taximeter/TaximeterHelper;->getMarkupAmount(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;)D

    move-result-wide v0

    cmpl-double v2, v0, v8

    if-lez v2, :cond_9

    .line 210
    iget-object v2, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mMarkupLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v2, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mMarkupTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mCurrency:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :cond_9
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mSumTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->app:Lcom/txdriver/App;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    iget-object v3, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mOrder:Lcom/txdriver/db/Order;

    invoke-static {v1, v2, v3}, Lcom/txdriver/taximeter/TaximeterHelper;->getPrice(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mCurrency:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static newInstance()Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;
    .locals 2

    .line 80
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;-><init>()V

    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->setCancelable(Z)V

    return-object v0
.end method

.method public static show(Landroidx/fragment/app/FragmentActivity;)Landroidx/fragment/app/DialogFragment;
    .locals 1

    .line 74
    invoke-static {}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->newInstance()Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/txdriver/utils/Utils;->showDialog(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;)V

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 128
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 129
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getCurrentOrderId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/txdriver/db/Order;->get(J)Lcom/txdriver/db/Order;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mOrder:Lcom/txdriver/db/Order;

    .line 130
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTitleTextView:Landroid/widget/TextView;

    .line 131
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mDistanceTextView:Landroid/widget/TextView;

    .line 132
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTimeTextView:Landroid/widget/TextView;

    .line 133
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mDistancePriceTextView:Landroid/widget/TextView;

    .line 134
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTimePriceTextView:Landroid/widget/TextView;

    .line 135
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mDistancePriceDescrTextView:Landroid/widget/TextView;

    .line 136
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTimePriceDescrTextView:Landroid/widget/TextView;

    .line 137
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mMinPriceTextView:Landroid/widget/TextView;

    .line 138
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mMinPriceLayout:Landroid/view/View;

    .line 139
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mStartChargeTextView:Landroid/widget/TextView;

    .line 140
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mStartChargeLayout:Landroid/view/View;

    .line 141
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mEndChargeTextView:Landroid/widget/TextView;

    .line 142
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mEndChargeLayout:Landroid/view/View;

    .line 143
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mZoneChargeTextView:Landroid/widget/TextView;

    .line 144
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mZoneChargeLayout:Landroid/view/View;

    .line 145
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mWaitTextView:Landroid/widget/TextView;

    .line 146
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mWaitDescrTextView:Landroid/widget/TextView;

    .line 147
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mWaitLayout:Landroid/view/View;

    .line 148
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mExtrasLayout:Landroid/view/View;

    .line 149
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mExtrasTextView:Landroid/widget/TextView;

    .line 150
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mDiscountLayout:Landroid/view/View;

    .line 151
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mDiscountTextView:Landroid/widget/TextView;

    .line 152
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mMarkupLayout:Landroid/view/View;

    .line 153
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mMarkupTextView:Landroid/widget/TextView;

    .line 154
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const v0, 0x7f0902f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mSumTextView:Landroid/widget/TextView;

    .line 155
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->initListFooterView()V

    .line 156
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mFotterView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 158
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getStatements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 159
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTitleTextView:Landroid/widget/TextView;

    const v0, 0x7f10024c

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v2}, Lcom/txdriver/taximeter/Taximeter;->getStatements()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getStatements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 162
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v3}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getStatements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/taximeter/Statement;

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object p1

    .line 164
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Taximeter;->getStatements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/taximeter/Statement;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Statement;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->getTariffName(Lcom/txdriver/db/TariffZone;Lcom/txdriver/db/Tariff;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p1, v0}, Lcom/txdriver/taximeter/Taximeter;->pause(Z)V

    .line 90
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getCurrency()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mCurrency:Ljava/lang/String;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 96
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 97
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1001f1

    .line 98
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800cb

    .line 99
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 100
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1001b5

    .line 101
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$2;

    invoke-direct {v2, p0, p1}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$2;-><init>(Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1001df

    .line 115
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$1;-><init>(Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onIdleChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 242
    invoke-super {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onPause()V

    .line 243
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v0, p0}, Lcom/txdriver/taximeter/Taximeter;->removeTaximeterUpdateListener(Lcom/txdriver/taximeter/TaximeterUpdateListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 236
    invoke-super {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onResume()V

    .line 237
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v0, p0}, Lcom/txdriver/taximeter/Taximeter;->addTaximeterUpdateListener(Lcom/txdriver/taximeter/TaximeterUpdateListener;)V

    return-void
.end method

.method public onStatusChanged(I)V
    .locals 0

    return-void
.end method

.method public onTariffChanged(Lcom/txdriver/db/Tariff;)V
    .locals 0

    return-void
.end method

.method public onTariffZoneChanged(Lcom/txdriver/db/TariffZone;)V
    .locals 0

    return-void
.end method

.method public onTaximeterUpdate(Lcom/txdriver/taximeter/Taximeter;)V
    .locals 0

    .line 248
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->isPause()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method
