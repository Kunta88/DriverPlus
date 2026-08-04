.class public Lcom/txdriver/ui/fragment/OrderMapFragment;
.super Lcom/txdriver/ui/fragment/MapFragment;
.source "OrderMapFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Lcom/txdriver/ui/fragment/map/BalloonItemClickListener;
.implements Lcom/txdriver/http/request/HttpRequest$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/ui/fragment/MapFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/txdriver/db/Order;",
        ">;>;",
        "Lcom/txdriver/ui/fragment/map/BalloonItemClickListener;",
        "Lcom/txdriver/http/request/HttpRequest$OnResponseListener<",
        "Ljava/util/List<",
        "Lorg/osmdroid/util/GeoPoint;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final LOADER_ORDER:I = 0x190


# instance fields
.field private addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/db/Address;",
            ">;"
        }
    .end annotation
.end field

.field private distanceTextView:Landroid/widget/TextView;

.field private mapPinGreen:Landroid/graphics/drawable/Drawable;

.field private mapPinRed:Landroid/graphics/drawable/Drawable;

.field private order:Lcom/txdriver/db/Order;

.field private orderId:J

.field private orderPathRequest:Lcom/txdriver/http/request/OrderPathRequest;

.field private overlayItemAddressMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/txdriver/ui/fragment/map/Item;",
            "Lcom/txdriver/db/Address;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/MapFragment;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->overlayItemAddressMap:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->addresses:Ljava/util/List;

    return-void
.end method

