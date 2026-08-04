.class public Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;
.super Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;
.source "OrderPriceDialogFragment.java"

# interfaces
.implements Lcom/txdriver/taximeter/TaximeterUpdateListener;


# static fields
.field private static final ID_ARG:Ljava/lang/String; = "id_arg"


# instance fields
.field private neutralButton:Landroid/widget/Button;

.field private order:Lcom/txdriver/db/Order;

.field private paymentTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/db/PaymentType;",
            ">;"
        }
    .end annotation
.end field

.field private positiveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;)Landroid/widget/Button;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->positiveButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$002(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->positiveButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$100(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;)Landroid/widget/Button;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->neutralButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$102(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->neutralButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$200(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->paymentTypes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;Landroid/widget/LinearLayout;)D
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getPaymentsSum(Landroid/widget/LinearLayout;)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;Landroid/widget/TextView;Lcom/txdriver/db/PaymentType;DDD)Z
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p8}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->validatePrice(Landroid/widget/TextView;Lcom/txdriver/db/PaymentType;DDD)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;Landroid/widget/TextView;Lcom/txdriver/db/PaymentType;)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->validateCheckNumber(Landroid/widget/TextView;Lcom/txdriver/db/PaymentType;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;)Lcom/txdriver/db/Order;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->order:Lcom/txdriver/db/Order;

    return-object p0
.end method

.method static synthetic access$700(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;Lcom/txdriver/db/PaymentType;D)D
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getMinPayment(Lcom/txdriver/db/PaymentType;D)D

    move-result-wide p0

    return-wide p0
.end method

.method private addInitialPaymentViews(Lcom/txdriver/db/Order;Ljava/lang/Double;Landroid/widget/LinearLayout;)V
    .locals 7

    .line 182
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getBonusesPaymentType()Lcom/txdriver/db/PaymentType;

    move-result-object v5

    .line 183
    iget-wide v0, p1, Lcom/txdriver/db/Order;->bonusesPaymentAmount:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    if-eqz v5, :cond_0

    .line 184
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-wide v3, p1, Lcom/txdriver/db/Order;->bonusesPaymentAmount:D

    move-object v0, p0

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->addPaymentView(DDLcom/txdriver/db/PaymentType;Landroid/widget/LinearLayout;)V

    .line 186
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->addPaymentView(DLandroid/widget/LinearLayout;)V

    return-void
.end method

