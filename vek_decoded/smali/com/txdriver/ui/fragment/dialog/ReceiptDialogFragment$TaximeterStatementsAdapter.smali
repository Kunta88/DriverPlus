.class Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ReceiptDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaximeterStatementsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/txdriver/taximeter/Statement;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrency:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/txdriver/taximeter/Statement;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 278
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getCurrency()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter;->mCurrency:Ljava/lang/String;

    return-void
.end method

.method private getTariffName(Lcom/txdriver/db/TariffZone;Lcom/txdriver/db/Tariff;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const v2, 0x7f100253

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 327
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    iget-object p2, p2, Lcom/txdriver/db/Tariff;->name:Ljava/lang/String;

    aput-object p2, v4, v1

    iget-object p1, p1, Lcom/txdriver/db/TariffZone;->zone:Lcom/txdriver/db/Zone;

    iget-object p1, p1, Lcom/txdriver/db/Zone;->name:Ljava/lang/String;

    aput-object p1, v4, v0

    const-string p1, "%s: %s (%s)"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    .line 329
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    if-nez p2, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0c0074

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 288
    new-instance p3, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;

    invoke-direct {p3, v0}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;-><init>(Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$1;)V

    const v0, 0x7f0902f8

    .line 289
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;->tariffTextView:Landroid/widget/TextView;

    const v0, 0x7f0902ec

    .line 290
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;->distanceTextView:Landroid/widget/TextView;

    const v0, 0x7f0902f5

    .line 291
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    const v0, 0x7f0902ed

    .line 292
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;->distancePriceTextView:Landroid/widget/TextView;

    const v0, 0x7f0902f6

    .line 293
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;->timePriceTextView:Landroid/widget/TextView;

    const v0, 0x7f0902ee

    .line 294
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;->distancePriceDescrTextView:Landroid/widget/TextView;

    const v0, 0x7f0902f7

    .line 295
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;->timePriceDescrTextView:Landroid/widget/TextView;

    const v0, 0x7f0902f4

    .line 296
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;->sumTextView:Landroid/widget/TextView;

    const v0, 0x7f0902fb

    .line 297
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;->zoneChargeTextView:Landroid/widget/TextView;

    const v0, 0x7f0902ea

    .line 298
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;->zoneChargeLayout:Landroid/view/View;

    .line 299
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;

    .line 303
    :goto_0
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/taximeter/Statement;

    .line 304
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v0

    .line 305
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v1

    .line 306
    invoke-direct {p0, v0, v1}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter;->getTariffName(Lcom/txdriver/db/TariffZone;Lcom/txdriver/db/Tariff;)Ljava/lang/String;

    move-result-object v0

    .line 308
    iget-object v1, p3, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;->tariffTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p3, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;->distanceTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getDistance()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/txdriver/utils/DistanceUtils;->mToKm(D)D

    move-result-wide v1

    .line 310
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1000aa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 309
    invoke-static {v1, v2, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p3, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getTime()I

    move-result v1

    invoke-static {v1}, Lcom/txdriver/utils/TimeUtils;->formatSecconds(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p3, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;->timePriceTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getTimePrice()D

    move-result-wide v1

    iget-object v3, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter;->mCurrency:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p3, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;->distancePriceTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getDistancePrice()D

    move-result-wide v1

    iget-object v3, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter;->mCurrency:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p3, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;->timePriceDescrTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getPaidTime()I

    move-result v3

    invoke-static {v3}, Lcom/txdriver/utils/TimeUtils;->secondsToMinutes(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getMinutePrice()F

    move-result v3

    float-to-double v5, v3

    invoke-static {v5, v6}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "%s x %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p3, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;->distancePriceDescrTextView:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getPaidDistance()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/txdriver/utils/DistanceUtils;->mToKm(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getKilometerPrice()F

    move-result v2

    float-to-double v6, v2

    invoke-static {v6, v7}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p3, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;->sumTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getSum()D

    move-result-wide v1

    iget-object v3, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter;->mCurrency:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p3, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;->zoneChargeTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getZoneCharge()D

    move-result-wide v1

    iget-object v3, p0, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter;->mCurrency:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object p3, p3, Lcom/txdriver/ui/fragment/dialog/ReceiptDialogFragment$TaximeterStatementsAdapter$ViewHolder;->zoneChargeLayout:Landroid/view/View;

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Statement;->getZoneCharge()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
