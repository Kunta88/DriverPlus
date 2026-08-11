.class public Lcom/txdriver/ui/activity/AcceptOrderActivity;
.super Lcom/txdriver/ui/activity/BaseActivity;
.source "AcceptOrderActivity.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/activity/AcceptOrderActivity$AcceptOrderActivityRunner;,
        Lcom/txdriver/ui/activity/AcceptOrderActivity$FinishEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/ui/activity/BaseActivity;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/txdriver/db/Order;",
        ">;>;",
        "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
        "Lorg/osmdroid/bonuspack/routing/Road;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTRA_ID:Ljava/lang/String; = "id_extra"

.field private static final LOADER_ORDER:I = 0x7e5


# instance fields
.field private acceptButton:Landroid/widget/TextView;

.field private final acceptButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

.field private acceptPackets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/txdriver/db/Order$Source;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/txdriver/socket/packet/AbstractAcceptOrderPacket;",
            ">;>;"
        }
    .end annotation
.end field

.field private activity:Lcom/txdriver/ui/activity/BaseActivity;

.field private callToDispatcherButton:Landroid/widget/ImageButton;

.field private final callToDispatcherClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

.field private distanceToClientTextView:Landroid/widget/TextView;

.field private mapImageView:Landroid/widget/ImageView;

.field private mapInfoView:Landroid/view/View;

.field private order:Lcom/txdriver/db/Order;

.field private orderId:J

.field private orderView:Lcom/txdriver/ui/view/OrderView;

.field private rejectButton:Landroid/widget/TextView;

.field private final rejectButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

.field private roadToClientRequest:Lcom/txdriver/http/request/RoadToClientRequest;

.field private showMap:Z

