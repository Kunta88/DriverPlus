.class public Lcom/txdriver/ui/adapter/OrdersAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OrdersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/adapter/OrdersAdapter$OnOrderClickListener;,
        Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;,
        Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_CONTENT_ITEM:I = 0x1

.field private static final TYPE_HEADER_ITEM:I


# instance fields
.field private final app:Lcom/txdriver/App;

.field private clickListener:Lcom/txdriver/ui/adapter/OrdersAdapter$OnOrderClickListener;

.field private final currency:Ljava/lang/String;

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/ui/listItemTemplate/Connectable;",
            ">;"
        }
    .end annotation
.end field

.field private final fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mTimeFormat:Ljava/text/DateFormat;

.field private final tabId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILandroidx/fragment/app/FragmentManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/txdriver/ui/listItemTemplate/Connectable;",
            ">;I",
            "Landroidx/fragment/app/FragmentManager;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->mTimeFormat:Ljava/text/DateFormat;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/txdriver/App;

    iput-object p1, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->app:Lcom/txdriver/App;

    .line 48
    iput p3, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->tabId:I

    .line 49
    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->getCurrency()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->currency:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->dataList:Ljava/util/List;

    .line 51
    iput-object p4, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/adapter/OrdersAdapter;)Landroidx/fragment/app/FragmentManager;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/adapter/OrdersAdapter;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->tabId:I

    return p0
.end method

.method static synthetic access$200(Lcom/txdriver/ui/adapter/OrdersAdapter;)Lcom/txdriver/ui/adapter/OrdersAdapter$OnOrderClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->clickListener:Lcom/txdriver/ui/adapter/OrdersAdapter$OnOrderClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/txdriver/ui/adapter/OrdersAdapter;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->dataList:Ljava/util/List;

    return-object p0
.end method

