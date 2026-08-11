.class public Lcom/txdriver/ui/fragment/OrderDetailsFragment;
.super Lcom/txdriver/ui/fragment/BaseFragment;
.source "OrderDetailsFragment.java"


# static fields
.field private static final LOADER_ORDER:I = 0x12e


# instance fields
.field private currency:Ljava/lang/String;

.field private mAddressClickListener:Landroid/view/View$OnClickListener;

.field private mAddressFromTextView:Landroid/widget/TextView;

.field private mCarTypeTextView:Landroid/widget/TextView;

.field private mClientBalanceTextView:Landroid/widget/TextView;

.field private mClientPhoneTextView:Landroid/widget/TextView;

.field private mClientTextView:Landroid/widget/TextView;

.field private mCommissionLayout:Landroid/widget/LinearLayout;

.field private mCommissionTextView:Landroid/widget/TextView;

.field private mDestinationParkingTextView:Landroid/widget/TextView;

.field private mDestinationsLayout:Landroid/widget/LinearLayout;

.field private mDiscountLayout:Landroid/view/View;

.field private mDiscountTextView:Landroid/widget/TextView;

.field private mExtrasLayout:Landroid/view/View;

.field private mExtrasTextView:Landroid/widget/TextView;

.field private mMarkupLayout:Landroid/view/View;

.field private mMarkupTextView:Landroid/widget/TextView;

.field private mNoteTextView:Landroid/widget/TextView;

.field private mNotesLayout:Landroid/widget/LinearLayout;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOrder:Lcom/txdriver/db/Order;

.field private mOrderDateTextView:Landroid/widget/TextView;

.field private mOrderId:J

.field private mOrderLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Order;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOrderTimeTextView:Landroid/widget/TextView;

.field private mOrderTypeTextView:Landroid/widget/TextView;

.field private mParkingTextView:Landroid/widget/TextView;

.field private mPaymentTypesLayout:Landroid/view/View;

.field private mPaymentTypesTextView:Landroid/widget/TextView;

.field private mPriceTextView:Landroid/widget/TextView;

