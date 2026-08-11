.class public Lcom/txdriver/ui/fragment/TaximeterFragment;
.super Lcom/txdriver/ui/fragment/BaseFragment;
.source "TaximeterFragment.java"

# interfaces
.implements Lcom/txdriver/taximeter/TaximeterUpdateListener;
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/ui/fragment/BaseFragment;",
        "Lcom/txdriver/taximeter/TaximeterUpdateListener;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/txdriver/db/Tariff;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final MIN_SPEED:I = 0x14

.field private static final TAG:Ljava/lang/String; = "TaximeterFragment"

.field private static final TARIFF_LOADER:I = 0x1


# instance fields
.field private mCurrency:Ljava/lang/String;

.field private mDistanceTextView:Landroid/widget/TextView;

.field private mIdleButton:Landroid/widget/Button;

.field private mMinPriceIncludesKmsTextView:Landroid/widget/TextView;

.field private mMinPriceIncludesMinutesTextView:Landroid/widget/TextView;

.field private mMinPriceOperationTextView:Landroid/widget/TextView;

.field private mMinPriceTextView:Landroid/widget/TextView;

.field private mOrder:Lcom/txdriver/db/Order;

.field private mPriceFractinalTextView:Landroid/widget/TextView;

.field private mPriceIntTextView:Landroid/widget/TextView;

.field private mPricePerKmTextView:Landroid/widget/TextView;

.field private mPricePerMinuteTextView:Landroid/widget/TextView;

.field private mReceiptButton:Landroid/widget/Button;

.field private mSpeedLayout:Landroid/view/View;

.field private mSpeedTextView:Landroid/widget/TextView;

.field private mStartButton:Landroid/widget/Button;

.field private mTariff:Lcom/txdriver/db/Tariff;

.field private mTariffAdapter:Lcom/activeandroid/widget/ModelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/activeandroid/widget/ModelAdapter<",
            "Lcom/txdriver/db/Tariff;",
            ">;"
        }
    .end annotation
.end field

.field private mTariffClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTariffTextView:Landroid/widget/TextView;

.field private mTariffTextViewClickListener:Landroid/view/View$OnClickListener;

.field private mTariffs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/db/Tariff;",
            ">;"
        }
    .end annotation
.end field

.field private mTaximeter:Lcom/txdriver/taximeter/Taximeter;

.field private mTimeTextView:Landroid/widget/TextView;

.field private mZoneTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/BaseFragment;-><init>()V

    .line 64
    new-instance v0, Lcom/txdriver/ui/fragment/TaximeterFragment$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/TaximeterFragment$1;-><init>(Lcom/txdriver/ui/fragment/TaximeterFragment;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTariffClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    new-instance v0, Lcom/txdriver/ui/fragment/TaximeterFragment$2;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/TaximeterFragment$2;-><init>(Lcom/txdriver/ui/fragment/TaximeterFragment;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTariffTextViewClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/TaximeterFragment;)Lcom/activeandroid/widget/ModelAdapter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTariffAdapter:Lcom/activeandroid/widget/ModelAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/fragment/TaximeterFragment;)Lcom/txdriver/taximeter/Taximeter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/txdriver/ui/fragment/TaximeterFragment;)Lcom/txdriver/db/Order;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mOrder:Lcom/txdriver/db/Order;

    return-object p0
.end method

.method static synthetic access$300(Lcom/txdriver/ui/fragment/TaximeterFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTariffClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/txdriver/ui/fragment/TaximeterFragment;)Lcom/txdriver/db/Tariff;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTariff:Lcom/txdriver/db/Tariff;

    return-object p0
.end method