.method private isPositionHeader(I)Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/txdriver/ui/listItemTemplate/Header;

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lcom/txdriver/ui/adapter/OrdersAdapter;->isPositionHeader(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 69
    instance-of v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder;

    const/16 v1, 0x8

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/ui/listItemTemplate/Header;

    .line 71
    check-cast p1, Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder;

    .line 72
    iget-object v4, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder;->dateTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/txdriver/ui/listItemTemplate/Header;->getHeader()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/txdriver/ui/listItemTemplate/Header;->getHeader()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p1, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder;->sortTextView:Landroid/widget/TextView;

    if-nez p2, :cond_1

    iget p2, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->tabId:I

    if-lez p2, :cond_1

    const/16 v0, 0x3e7

    if-eq p2, v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 74
    :cond_2
    instance-of v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;

    if-eqz v0, :cond_11

    .line 75
    iget-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/db/Order;

    .line 76
    check-cast p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;

    .line 77
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->addressTextView:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/txdriver/db/Order;->address:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->priceTextView:Landroid/widget/TextView;

    iget-wide v4, p2, Lcom/txdriver/db/Order;->price:D

    iget-object v6, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->currency:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->priceTextView:Landroid/widget/TextView;

    iget-wide v4, p2, Lcom/txdriver/db/Order;->price:D

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p2, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    if-eqz v0, :cond_4

    .line 81
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->timeTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->mTimeFormat:Ljava/text/DateFormat;

    iget-object v5, p2, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 83
    :cond_4
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_1
    iget-object v0, p2, Lcom/txdriver/db/Order;->destinationAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    .line 86
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->destinationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->destinationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 89
    :cond_5
    iget-object v0, p2, Lcom/txdriver/db/Order;->destinationAddress:Ljava/lang/String;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v5, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->destinationTextView:Landroid/widget/TextView;

    array-length v6, v0

    sub-int/2addr v6, v4

    aget-object v0, v0, v6

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->destinationTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :goto_2
    iget v0, p2, Lcom/txdriver/db/Order;->distance:I

    const/4 v5, 0x4

    if-lez v0, :cond_8

    .line 95
    iget-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f050012

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 96
    iget-object v0, p2, Lcom/txdriver/db/Order;->destinationAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 97
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->distanceTextView:Landroid/widget/TextView;

    iget v6, p2, Lcom/txdriver/db/Order;->distance:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Lcom/txdriver/utils/DistanceUtils;->mToKm(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->distanceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 99
    :cond_6
    iget-object v0, p2, Lcom/txdriver/db/Order;->destinationAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 100
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->distanceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->distanceTextView:Landroid/widget/TextView;

    iget v6, p2, Lcom/txdriver/db/Order;->distance:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Lcom/txdriver/utils/DistanceUtils;->mToKm(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 104
    :cond_7
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->distanceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->distanceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    :cond_8
    :goto_3
    iget-object v0, p2, Lcom/txdriver/db/Order;->parking:Lcom/txdriver/db/Parking;

    if-eqz v0, :cond_9

    .line 110
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->parkingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->parkingTextView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/txdriver/db/Order;->parking:Lcom/txdriver/db/Parking;

    iget-object v1, v1, Lcom/txdriver/db/Parking;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 113
    :cond_9
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->parkingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->parkingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_4
    iget-object v0, p2, Lcom/txdriver/db/Order;->carType:Lcom/txdriver/db/CarType;

    const/high16 v1, -0x1000000

    const/4 v6, -0x1

    const-wide v7, 0x4159999980000000L    # 6710886.0

    const/16 v9, 0x10

    const-string v10, "#"

    if-eqz v0, :cond_b

    .line 118
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->carTypeTextView:Landroid/widget/TextView;

    iget-object v11, p2, Lcom/txdriver/db/Order;->carType:Lcom/txdriver/db/CarType;

    iget-object v11, v11, Lcom/txdriver/db/CarType;->name:Ljava/lang/String;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p2, Lcom/txdriver/db/Order;->carType:Lcom/txdriver/db/CarType;

    iget-object v0, v0, Lcom/txdriver/db/CarType;->color:Ljava/lang/String;

    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v11, v0

    cmpl-double v0, v11, v7

    if-lez v0, :cond_a

    const/high16 v0, -0x1000000

    goto :goto_5

    :cond_a
    const/4 v0, -0x1

    .line 120
    :goto_5
    iget-object v11, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->carTypeTextView:Landroid/widget/TextView;

    iget-object v12, p2, Lcom/txdriver/db/Order;->carType:Lcom/txdriver/db/CarType;

    iget-object v12, v12, Lcom/txdriver/db/CarType;->color:Ljava/lang/String;

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 121
    iget-object v11, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->carTypeTextView:Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    :cond_b
    iget-object v0, p2, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    if-eqz v0, :cond_d

    .line 124
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->orderTypeTextView:Landroid/widget/TextView;

    iget-object v11, p2, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-object v11, v11, Lcom/txdriver/db/OrderType;->name:Ljava/lang/String;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p2, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-object v0, v0, Lcom/txdriver/db/OrderType;->color:Ljava/lang/String;

    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v9, v0

    cmpl-double v0, v9, v7

    if-lez v0, :cond_c

    goto :goto_6

    :cond_c
    const/4 v1, -0x1

    .line 126
    :goto_6
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->orderTypeTextView:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-object v2, v2, Lcom/txdriver/db/OrderType;->color:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 127
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->orderTypeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    :cond_d
    iget-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->app:Lcom/txdriver/App;

    invoke-static {v0, p2}, Lcom/txdriver/order/OrderHelper;->getMarkupTextWithoutCurrency(Lcom/txdriver/App;Lcom/txdriver/db/Order;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 131
    iget-object v1, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->markupTextView:Landroid/widget/TextView;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->markupTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 134
    :cond_e
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->markupTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :goto_7
    iget-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->app:Lcom/txdriver/App;

    iget-object v1, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->currency:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/txdriver/order/OrderHelper;->getDiscountText(Lcom/txdriver/App;Lcom/txdriver/db/Order;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 138
    iget-object v1, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->discountTextView:Landroid/widget/TextView;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "-%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->discountTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 141
    :cond_f
    iget-object v0, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->discountTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    :goto_8
    iget-object v0, p2, Lcom/txdriver/db/Order;->kind:Lcom/txdriver/db/Order$Kind;

    sget-object v1, Lcom/txdriver/db/Order$Kind;->BROADCAST:Lcom/txdriver/db/Order$Kind;

    if-ne v0, v1, :cond_10

    iget-boolean p2, p2, Lcom/txdriver/db/Order;->acceptable:Z

    if-nez p2, :cond_10

    .line 145
    iget-object p1, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->itemView:Landroid/view/View;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-static {p1, p2}, Lcom/txdriver/ui/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    goto :goto_9

    .line 147
    :cond_10
    iget-object p1, p1, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;->itemView:Landroid/view/View;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Lcom/txdriver/ui/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    :cond_11
    :goto_9
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 57
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const p2, 0x7f0c0065

    .line 59
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 60
    new-instance p2, Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/txdriver/ui/adapter/OrdersAdapter$HeaderViewHolder;-><init>(Lcom/txdriver/ui/adapter/OrdersAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const p2, 0x7f0c006d

    .line 62
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 63
    new-instance p2, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/txdriver/ui/adapter/OrdersAdapter$OrderViewHolder;-><init>(Lcom/txdriver/ui/adapter/OrdersAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public resetData()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 227
    invoke-virtual {p0}, Lcom/txdriver/ui/adapter/OrdersAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/ui/listItemTemplate/Connectable;",
            ">;)V"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 221
    iget-object v0, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 222
    invoke-virtual {p0}, Lcom/txdriver/ui/adapter/OrdersAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnOrderClickListener(Lcom/txdriver/ui/adapter/OrdersAdapter$OnOrderClickListener;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/txdriver/ui/adapter/OrdersAdapter;->clickListener:Lcom/txdriver/ui/adapter/OrdersAdapter$OnOrderClickListener;

    return-void
.end method