.field private timeToClientTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 69
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BaseActivity;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->acceptPackets:Ljava/util/Map;

    .line 85
    new-instance v0, Lcom/txdriver/ui/activity/AcceptOrderActivity$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity$1;-><init>(Lcom/txdriver/ui/activity/AcceptOrderActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->callToDispatcherClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    .line 95
    new-instance v0, Lcom/txdriver/ui/activity/AcceptOrderActivity$2;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity$2;-><init>(Lcom/txdriver/ui/activity/AcceptOrderActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->acceptButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    .line 107
    new-instance v0, Lcom/txdriver/ui/activity/AcceptOrderActivity$3;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity$3;-><init>(Lcom/txdriver/ui/activity/AcceptOrderActivity;)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->rejectButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    .line 149
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->acceptPackets:Ljava/util/Map;

    sget-object v1, Lcom/txdriver/db/Order$Source;->OWN:Lcom/txdriver/db/Order$Source;

    const-class v2, Lcom/txdriver/socket/packet/AcceptOrderPacket;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->acceptPackets:Ljava/util/Map;

    sget-object v1, Lcom/txdriver/db/Order$Source;->UPUP:Lcom/txdriver/db/Order$Source;

    const-class v2, Lcom/txdriver/socket/packet/AcceptUpUpOrderPacket;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->acceptPackets:Ljava/util/Map;

    sget-object v1, Lcom/txdriver/db/Order$Source;->MULTI_TAXI:Lcom/txdriver/db/Order$Source;

    const-class v2, Lcom/txdriver/socket/packet/AcceptMultiTaxiOrderPacket;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->acceptPackets:Ljava/util/Map;

    sget-object v1, Lcom/txdriver/db/Order$Source;->RBT:Lcom/txdriver/db/Order$Source;

    const-class v2, Lcom/txdriver/socket/packet/AcceptRbtOrderPacket;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->acceptPackets:Ljava/util/Map;

    sget-object v1, Lcom/txdriver/db/Order$Source;->EXCHANGE:Lcom/txdriver/db/Order$Source;

    const-class v2, Lcom/txdriver/socket/packet/AcceptExchangeOrderPacket;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/activity/AcceptOrderActivity;)Lcom/txdriver/db/Order;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->order:Lcom/txdriver/db/Order;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/activity/AcceptOrderActivity;)Lcom/txdriver/ui/activity/BaseActivity;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->activity:Lcom/txdriver/ui/activity/BaseActivity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/txdriver/ui/activity/AcceptOrderActivity;Lcom/txdriver/db/Order;Ljava/lang/Integer;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->sendAcceptOrderPacket(Lcom/txdriver/db/Order;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$300(Lcom/txdriver/ui/activity/AcceptOrderActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->mapImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/txdriver/ui/activity/AcceptOrderActivity;Lcom/txdriver/db/Order;)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->buildMapUrl(Lcom/txdriver/db/Order;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildMapUrl(Lcom/txdriver/db/Order;)Ljava/lang/String;
    .locals 6

    .line 386
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->mapImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 387
    iget-object v1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->mapImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    double-to-int v1, v4

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    iget-object v3, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    const v4, 0x7f10022b

    invoke-virtual {v3, v4}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget-object v3, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v3}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/txdriver/preferences/Preferences;->getMap()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpenStreetMap"

    const-string v5, "osm"

    .line 391
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 392
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?point0="

    .line 393
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/txdriver/db/Order;->lng:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/txdriver/db/Order;->lat:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "&width="

    .line 394
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&height="

    .line 395
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initAcceptButtons()V
    .locals 10

    .line 284
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/DeliveryTime;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->order:Lcom/txdriver/db/Order;

    invoke-direct {p0, v0, v1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->isNeedAddDeliveryTimeButtons(Ljava/util/List;Lcom/txdriver/db/Order;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->acceptButton:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f090159

    .line 287
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 288
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 289
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/16 v5, 0x40

    invoke-virtual {p0, v5}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->dpToPx(I)I

    move-result v5

    const v6, 0x4efe2202    # 2.1318208E9f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v4, 0x0

    .line 291
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 292
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/txdriver/db/DeliveryTime;

    .line 293
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 294
    iget v7, v5, Lcom/txdriver/db/DeliveryTime;->time:I

    if-lez v7, :cond_0

    const v7, 0x7f100132

    invoke-virtual {p0, v7}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, v5, Lcom/txdriver/db/DeliveryTime;->time:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    const v7, 0x7f100054

    invoke-virtual {p0, v7}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 296
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080066

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    iget-object v7, v5, Lcom/txdriver/db/DeliveryTime;->color:Ljava/lang/String;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 298
    new-instance v7, Lcom/txdriver/ui/activity/AcceptOrderActivity$6;

    invoke-direct {v7, p0, v5}, Lcom/txdriver/ui/activity/AcceptOrderActivity$6;-><init>(Lcom/txdriver/ui/activity/AcceptOrderActivity;Lcom/txdriver/db/DeliveryTime;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    invoke-virtual {v1, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->acceptButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private isNeedAddDeliveryTimeButtons(Ljava/util/List;Lcom/txdriver/db/Order;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/db/DeliveryTime;",
            ">;",
            "Lcom/txdriver/db/Order;",
            ")Z"
        }
    .end annotation

    .line 274
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 275
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/DeliveryTime;

    iget p1, p1, Lcom/txdriver/db/DeliveryTime;->time:I

    .line 276
    iget-object p2, p2, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xea60

    .line 277
    div-long/2addr v3, v5

    long-to-int p2, v3

    add-int/lit8 p1, p1, 0x5

    if-le p1, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private loadMap(Lcom/txdriver/db/Order;)V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->mapImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->mapImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-lez v1, :cond_0

    .line 366
    invoke-direct {p0, p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->buildMapUrl(Lcom/txdriver/db/Order;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    const v0, 0x7f0800d8

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->mapImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->mapImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 370
    new-instance v2, Lcom/txdriver/ui/activity/AcceptOrderActivity$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/txdriver/ui/activity/AcceptOrderActivity$7;-><init>(Lcom/txdriver/ui/activity/AcceptOrderActivity;Lcom/txdriver/db/Order;Lcom/squareup/picasso/Picasso;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private requestDriverOrderDistance(Lcom/txdriver/db/Order;)V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->mapInfoView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->roadToClientRequest:Lcom/txdriver/http/request/RoadToClientRequest;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 356
    invoke-virtual {v1, v2}, Lcom/txdriver/http/request/RoadToClientRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 358
    :cond_0
    new-instance v1, Lcom/txdriver/http/request/RoadToClientRequest;

    iget-object v2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    invoke-direct {v1, v2, v0, p1}, Lcom/txdriver/http/request/RoadToClientRequest;-><init>(Lcom/txdriver/App;Landroid/location/Location;Lcom/txdriver/db/Order;)V

    iput-object v1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->roadToClientRequest:Lcom/txdriver/http/request/RoadToClientRequest;

    .line 359
    invoke-virtual {v1, p0}, Lcom/txdriver/http/request/RoadToClientRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 360
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->roadToClientRequest:Lcom/txdriver/http/request/RoadToClientRequest;

    invoke-virtual {p1, v0}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    return-void
.end method

.method private sendAcceptOrderPacket(Lcom/txdriver/db/Order;Ljava/lang/Integer;)V
    .locals 6

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->acceptPackets:Ljava/util/Map;

    iget-object v1, p1, Lcom/txdriver/db/Order;->source:Lcom/txdriver/db/Order$Source;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Integer;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 166
    iget p1, p1, Lcom/txdriver/db/Order;->orderId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/socket/packet/AbstractAcceptOrderPacket;

    .line 167
    iget-object p2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p2}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V

    .line 168
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object p1

    new-instance p2, Lcom/txdriver/socket/packet/AddTariffPacket;

    invoke-direct {p2}, Lcom/txdriver/socket/packet/AddTariffPacket;-><init>()V

    invoke-virtual {p1, p2}, Lcom/txdriver/socket/Client;->send(Lcom/txdriver/socket/Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static start(Lcom/txdriver/App;J)V
    .locals 2

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/txdriver/ui/activity/AcceptOrderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "id_extra"

    .line 158
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 159
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v0}, Lcom/txdriver/App;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public acceptOrder(Lcom/txdriver/db/Order;Ljava/lang/Integer;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->newInstance()Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;

    move-result-object v0

    const v1, 0x7f100038

    .line 177
    invoke-virtual {p0, v1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setMessage(Ljava/lang/String;)V

    .line 178
    new-instance v1, Lcom/txdriver/ui/activity/AcceptOrderActivity$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/txdriver/ui/activity/AcceptOrderActivity$4;-><init>(Lcom/txdriver/ui/activity/AcceptOrderActivity;Lcom/txdriver/db/Order;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 185
    new-instance p1, Lcom/txdriver/ui/activity/AcceptOrderActivity$5;

    invoke-direct {p1, p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity$5;-><init>(Lcom/txdriver/ui/activity/AcceptOrderActivity;)V

    invoke-virtual {v0, p1}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->setNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 191
    invoke-virtual {v0, p0}, Lcom/txdriver/ui/fragment/dialog/AlertDialogFragment;->show(Lcom/txdriver/ui/activity/BaseActivity;)V

    goto :goto_0

    .line 193
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->sendAcceptOrderPacket(Lcom/txdriver/db/Order;Ljava/lang/Integer;)V

    .line 194
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->finish()V

    :goto_0
    return-void
.end method

.method public dpToPx(I)I
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p1, p1, v0

    .line 270
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public finish()V
    .locals 4

    .line 255
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseActivity;->finish()V

    .line 256
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setBroadcastOrderNotificationIsActive(Z)V

    .line 257
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/activity/AcceptOrderActivity$FinishEvent;

    iget-wide v2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->orderId:J

    invoke-direct {v1, v2, v3}, Lcom/txdriver/ui/activity/AcceptOrderActivity$FinishEvent;-><init>(J)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->order:Lcom/txdriver/db/Order;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/txdriver/db/Order;->kind:Lcom/txdriver/db/Order$Kind;

    sget-object v1, Lcom/txdriver/db/Order$Kind;->BROADCAST:Lcom/txdriver/db/Order$Kind;

    if-ne v0, v1, :cond_0

    .line 429
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "id_extra"

    .line 201
    invoke-super {p0, p1}, Lcom/txdriver/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 203
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1b

    if-lt p1, v3, :cond_0

    .line 204
    invoke-virtual {p0, v2}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->setShowWhenLocked(Z)V

    .line 205
    invoke-virtual {p0, v2}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->setTurnScreenOn(Z)V

    const-string p1, "keyguard"

    .line 206
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 207
    invoke-virtual {p1, p0, v1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v3, 0x680080

    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 213
    :goto_0
    invoke-virtual {p0, v2}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->supportRequestWindowFeature(I)Z

    const p1, 0x7f0c001d

    .line 214
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->setContentView(I)V

    .line 215
    iput-object p0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->activity:Lcom/txdriver/ui/activity/BaseActivity;

    const p1, 0x7f0901c0

    .line 216
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/txdriver/ui/view/OrderView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->orderView:Lcom/txdriver/ui/view/OrderView;

    const p1, 0x7f090204

    .line 217
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->distanceToClientTextView:Landroid/widget/TextView;

    const p1, 0x7f09020e

    .line 218
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->timeToClientTextView:Landroid/widget/TextView;

    const p1, 0x7f0901df

    .line 219
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->mapImageView:Landroid/widget/ImageView;

    const p1, 0x7f0901e3

    .line 220
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->mapInfoView:Landroid/view/View;

    const p1, 0x7f0901c2

    .line 221
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->callToDispatcherButton:Landroid/widget/ImageButton;

    .line 222
    iget-object v2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->callToDispatcherClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901c1

    .line 223
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->acceptButton:Landroid/widget/TextView;

    .line 224
    iget-object v2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->acceptButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901c3

    .line 225
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->rejectButton:Landroid/widget/TextView;

    .line 226
    iget-object v2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->rejectButtonClickListener:Lcom/txdriver/ui/view/ViewOnClickListener;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->orderId:J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 230
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 231
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->orderId:J

    .line 233
    :goto_1
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->isAcceptOrderMapVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->showMap:Z

    .line 234
    iget-object v2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->mapImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/16 p1, 0x8

    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/16 v0, 0x7e5

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Order;",
            ">;>;"
        }
    .end annotation

    .line 263
    new-instance p1, Lcom/txdriver/ui/loader/OrdersLoader;

    new-instance p2, Lcom/activeandroid/query/Select;

    invoke-direct {p2}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v0, Lcom/txdriver/db/Order;

    invoke-virtual {p2, v0}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->orderId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "OrderId = ?"

    invoke-virtual {p2, v1, v0}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/txdriver/ui/loader/OrdersLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public onEventMainThread(Lcom/txdriver/socket/handler/OrderHandler$OrderRejectTickEvent;)V
    .locals 6

    .line 417
    invoke-virtual {p1}, Lcom/txdriver/socket/handler/OrderHandler$OrderRejectTickEvent;->getOrderId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->orderId:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->rejectButton:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v4, v4, Lcom/txdriver/db/Order;->kind:Lcom/txdriver/db/Order$Kind;

    sget-object v5, Lcom/txdriver/db/Order$Kind;->BROADCAST:Lcom/txdriver/db/Order$Kind;

    if-ne v4, v5, :cond_1

    const v4, 0x7f100083

    goto :goto_0

    :cond_1
    const v4, 0x7f1001fa

    :goto_0
    invoke-virtual {p0, v4}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/txdriver/socket/handler/OrderHandler$OrderRejectTickEvent;->getCounter()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%s(%d)"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    invoke-virtual {p1}, Lcom/txdriver/socket/handler/OrderHandler$OrderRejectTickEvent;->getCounter()I

    move-result p1

    if-gtz p1, :cond_2

    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 422
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->finish()V

    :cond_2
    return-void
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 69
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Order;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Order;",
            ">;)V"
        }
    .end annotation

    .line 320
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->finish()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 324
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/txdriver/db/Order;

    iput-object p2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->order:Lcom/txdriver/db/Order;

    .line 325
    iget-object p2, p2, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    sget-object v0, Lcom/txdriver/db/Order$Status;->CANCELED:Lcom/txdriver/db/Order$Status;

    if-ne p2, v0, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->finish()V

    return-void

    .line 329
    :cond_1
    iget-object p2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object p2, p2, Lcom/txdriver/db/Order;->kind:Lcom/txdriver/db/Order$Kind;

    sget-object v0, Lcom/txdriver/db/Order$Kind;->BROADCAST:Lcom/txdriver/db/Order$Kind;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_2

    .line 330
    iget-object p2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {p2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/txdriver/preferences/Preferences;->setBroadcastOrderNotificationIsActive(Z)V

    .line 331
    iget-object p2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->rejectButton:Landroid/widget/TextView;

    const v0, 0x7f100083

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 332
    iget-object p2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->rejectButton:Landroid/widget/TextView;

    const v0, 0x7f080060

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 334
    :cond_2
    iget-object p2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->rejectButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v0, v0, Lcom/txdriver/db/Order;->kind:Lcom/txdriver/db/Order$Kind;

    sget-object v2, Lcom/txdriver/db/Order$Kind;->BROADCAST:Lcom/txdriver/db/Order$Kind;

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    const/16 p2, 0x8

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->callToDispatcherButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->order:Lcom/txdriver/db/Order;

    iget-object v1, v1, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    iget-boolean v1, v1, Lcom/txdriver/db/OrderType;->driverCanCallToDispatcher:Z

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 338
    :catch_0
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->callToDispatcherButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 340
    :goto_2
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->orderView:Lcom/txdriver/ui/view/OrderView;

    iget-object p2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->order:Lcom/txdriver/db/Order;

    invoke-virtual {p1, p2}, Lcom/txdriver/ui/view/OrderView;->setOrder(Lcom/txdriver/db/Order;)V

    .line 341
    invoke-direct {p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->initAcceptButtons()V

    .line 342
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->order:Lcom/txdriver/db/Order;

    invoke-direct {p0, p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->requestDriverOrderDistance(Lcom/txdriver/db/Order;)V

    .line 343
    iget-boolean p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->showMap:Z

    if-eqz p1, :cond_6

    .line 344
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->order:Lcom/txdriver/db/Order;

    invoke-direct {p0, p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->loadMap(Lcom/txdriver/db/Order;)V

    :cond_6
    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Order;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 69
    check-cast p1, Lorg/osmdroid/bonuspack/routing/Road;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->onResponse(Lorg/osmdroid/bonuspack/routing/Road;)V

    return-void
.end method

.method public onResponse(Lorg/osmdroid/bonuspack/routing/Road;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 402
    iget-wide v0, p1, Lorg/osmdroid/bonuspack/routing/Road;->mLength:D

    .line 403
    iget-wide v2, p1, Lorg/osmdroid/bonuspack/routing/Road;->mDuration:D

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    double-to-int p1, v2

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 405
    iget-object v2, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->distanceToClientTextView:Landroid/widget/TextView;

    const v3, 0x7f1000aa

    invoke-virtual {p0, v3}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->timeToClientTextView:Landroid/widget/TextView;

    int-to-double v1, p1

    const-wide v3, 0x3ffccccccccccccdL    # 1.8

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    const p1, 0x7f100137

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object p1, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->mapInfoView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 240
    invoke-super {p0}, Lcom/txdriver/ui/activity/BaseActivity;->onStop()V

    .line 241
    iget-object v0, p0, Lcom/txdriver/ui/activity/AcceptOrderActivity;->roadToClientRequest:Lcom/txdriver/http/request/RoadToClientRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 242
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/RoadToClientRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    :cond_0
    return-void
.end method

.method public showConnecting(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/AcceptOrderActivity;->finish()V

    :cond_0
    return-void
.end method