.method static synthetic access$500(Lcom/txdriver/ui/fragment/TaximeterFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->showReceipt()V

    return-void
.end method

.method private displayTariff(Lcom/txdriver/db/Tariff;)V
    .locals 7

    if-eqz p1, :cond_3

    .line 287
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTariffTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/txdriver/db/Tariff;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mMinPriceTextView:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/txdriver/db/Tariff;->minPrice:D

    iget-object v3, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mCurrency:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mPricePerMinuteTextView:Landroid/widget/TextView;

    iget v1, p1, Lcom/txdriver/db/Tariff;->pricePerMinute:F

    float-to-double v1, v1

    iget-object v3, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mCurrency:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mPricePerKmTextView:Landroid/widget/TextView;

    iget v1, p1, Lcom/txdriver/db/Tariff;->pricePerKm:F

    float-to-double v1, v1

    iget-object v3, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mCurrency:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mMinPriceIncludesKmsTextView:Landroid/widget/TextView;

    iget v1, p1, Lcom/txdriver/db/Tariff;->minPriceIncludesKms:F

    const-wide/16 v2, 0x0

    const/high16 v4, 0x4f000000

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    iget v1, p1, Lcom/txdriver/db/Tariff;->minPriceIncludesKms:F

    float-to-double v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v2

    :goto_0
    invoke-static {v5, v6}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mMinPriceIncludesMinutesTextView:Landroid/widget/TextView;

    iget v1, p1, Lcom/txdriver/db/Tariff;->minPriceIncludesMinutes:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    iget v1, p1, Lcom/txdriver/db/Tariff;->minPriceIncludesMinutes:F

    float-to-double v2, v1

    :cond_1
    invoke-static {v2, v3}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mMinPriceOperationTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/txdriver/db/Tariff;->isMinPriceOperationOr()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f100187

    goto :goto_1

    :cond_2
    const p1, 0x7f100031

    :goto_1
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private displayTariff(Lcom/txdriver/db/TariffZone;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mPricePerMinuteTextView:Landroid/widget/TextView;

    iget v1, p1, Lcom/txdriver/db/TariffZone;->pricePerMinute:F

    float-to-double v1, v1

    iget-object v3, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mCurrency:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mPricePerKmTextView:Landroid/widget/TextView;

    iget v1, p1, Lcom/txdriver/db/TariffZone;->pricePerKm:F

    float-to-double v1, v1

    iget-object v3, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mCurrency:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mZoneTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/txdriver/db/TariffZone;->zone:Lcom/txdriver/db/Zone;

    iget-object v1, v1, Lcom/txdriver/db/Zone;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTariffTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/txdriver/db/TariffZone;->tariff:Lcom/txdriver/db/Tariff;

    iget-object p1, p1, Lcom/txdriver/db/Tariff;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mZoneTextView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->displayTariff(Lcom/txdriver/db/Tariff;)V

    :goto_0
    return-void
.end method

.method private showIdleButton(Z)V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mIdleButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTariff:Lcom/txdriver/db/Tariff;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/txdriver/db/Tariff;->algorithm:Lcom/txdriver/db/Tariff$Algorithm;

    sget-object v1, Lcom/txdriver/db/Tariff$Algorithm;->DISTANCE_OR_MANUAL_TIME:Lcom/txdriver/db/Tariff$Algorithm;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private showReceipt()V
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;)Landroidx/fragment/app/DialogFragment;

    return-void
.end method

.method private showReceiptButton(Z)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mReceiptButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private showStartButton(Z)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mStartButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private update(Lcom/txdriver/taximeter/Taximeter;)V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getTime()I

    move-result v1

    invoke-static {v1}, Lcom/txdriver/utils/TimeUtils;->formatSecconds(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mDistanceTextView:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getDistance()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/txdriver/utils/DistanceUtils;->mToKm(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%1$.2f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->updateSpeed(Lcom/txdriver/taximeter/Taximeter;)V

    .line 181
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->updatePrice(Lcom/txdriver/taximeter/Taximeter;)V

    return-void
.end method

.method private updateButtons(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    invoke-direct {p0, v1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->showReceiptButton(Z)V

    .line 203
    invoke-direct {p0, v1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->showIdleButton(Z)V

    .line 204
    invoke-direct {p0, v0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->showStartButton(Z)V

    goto :goto_0

    .line 192
    :cond_1
    invoke-direct {p0, v0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->showReceiptButton(Z)V

    .line 193
    invoke-direct {p0, v0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->showIdleButton(Z)V

    .line 194
    invoke-direct {p0, v1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->showStartButton(Z)V

    goto :goto_0

    .line 187
    :cond_2
    invoke-direct {p0, v0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->showStartButton(Z)V

    .line 188
    invoke-direct {p0, v1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->showReceiptButton(Z)V

    .line 189
    invoke-direct {p0, v1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->showIdleButton(Z)V

    goto :goto_0

    .line 197
    :cond_3
    invoke-direct {p0, v0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->showReceiptButton(Z)V

    .line 198
    invoke-direct {p0, v0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->showIdleButton(Z)V

    .line 199
    invoke-direct {p0, v1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->showStartButton(Z)V

    :goto_0
    return-void
.end method

.method private updatePrice(Lcom/txdriver/taximeter/Taximeter;)V
    .locals 6

    .line 228
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 229
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getTime()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->app:Lcom/txdriver/App;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mOrder:Lcom/txdriver/db/Order;

    invoke-static {v1, p1, v2, v0}, Lcom/txdriver/taximeter/TaximeterHelper;->getPrice(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;Z)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    double-to-int p1, v0

    int-to-double v2, p1

    .line 231
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 232
    iget-object v1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mPriceIntTextView:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string p1, "%d"

    invoke-static {v2, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mPriceFractinalTextView:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    const-string v0, "%02d"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSpeed(Lcom/txdriver/taximeter/Taximeter;)V
    .locals 7

    .line 216
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getSpeed()I

    move-result v0

    .line 217
    iget-object v1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTariff:Lcom/txdriver/db/Tariff;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/txdriver/db/Tariff;->getIdleSpeed()F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 218
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->isIdle()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 219
    :goto_1
    iget-object v4, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mSpeedLayout:Landroid/view/View;

    if-eqz v1, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v4, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mSpeedTextView:Landroid/widget/TextView;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    const-string v0, "%1$d"

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getStatus()I

    move-result p1

    if-ne p1, v3, :cond_3

    xor-int/lit8 p1, v1, 0x1

    .line 222
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->showReceiptButton(Z)V

    xor-int/lit8 p1, v1, 0x1

    .line 223
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->showIdleButton(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 143
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 144
    iget-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getCurrency()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mCurrency:Ljava/lang/String;

    .line 145
    iget-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    .line 146
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "fonts/digital_counter_7.ttf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 147
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 148
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mPriceIntTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 149
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mPriceFractinalTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 150
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mDistanceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 151
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mSpeedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 152
    new-instance p1, Lcom/activeandroid/widget/ModelAdapter;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x1090003

    invoke-direct {p1, v0, v1}, Lcom/activeandroid/widget/ModelAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTariffAdapter:Lcom/activeandroid/widget/ModelAdapter;

    .line 153
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 154
    iget-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mOrder:Lcom/txdriver/db/Order;

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mStartButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->app:Lcom/txdriver/App;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mOrder:Lcom/txdriver/db/Order;

    invoke-static {v0, v1}, Lcom/txdriver/taximeter/TaximeterHelper;->isUseTaximeter(Lcom/txdriver/App;Lcom/txdriver/db/Order;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 87
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 88
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->setHasOptionsMenu(Z)V

    .line 89
    iget-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getCurrentOrderId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/txdriver/db/Order;->get(J)Lcom/txdriver/db/Order;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mOrder:Lcom/txdriver/db/Order;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Tariff;",
            ">;>;"
        }
    .end annotation

    .line 315
    iget-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mOrder:Lcom/txdriver/db/Order;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/txdriver/db/Order;->tariff:Lcom/txdriver/db/Tariff;

    if-eqz p1, :cond_0

    .line 316
    iget-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object p1, p1, Lcom/txdriver/db/Order;->tariff:Lcom/txdriver/db/Tariff;

    invoke-virtual {p1}, Lcom/txdriver/db/Tariff;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/txdriver/db/Tariff;->getQuery(J)Lcom/activeandroid/query/From;

    move-result-object p1

    goto :goto_0

    .line 317
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mOrder:Lcom/txdriver/db/Order;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/txdriver/db/Order;->carType:Lcom/txdriver/db/CarType;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object p1, p1, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    if-eqz p1, :cond_1

    .line 318
    iget-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object p1, p1, Lcom/txdriver/db/Order;->carType:Lcom/txdriver/db/CarType;

    invoke-virtual {p1}, Lcom/txdriver/db/CarType;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 319
    iget-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object p1, p1, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    invoke-virtual {p1}, Lcom/txdriver/db/OrderType;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 320
    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getWeekDay()I

    move-result v4

    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->minutesFromMidnight()I

    move-result v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/txdriver/db/Tariff;->getQuery(JJIIZ)Lcom/activeandroid/query/From;

    move-result-object p1

    goto :goto_0

    .line 322
    :cond_1
    iget-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getCarType()J

    move-result-wide p1

    .line 323
    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getWeekDay()I

    move-result v0

    .line 324
    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->minutesFromMidnight()I

    move-result v1

    const/4 v2, 0x0

    .line 323
    invoke-static {p1, p2, v0, v1, v2}, Lcom/txdriver/db/Tariff;->getQuery(JIIZ)Lcom/activeandroid/query/From;

    move-result-object p1

    .line 326
    :goto_0
    new-instance p2, Lcom/txdriver/ui/fragment/TaximeterFragment$6;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Lcom/txdriver/ui/fragment/TaximeterFragment$6;-><init>(Lcom/txdriver/ui/fragment/TaximeterFragment;Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0c0062

    const/4 p3, 0x0

    .line 94
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090308

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTimeTextView:Landroid/widget/TextView;

    const p2, 0x7f090303

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mPriceIntTextView:Landroid/widget/TextView;

    const p2, 0x7f090302

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mPriceFractinalTextView:Landroid/widget/TextView;

    const p2, 0x7f0902fc

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mDistanceTextView:Landroid/widget/TextView;

    const p2, 0x7f090306

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mSpeedTextView:Landroid/widget/TextView;

    const p2, 0x7f0902de

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mZoneTextView:Landroid/widget/TextView;

    const p2, 0x7f0902dd

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mSpeedLayout:Landroid/view/View;

    const p2, 0x7f0902e1

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mStartButton:Landroid/widget/Button;

    .line 103
    new-instance p3, Lcom/txdriver/ui/fragment/TaximeterFragment$3;

    invoke-direct {p3, p0}, Lcom/txdriver/ui/fragment/TaximeterFragment$3;-><init>(Lcom/txdriver/ui/fragment/TaximeterFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0902e0

    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mReceiptButton:Landroid/widget/Button;

    .line 116
    new-instance p3, Lcom/txdriver/ui/fragment/TaximeterFragment$4;

    invoke-direct {p3, p0}, Lcom/txdriver/ui/fragment/TaximeterFragment$4;-><init>(Lcom/txdriver/ui/fragment/TaximeterFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0902df

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mIdleButton:Landroid/widget/Button;

    .line 123
    new-instance p3, Lcom/txdriver/ui/fragment/TaximeterFragment$5;

    invoke-direct {p3, p0}, Lcom/txdriver/ui/fragment/TaximeterFragment$5;-><init>(Lcom/txdriver/ui/fragment/TaximeterFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0902fe

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mMinPriceTextView:Landroid/widget/TextView;

    const p2, 0x7f090301

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mMinPriceOperationTextView:Landroid/widget/TextView;

    const p2, 0x7f0902ff

    .line 132
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mMinPriceIncludesKmsTextView:Landroid/widget/TextView;

    const p2, 0x7f090300

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mMinPriceIncludesMinutesTextView:Landroid/widget/TextView;

    const p2, 0x7f090304

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mPricePerKmTextView:Landroid/widget/TextView;

    const p2, 0x7f090305

    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mPricePerMinuteTextView:Landroid/widget/TextView;

    const p2, 0x7f090307

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTariffTextView:Landroid/widget/TextView;

    .line 137
    iget-object p3, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTariffTextViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onIdleChanged(Z)V
    .locals 0

    .line 309
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->updateIdleButton(Z)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/fragment/TaximeterFragment;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Tariff;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Tariff;",
            ">;)V"
        }
    .end annotation

    .line 342
    iput-object p2, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTariffs:Ljava/util/List;

    .line 343
    iget-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTariffAdapter:Lcom/activeandroid/widget/ModelAdapter;

    invoke-virtual {p1, p2}, Lcom/activeandroid/widget/ModelAdapter;->setData(Ljava/util/List;)V

    .line 344
    iget-object p1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTariffAdapter:Lcom/activeandroid/widget/ModelAdapter;

    invoke-virtual {p1}, Lcom/activeandroid/widget/ModelAdapter;->notifyDataSetChanged()V

    .line 345
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->setupCurrentTariff()V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Tariff;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 173
    invoke-super {p0}, Lcom/txdriver/ui/fragment/BaseFragment;->onPause()V

    .line 174
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v0, p0}, Lcom/txdriver/taximeter/Taximeter;->removeTaximeterUpdateListener(Lcom/txdriver/taximeter/TaximeterUpdateListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 161
    invoke-super {p0}, Lcom/txdriver/ui/fragment/BaseFragment;->onResume()V

    .line 162
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v0, p0}, Lcom/txdriver/taximeter/Taximeter;->addTaximeterUpdateListener(Lcom/txdriver/taximeter/TaximeterUpdateListener;)V

    .line 163
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-direct {p0, v0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->update(Lcom/txdriver/taximeter/Taximeter;)V

    .line 164
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Taximeter;->getStatus()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->updateButtons(I)V

    .line 165
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Taximeter;->isIdle()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->updateIdleButton(Z)V

    .line 166
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Taximeter;->isPause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->showReceipt()V

    :cond_0
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 0

    .line 304
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->updateButtons(I)V

    return-void
.end method

.method public onTariffChanged(Lcom/txdriver/db/Tariff;)V
    .locals 0

    .line 259
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->setupCurrentTariff()V

    return-void
.end method

.method public onTariffZoneChanged(Lcom/txdriver/db/TariffZone;)V
    .locals 0

    .line 299
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->displayTariff(Lcom/txdriver/db/TariffZone;)V

    return-void
.end method

.method public onTaximeterUpdate(Lcom/txdriver/taximeter/Taximeter;)V
    .locals 0

    .line 254
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->update(Lcom/txdriver/taximeter/Taximeter;)V

    return-void
.end method

.method public setupCurrentTariff()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Taximeter;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTaximeter:Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {v1}, Lcom/txdriver/taximeter/Taximeter;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/txdriver/ui/fragment/TaximeterFragment;->displayTariff(Lcom/txdriver/db/TariffZone;)V

    goto :goto_0

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTariffs:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTariffs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/db/Tariff;

    .line 268
    invoke-direct {p0, v0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->displayTariff(Lcom/txdriver/db/Tariff;)V

    .line 270
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mTariff:Lcom/txdriver/db/Tariff;

    return-void
.end method

.method public updateIdleButton(Z)V
    .locals 3

    .line 210
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x7f080097

    goto :goto_0

    :cond_0
    const v1, 0x7f080096

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mIdleButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-object v0, p0, Lcom/txdriver/ui/fragment/TaximeterFragment;->mIdleButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/TaximeterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f080066

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