.method private buildRoute(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    .line 138
    new-instance v2, Lcom/txdriver/ui/fragment/map/Point;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/txdriver/ui/fragment/map/Point;-><init>(DD)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/OrderMapFragment;->getMap()Lcom/txdriver/ui/fragment/map/Map;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/fragment/map/Map;->buildRoute(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private requestOrderPath()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->orderPathRequest:Lcom/txdriver/http/request/OrderPathRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/OrderPathRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 122
    :cond_0
    new-instance v0, Lcom/txdriver/http/request/OrderPathRequest;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->app:Lcom/txdriver/App;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->order:Lcom/txdriver/db/Order;

    invoke-direct {v0, v1, v2}, Lcom/txdriver/http/request/OrderPathRequest;-><init>(Lcom/txdriver/App;Lcom/txdriver/db/Order;)V

    iput-object v0, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->orderPathRequest:Lcom/txdriver/http/request/OrderPathRequest;

    .line 123
    invoke-virtual {v0, p0}, Lcom/txdriver/http/request/OrderPathRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    .line 124
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getRequestManager()Lcom/txdriver/http/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->orderPathRequest:Lcom/txdriver/http/request/OrderPathRequest;

    invoke-virtual {v0, v1}, Lcom/txdriver/http/RequestManager;->execute(Lcom/txdriver/http/request/HttpRequest;)V

    return-void
.end method

.method private showObjects(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Address;",
            ">;)V"
        }
    .end annotation

    .line 169
    const-class v0, Lcom/txdriver/ui/fragment/OrderMapFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "equalLists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->addresses:Ljava/util/List;

    invoke-static {v2, p1}, Lcom/txdriver/utils/Lists;->equalLists(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->addresses:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/txdriver/utils/Lists;->equalLists(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    iput-object p1, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->addresses:Ljava/util/List;

    .line 174
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->overlayItemAddressMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 175
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/OrderMapFragment;->getMap()Lcom/txdriver/ui/fragment/map/Map;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/ui/fragment/map/Map;->clearOverlayItems()V

    if-eqz p1, :cond_3

    .line 177
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/db/Address;

    .line 178
    iget-wide v1, v0, Lcom/txdriver/db/Address;->lat:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_1

    iget-wide v1, v0, Lcom/txdriver/db/Address;->lng:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_1

    .line 179
    new-instance v1, Lcom/txdriver/ui/fragment/map/Item;

    iget-object v2, v0, Lcom/txdriver/db/Address;->address:Ljava/lang/String;

    new-instance v3, Lcom/txdriver/ui/fragment/map/Point;

    iget-wide v4, v0, Lcom/txdriver/db/Address;->lat:D

    iget-wide v6, v0, Lcom/txdriver/db/Address;->lng:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/txdriver/ui/fragment/map/Point;-><init>(DD)V

    iget-object v4, v0, Lcom/txdriver/db/Address;->type:Lcom/txdriver/db/Address$Type;

    sget-object v5, Lcom/txdriver/db/Address$Type;->TO:Lcom/txdriver/db/Address$Type;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->mapPinRed:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->mapPinGreen:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-direct {v1, v2, v3, v4}, Lcom/txdriver/ui/fragment/map/Item;-><init>(Ljava/lang/String;Lcom/txdriver/ui/fragment/map/Point;Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v2, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->overlayItemAddressMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/OrderMapFragment;->getMap()Lcom/txdriver/ui/fragment/map/Map;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/map/Map;->addOverlayItem(Lcom/txdriver/ui/fragment/map/Item;)V

    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/OrderMapFragment;->getMap()Lcom/txdriver/ui/fragment/map/Map;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/map/Map;->setZoomToSpanAllItems()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 66
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/MapFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/OrderMapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_order_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->orderId:J

    .line 68
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/OrderMapFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/16 v0, 0x190

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onBalloonClick(Lcom/txdriver/ui/fragment/map/Item;)V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->overlayItemAddressMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/Address;

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/OrderMapFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/txdriver/db/Address;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/txdriver/ui/fragment/dialog/NavigateDialogFragment;->show(Landroidx/fragment/app/FragmentActivity;J)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/MapFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 102
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/OrderMapFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 4
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

    .line 151
    new-instance p1, Lcom/txdriver/ui/loader/OrdersLoader;

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/OrderMapFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Order;

    .line 152
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->orderId:J

    .line 153
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Id = ?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/txdriver/ui/loader/OrdersLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0c005d

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901eb

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->distanceTextView:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/OrderMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->mapPinRed:Landroid/graphics/drawable/Drawable;

    .line 57
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/OrderMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->mapPinGreen:Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/txdriver/ui/fragment/MapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0901ea

    .line 59
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 60
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/fragment/OrderMapFragment;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 2
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

    if-eqz p2, :cond_0

    .line 158
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/Order;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->order:Lcom/txdriver/db/Order;

    if-eqz p1, :cond_1

    .line 160
    iget-object p2, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->distanceTextView:Landroid/widget/TextView;

    iget p1, p1, Lcom/txdriver/db/Order;->distance:I

    int-to-double v0, p1

    invoke-static {v0, v1}, Lcom/txdriver/utils/DistanceUtils;->mToKm(D)D

    move-result-wide v0

    const p1, 0x7f1000fb

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/OrderMapFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/txdriver/utils/Format;->formatDouble(DLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    iget-object p2, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->order:Lcom/txdriver/db/Order;

    invoke-virtual {p2}, Lcom/txdriver/db/Order;->getAddress()Lcom/txdriver/db/Address;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object p2, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->order:Lcom/txdriver/db/Order;

    iget-object p2, p2, Lcom/txdriver/db/Order;->destinations:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/OrderMapFragment;->showObjects(Ljava/util/List;)V

    :cond_1
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

    const/4 p1, 0x0

    .line 196
    iput-object p1, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->order:Lcom/txdriver/db/Order;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/txdriver/ui/fragment/MapFragment;->onPause()V

    .line 80
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/OrderMapFragment;->getMap()Lcom/txdriver/ui/fragment/map/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/fragment/map/Map;->setBalloonItemClickListener(Lcom/txdriver/ui/fragment/map/BalloonItemClickListener;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/OrderMapFragment;->onResponse(Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/OrderMapFragment;->buildRoute(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/txdriver/ui/fragment/MapFragment;->onResume()V

    .line 74
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/OrderMapFragment;->getMap()Lcom/txdriver/ui/fragment/map/Map;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/txdriver/ui/fragment/map/Map;->setBalloonItemClickListener(Lcom/txdriver/ui/fragment/map/BalloonItemClickListener;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 107
    invoke-super {p0}, Lcom/txdriver/ui/fragment/MapFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 112
    invoke-super {p0}, Lcom/txdriver/ui/fragment/MapFragment;->onStop()V

    .line 113
    iget-object v0, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->orderPathRequest:Lcom/txdriver/http/request/OrderPathRequest;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0, v1}, Lcom/txdriver/http/request/OrderPathRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpRequest$OnResponseListener;)V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/MapFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/txdriver/ui/fragment/OrderMapFragment;->order:Lcom/txdriver/db/Order;

    if-eqz p1, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/OrderMapFragment;->requestOrderPath()V

    :cond_0
    return-void
.end method