.field private mSellerNameTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/BaseFragment;-><init>()V

    .line 48
    new-instance v0, Lcom/txdriver/ui/fragment/OrderDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/OrderDetailsFragment$1;-><init>(Lcom/txdriver/ui/fragment/OrderDetailsFragment;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 55
    new-instance v0, Lcom/txdriver/ui/fragment/OrderDetailsFragment$2;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/OrderDetailsFragment$2;-><init>(Lcom/txdriver/ui/fragment/OrderDetailsFragment;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mAddressClickListener:Landroid/view/View$OnClickListener;

    .line 86
    new-instance v0, Lcom/txdriver/ui/fragment/OrderDetailsFragment$3;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/OrderDetailsFragment$3;-><init>(Lcom/txdriver/ui/fragment/OrderDetailsFragment;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrderLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/fragment/OrderDetailsFragment;)Lcom/txdriver/db/Order;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    return-object p0
.end method

.method static synthetic access$002(Lcom/txdriver/ui/fragment/OrderDetailsFragment;Lcom/txdriver/db/Order;)Lcom/txdriver/db/Order;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    return-object p1
.end method

.method static synthetic access$100(Lcom/txdriver/ui/fragment/OrderDetailsFragment;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrderId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/txdriver/ui/fragment/OrderDetailsFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->setupView()V

    return-void
.end method

.method private createDestinationView(Lcom/txdriver/db/Address;)Landroid/view/View;
    .locals 6

    .line 251
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0068

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 252
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/txdriver/db/Address;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-wide v1, p1, Lcom/txdriver/db/Address;->lat:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    iget-wide v1, p1, Lcom/txdriver/db/Address;->lng:D

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    .line 254
    new-instance v1, Lcom/txdriver/ui/fragment/OrderDetailsFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/txdriver/ui/fragment/OrderDetailsFragment$4;-><init>(Lcom/txdriver/ui/fragment/OrderDetailsFragment;Lcom/txdriver/db/Address;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mDestinationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private setupView()V
    .locals 12

    .line 154
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mAddressFromTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/txdriver/db/Order;->getAddress()Lcom/txdriver/db/Address;

    move-result-object v0

    iget-object v0, v0, Lcom/txdriver/db/Address;->address:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v0, v0, Lcom/txdriver/db/Order;->client:Ljava/lang/String;

    .line 160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ": "

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mClientTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f100081

    invoke-virtual {p0, v5}, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v5, v5, Lcom/txdriver/db/Order;->client:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mClientTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-wide v4, v1, Lcom/txdriver/db/Order;->clientBonusBalance:D

    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_2

    .line 165
    iget-object v8, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v8}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050011

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 166
    iget-object v8, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mClientBalanceTextView:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f100082

    invoke-virtual {p0, v10}, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v3

    const-string v11, "%.2f"

    invoke-static {v9, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mClientBalanceTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    :cond_2
    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v2, v2, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v2, v2, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget v2, v2, Lcom/txdriver/db/OrderType;->callToClient:I

    const/4 v8, 0x2

    if-ne v2, v8, :cond_3

    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v2, v2, Lcom/txdriver/db/Order;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 170
    :goto_0
    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mClientPhoneTextView:Landroid/widget/TextView;

    const/16 v8, 0x8

    if-eqz v1, :cond_4

    const/4 v9, 0x0

    goto :goto_1

    :cond_4
    const/16 v9, 0x8

    :goto_1
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v1, :cond_5

    .line 172
    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mClientPhoneTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v9, v9, Lcom/txdriver/db/Order;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_5
    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v2, v2, Lcom/txdriver/db/Order;->commission:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 175
    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mCommissionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 176
    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mCommissionTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v9, v9, Lcom/txdriver/db/Order;->commission:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 178
    :cond_6
    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mCommissionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    :goto_2
    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v2, v2, Lcom/txdriver/db/Order;->sellerName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 181
    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mSellerNameTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v9, v9, Lcom/txdriver/db/Order;->sellerName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mSellerNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 184
    :cond_7
    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mSellerNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    :goto_3
    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->app:Lcom/txdriver/App;

    iget-object v9, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v10, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->currency:Ljava/lang/String;

    invoke-static {v2, v9, v10}, Lcom/txdriver/order/OrderHelper;->getMarkupText(Lcom/txdriver/App;Lcom/txdriver/db/Order;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 189
    iget-object v9, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mMarkupLayout:Landroid/view/View;

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v9, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mMarkupTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 192
    :cond_8
    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mMarkupLayout:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :goto_4
    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->app:Lcom/txdriver/App;

    iget-object v9, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v10, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->currency:Ljava/lang/String;

    invoke-static {v2, v9, v10}, Lcom/txdriver/order/OrderHelper;->getDiscountText(Lcom/txdriver/App;Lcom/txdriver/db/Order;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 197
    iget-object v9, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mDiscountLayout:Landroid/view/View;

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v9, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mDiscountTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 200
    :cond_9
    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mDiscountLayout:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 203
    :goto_5
    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v2, v2, Lcom/txdriver/db/Order;->note:Ljava/lang/String;

    .line 204
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v0, v0, Lcom/txdriver/db/Order;->sellerName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_a

    if-nez v1, :cond_a

    .line 205
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mNotesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 207
    :cond_a
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mNotesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mNoteTextView:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :goto_6
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mPriceTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-wide v1, v1, Lcom/txdriver/db/Order;->price:D

    iget-object v4, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->currency:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrderDateTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v2, v2, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrderTimeTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v2, v2, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v0, v0, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    const/high16 v1, -0x1000000

    const/4 v2, -0x1

    const-wide v4, 0x4159999980000000L    # 6710886.0

    const/16 v6, 0x10

    const-string v7, ""

    const-string v9, "#"

    if-eqz v0, :cond_c

    .line 214
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrderTypeTextView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v10, v10, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-object v10, v10, Lcom/txdriver/db/OrderType;->name:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v0, v0, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-object v0, v0, Lcom/txdriver/db/OrderType;->color:Ljava/lang/String;

    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v10, v0

    cmpl-double v0, v10, v4

    if-lez v0, :cond_b

    const/high16 v0, -0x1000000

    goto :goto_7

    :cond_b
    const/4 v0, -0x1

    .line 216
    :goto_7
    iget-object v10, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrderTypeTextView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v11, v11, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-object v11, v11, Lcom/txdriver/db/OrderType;->color:Ljava/lang/String;

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 217
    iget-object v10, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrderTypeTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    :cond_c
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v0, v0, Lcom/txdriver/db/Order;->carType:Lcom/txdriver/db/CarType;

    if-eqz v0, :cond_e

    .line 220
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mCarTypeTextView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v10, v10, Lcom/txdriver/db/Order;->carType:Lcom/txdriver/db/CarType;

    iget-object v10, v10, Lcom/txdriver/db/CarType;->name:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v0, v0, Lcom/txdriver/db/Order;->carType:Lcom/txdriver/db/CarType;

    iget-object v0, v0, Lcom/txdriver/db/CarType;->color:Ljava/lang/String;

    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v6, v0

    cmpl-double v0, v6, v4

    if-lez v0, :cond_d

    goto :goto_8

    :cond_d
    const/4 v1, -0x1

    .line 222
    :goto_8
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mCarTypeTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v2, v2, Lcom/txdriver/db/Order;->carType:Lcom/txdriver/db/CarType;

    iget-object v2, v2, Lcom/txdriver/db/CarType;->color:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 223
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mCarTypeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    :cond_e
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v0, v0, Lcom/txdriver/db/Order;->parking:Lcom/txdriver/db/Parking;

    if-eqz v0, :cond_f

    .line 226
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mParkingTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v1, v1, Lcom/txdriver/db/Order;->parking:Lcom/txdriver/db/Parking;

    iget-object v1, v1, Lcom/txdriver/db/Parking;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :cond_f
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v0, v0, Lcom/txdriver/db/Order;->destinationParking:Lcom/txdriver/db/Parking;

    if-eqz v0, :cond_10

    .line 229
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mDestinationParkingTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v1, v1, Lcom/txdriver/db/Order;->destinationParking:Lcom/txdriver/db/Parking;

    iget-object v1, v1, Lcom/txdriver/db/Parking;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_10
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mAddressFromTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mAddressClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v0, v0, Lcom/txdriver/db/Order;->carExtras:Ljava/util/List;

    .line 233
    iget-object v1, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v1, v1, Lcom/txdriver/db/Order;->driverExtras:Ljava/util/List;

    .line 234
    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mExtrasLayout:Landroid/view/View;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    const/16 v4, 0x8

    goto :goto_9

    :cond_11
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 235
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 236
    :cond_12
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mExtrasTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    invoke-virtual {v1}, Lcom/txdriver/db/Order;->getExtras()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_13
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mDestinationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mDestinationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 240
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v0, v0, Lcom/txdriver/db/Order;->destinations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/db/Address;

    .line 241
    invoke-direct {p0, v1}, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->createDestinationView(Lcom/txdriver/db/Address;)Landroid/view/View;

    goto :goto_a

    .line 243
    :cond_14
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrder:Lcom/txdriver/db/Order;

    iget-object v0, v0, Lcom/txdriver/db/Order;->paymentTypes:Ljava/util/List;

    .line 244
    iget-object v1, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mPaymentTypesLayout:Landroid/view/View;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v3, 0x8

    :cond_15
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 245
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 246
    iget-object v1, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mPaymentTypesTextView:Landroid/widget/TextView;

    const-string v2, " ,"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_16
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 147
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_order_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrderId:J

    .line 149
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrderLoaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    const/16 v1, 0x12e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 150
    iget-object p1, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getCurrency()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->currency:Ljava/lang/String;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 111
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0c005c

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901cb

    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mAddressFromTextView:Landroid/widget/TextView;

    const p2, 0x7f0901d9

    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mParkingTextView:Landroid/widget/TextView;

    const p2, 0x7f0901d3

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mDestinationParkingTextView:Landroid/widget/TextView;

    const p2, 0x7f0901d8

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrderTypeTextView:Landroid/widget/TextView;

    const p2, 0x7f0901cc

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mCarTypeTextView:Landroid/widget/TextView;

    const p2, 0x7f0901d2

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrderDateTextView:Landroid/widget/TextView;

    const p2, 0x7f0901dd

    .line 123
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mOrderTimeTextView:Landroid/widget/TextView;

    const p2, 0x7f0901c5

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mDestinationsLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0901c7

    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mExtrasLayout:Landroid/view/View;

    const p2, 0x7f0901d5

    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mExtrasTextView:Landroid/widget/TextView;

    const p2, 0x7f0901cd

    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mClientTextView:Landroid/widget/TextView;

    const p2, 0x7f0901ce

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mClientBalanceTextView:Landroid/widget/TextView;

    const p2, 0x7f0901cf

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mClientPhoneTextView:Landroid/widget/TextView;

    const p2, 0x7f0901dc

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mSellerNameTextView:Landroid/widget/TextView;

    const p2, 0x7f0901db

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mPriceTextView:Landroid/widget/TextView;

    const p2, 0x7f0901d7

    .line 132
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mNoteTextView:Landroid/widget/TextView;

    const p2, 0x7f0901c9

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mNotesLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0901c4

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mCommissionLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0901d0

    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mCommissionTextView:Landroid/widget/TextView;

    const p2, 0x7f0901ca

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mPaymentTypesLayout:Landroid/view/View;

    const p2, 0x7f0901da

    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mPaymentTypesTextView:Landroid/widget/TextView;

    const p2, 0x7f0901c8

    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mMarkupLayout:Landroid/view/View;

    const p2, 0x7f0901d6

    .line 139
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mMarkupTextView:Landroid/widget/TextView;

    const p2, 0x7f0901c6

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mDiscountLayout:Landroid/view/View;

    const p2, 0x7f0901d4

    .line 141
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/OrderDetailsFragment;->mDiscountTextView:Landroid/widget/TextView;

    return-object p1
.end method