.method private createPaymentView(DLjava/util/List;Landroid/widget/LinearLayout;)Landroid/view/View;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/List<",
            "Lcom/txdriver/db/PaymentType;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901ef

    .line 253
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    const v1, 0x7f0901f1

    .line 254
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 255
    new-instance v9, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v1

    move-object v6, p4

    move-wide v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$3;-><init>(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/LinearLayout;D)V

    invoke-virtual {v1, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 279
    new-instance p1, Lcom/txdriver/ui/adapter/PaymentTypeAdapter;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/txdriver/ui/adapter/PaymentTypeAdapter;-><init>(Landroid/content/Context;)V

    .line 280
    invoke-virtual {p1, p3}, Lcom/txdriver/ui/adapter/PaymentTypeAdapter;->setData(Ljava/util/List;)V

    .line 281
    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-object v0
.end method

.method private getAvailablePaymentTypes(Landroid/widget/LinearLayout;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            ")",
            "Ljava/util/List<",
            "Lcom/txdriver/db/PaymentType;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->paymentTypes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 287
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 288
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901f1

    .line 289
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 290
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/db/PaymentType;

    if-nez v2, :cond_0

    goto :goto_1

    .line 294
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getBonusesPaymentType()Lcom/txdriver/db/PaymentType;
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->paymentTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/db/PaymentType;

    .line 396
    iget-boolean v2, v1, Lcom/txdriver/db/PaymentType;->bonus:Z

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMaxPayment(Lcom/txdriver/db/PaymentType;D)D
    .locals 8

    .line 360
    iget v0, p1, Lcom/txdriver/db/PaymentType;->maxPayment:F

    float-to-double v0, v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v4, 0x0

    cmpl-double v6, p2, v4

    if-lez v6, :cond_1

    .line 361
    iget v6, p1, Lcom/txdriver/db/PaymentType;->maxPaymentPercent:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 362
    iget p1, p1, Lcom/txdriver/db/PaymentType;->maxPaymentPercent:F

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr p2, v6

    cmpl-double p1, v0, v4

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    :cond_1
    cmpl-double p1, v0, v4

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-wide v2, v0

    :goto_1
    return-wide v2
.end method

.method private getMinPayment(Lcom/txdriver/db/PaymentType;D)D
    .locals 5

    .line 352
    iget v0, p1, Lcom/txdriver/db/PaymentType;->minPayment:F

    float-to-double v0, v0

    .line 353
    iget-boolean v2, p1, Lcom/txdriver/db/PaymentType;->bonus:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmpl-double v4, p2, v2

    if-lez v4, :cond_0

    iget v2, p1, Lcom/txdriver/db/PaymentType;->minPaymentPercent:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 354
    iget p1, p1, Lcom/txdriver/db/PaymentType;->minPaymentPercent:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr p2, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method private getPaymentsSum(Landroid/widget/LinearLayout;)D
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 372
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 373
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0901f0

    .line 374
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 375
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 376
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 379
    :cond_0
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    add-double/2addr v0, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static newInstance(J)Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;
    .locals 3

    .line 59
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    invoke-direct {v0}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;-><init>()V

    .line 60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id_arg"

    .line 61
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 62
    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static show(JLandroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->newInstance(J)Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;

    move-result-object p0

    .line 55
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/txdriver/utils/Utils;->showDialog(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method private validateCheckNumber(Landroid/widget/TextView;Lcom/txdriver/db/PaymentType;)Z
    .locals 1

    .line 386
    iget-boolean p2, p2, Lcom/txdriver/db/PaymentType;->inputCheckNumber:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    const/4 v0, 0x0

    .line 387
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_2

    const v0, 0x7f1000c7

    .line 389
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    :cond_2
    return p2
.end method

.method private validatePrice(Landroid/widget/TextView;Lcom/txdriver/db/PaymentType;DDD)Z
    .locals 7

    .line 300
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    .line 303
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    cmpl-double v3, p3, p7

    if-nez v3, :cond_0

    return v2

    :cond_0
    const-wide/16 p7, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 308
    invoke-direct {p0, p2, p3, p4}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getMinPayment(Lcom/txdriver/db/PaymentType;D)D

    move-result-wide v0

    cmpl-double v4, v0, p7

    if-nez v4, :cond_1

    const-string v0, "0"

    goto :goto_0

    :cond_1
    const p2, 0x7f1000c7

    .line 313
    invoke-virtual {p0, p2}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return v3

    .line 317
    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double v4, v0, p7

    if-nez v4, :cond_4

    .line 318
    invoke-direct {p0, p2, p3, p4}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getMinPayment(Lcom/txdriver/db/PaymentType;D)D

    move-result-wide v4

    cmpl-double v6, v4, p7

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_5

    const p2, 0x7f1001de

    .line 320
    invoke-virtual {p0, p2}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return v3

    .line 323
    :cond_5
    invoke-direct {p0, p2, p3, p4}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getMaxPayment(Lcom/txdriver/db/PaymentType;D)D

    move-result-wide v4

    cmpl-double v6, v4, p7

    if-lez v6, :cond_6

    cmpl-double v6, v0, v4

    if-lez v6, :cond_6

    const p2, 0x7f1001dd

    .line 325
    invoke-virtual {p0, p2}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    aput-object p4, p3, v3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return v3

    :cond_6
    sub-double/2addr p5, v0

    .line 329
    iget-boolean v4, p2, Lcom/txdriver/db/PaymentType;->bonus:Z

    if-nez v4, :cond_7

    sub-double/2addr p3, p5

    .line 330
    invoke-static {p3, p4, p7, p8}, Ljava/lang/Math;->max(DD)D

    move-result-wide p3

    .line 332
    :cond_7
    invoke-direct {p0, p2, p3, p4}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getMinPayment(Lcom/txdriver/db/PaymentType;D)D

    move-result-wide p5

    cmpg-double v4, v0, p5

    if-gez v4, :cond_8

    const p2, 0x7f1001dc

    .line 334
    invoke-virtual {p0, p2}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    aput-object p4, p3, v3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return v3

    .line 337
    :cond_8
    iget-boolean p5, p2, Lcom/txdriver/db/PaymentType;->bonus:Z

    if-eqz p5, :cond_9

    iget-object p5, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->order:Lcom/txdriver/db/Order;

    iget-wide p5, p5, Lcom/txdriver/db/Order;->clientBonusBalance:D

    cmpg-double v4, p5, v0

    if-gez v4, :cond_9

    .line 338
    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->app:Lcom/txdriver/App;

    const p3, 0x7f1000ca

    invoke-virtual {p2, p3}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    iget-object p4, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->order:Lcom/txdriver/db/Order;

    iget-wide p4, p4, Lcom/txdriver/db/Order;->clientBonusBalance:D

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    aput-object p4, p3, v3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return v3

    .line 341
    :cond_9
    iget-boolean p2, p2, Lcom/txdriver/db/PaymentType;->bonus:Z

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->order:Lcom/txdriver/db/Order;

    iget-wide p5, p2, Lcom/txdriver/db/Order;->bonusesPaymentAmount:D

    cmpl-double p2, p5, p7

    if-lez p2, :cond_b

    .line 342
    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->order:Lcom/txdriver/db/Order;

    iget-wide p5, p2, Lcom/txdriver/db/Order;->bonusesPaymentAmount:D

    cmpl-double p2, p5, p3

    if-lez p2, :cond_a

    goto :goto_3

    :cond_a
    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->order:Lcom/txdriver/db/Order;

    iget-wide p3, p2, Lcom/txdriver/db/Order;->bonusesPaymentAmount:D

    :goto_3
    cmpl-double p2, p3, v0

    if-eqz p2, :cond_b

    .line 344
    iget-object p2, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->app:Lcom/txdriver/App;

    const p5, 0x7f1000c5

    invoke-virtual {p2, p5}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array p5, v2, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    aput-object p3, p5, v3

    invoke-static {p2, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return v3

    :cond_b
    return v2
.end method


# virtual methods
.method public addPaymentView(DDLcom/txdriver/db/PaymentType;Landroid/widget/LinearLayout;)V
    .locals 1

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-direct {p0, p1, p2, v0, p6}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->createPaymentView(DLjava/util/List;Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object p1

    .line 240
    invoke-virtual {p6, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const p2, 0x7f0901f0

    .line 241
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 242
    invoke-static {p3, p4}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public addPaymentView(DLandroid/widget/LinearLayout;)V
    .locals 5

    .line 212
    invoke-direct {p0, p3}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getAvailablePaymentTypes(Landroid/widget/LinearLayout;)Ljava/util/List;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->createPaymentView(DLjava/util/List;Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v0

    .line 217
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    invoke-direct {p0, p3}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getPaymentsSum(Landroid/widget/LinearLayout;)D

    move-result-wide v1

    const p3, 0x7f0901f0

    .line 219
    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v3, 0x7f0901f1

    .line 220
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 221
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/db/PaymentType;

    if-nez v0, :cond_1

    return-void

    .line 225
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getMaxPayment(Lcom/txdriver/db/PaymentType;D)D

    move-result-wide v3

    sub-double/2addr p1, v1

    cmpl-double v0, p1, v3

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move-wide v3, p1

    :goto_0
    const-wide/16 p1, 0x0

    .line 230
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    cmpl-double v2, v0, p1

    if-lez v2, :cond_3

    .line 232
    invoke-static {v0, v1}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public createDialogContentView()Landroid/widget/LinearLayout;
    .locals 3

    .line 248
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c004e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 68
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->isStarted()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/txdriver/taximeter/Taximeter;->pause(Z)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "id_arg"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 74
    const-class p1, Lcom/txdriver/db/Order;

    invoke-static {p1, v1, v2}, Lcom/txdriver/db/Order;->load(Ljava/lang/Class;J)Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/Order;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->order:Lcom/txdriver/db/Order;

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p1}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    invoke-static {v3, v4}, Lcom/txdriver/db/PaymentType;->getByOrderQuery(J)Lcom/activeandroid/query/From;

    move-result-object p1

    invoke-virtual {p1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->paymentTypes:Ljava/util/List;

    .line 76
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 77
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->order:Lcom/txdriver/db/Order;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->order:Lcom/txdriver/db/Order;

    iget-object p1, p1, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    invoke-virtual {p1}, Lcom/txdriver/db/OrderType;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_2
    invoke-static {v1, v2, v0}, Lcom/txdriver/db/PaymentType;->getByOrderTypeQuery(JZ)Lcom/activeandroid/query/From;

    move-result-object p1

    invoke-virtual {p1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->paymentTypes:Ljava/util/List;

    .line 79
    :cond_3
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->order:Lcom/txdriver/db/Order;

    if-nez p1, :cond_4

    .line 80
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->dismiss()V

    :cond_4
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 87
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->order:Lcom/txdriver/db/Order;

    if-nez v0, :cond_0

    .line 88
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->order:Lcom/txdriver/db/Order;

    invoke-static {p1, v0}, Lcom/txdriver/taximeter/TaximeterHelper;->isUseTaximeter(Lcom/txdriver/App;Lcom/txdriver/db/Order;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->order:Lcom/txdriver/db/Order;

    invoke-static {p1, v0, v1}, Lcom/txdriver/taximeter/TaximeterHelper;->getPrice(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->order:Lcom/txdriver/db/Order;

    iget-wide v0, p1, Lcom/txdriver/db/Order;->price:D

    :goto_0
    move-wide v6, v0

    .line 91
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const v2, 0x7f100261

    invoke-virtual {p0, v2}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v6, v7}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getCurrency()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s\n%s %s"

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->createDialogContentView()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f0901f3

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    const v1, 0x7f0901f2

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 95
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->order:Lcom/txdriver/db/Order;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, p1, v1, v5}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->addInitialPaymentViews(Lcom/txdriver/db/Order;Ljava/lang/Double;Landroid/widget/LinearLayout;)V

    .line 97
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    new-instance v2, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$1;-><init>(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;)V

    .line 100
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f10002d

    .line 108
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 110
    new-instance v0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment$2;-><init>(Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/LinearLayout;D)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onIdleChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 420
    invoke-super {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onPause()V

    .line 421
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/txdriver/taximeter/Taximeter;->removeTaximeterUpdateListener(Lcom/txdriver/taximeter/TaximeterUpdateListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 414
    invoke-super {p0}, Lcom/txdriver/ui/fragment/dialog/BaseDialogFragment;->onResume()V

    .line 415
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object v0

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
    .locals 1

    .line 426
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getStatus()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public setNeutralButtonVisibility(Landroid/widget/LinearLayout;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->neutralButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->paymentTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/txdriver/ui/fragment/dialog/OrderPriceDialogFragment;->neutralButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateSpinnersAdapters(Landroid/widget/LinearLayout;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 196
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 197
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901f1

    .line 198
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 199
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/db/PaymentType;

    if-nez v3, :cond_0

    goto :goto_1

    .line 203
    :cond_0
    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    check-cast v4, Lcom/txdriver/ui/adapter/PaymentTypeAdapter;

    .line 204
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {v4, v5}, Lcom/txdriver/ui/adapter/PaymentTypeAdapter;->setData(Ljava/util/List;)V

    .line 207
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
