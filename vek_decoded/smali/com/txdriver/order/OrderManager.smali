.class public Lcom/txdriver/order/OrderManager;
.super Ljava/lang/Object;
.source "OrderManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCurrentOrder(Lcom/txdriver/App;Lcom/txdriver/socket/data/CurrentOrderData;)Lcom/txdriver/db/Order;
    .locals 6

    .line 174
    invoke-static {p1}, Lcom/txdriver/order/OrderManager;->getOrCreateOrder(Lcom/txdriver/socket/data/CurrentOrderData;)Landroid/util/Pair;

    move-result-object v0

    .line 175
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/txdriver/db/Order;

    .line 176
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Taximeter;->stopAndReset()V

    .line 180
    :cond_0
    invoke-virtual {v1}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getCurrentOrderId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 181
    invoke-static {}, Lcom/txdriver/db/Order;->deleteCurrentOrder()V

    .line 183
    :cond_1
    iget v0, p1, Lcom/txdriver/socket/data/CurrentOrderData;->autoType:I

    invoke-static {v0}, Lcom/txdriver/db/CarType;->getById(I)Lcom/txdriver/db/CarType;

    move-result-object v0

    iput-object v0, v1, Lcom/txdriver/db/Order;->carType:Lcom/txdriver/db/CarType;

    .line 184
    iget-byte v0, p1, Lcom/txdriver/socket/data/CurrentOrderData;->orderStatus:B

    invoke-static {v1, v0}, Lcom/txdriver/order/OrderManager;->updateStatus(Lcom/txdriver/db/Order;B)Lcom/txdriver/db/Order;

    .line 185
    iget-object p1, p1, Lcom/txdriver/socket/data/CurrentOrderData;->orderDetailsData:Lcom/txdriver/socket/data/OrderDetailsData;

    invoke-static {p0, v1, p1}, Lcom/txdriver/order/OrderManager;->setOrderDetails(Lcom/txdriver/App;Lcom/txdriver/db/Order;Lcom/txdriver/socket/data/OrderDetailsData;)V

    .line 186
    invoke-virtual {p0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p0

    invoke-virtual {v1}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/txdriver/preferences/Preferences;->setCurrentOrderId(J)V

    return-object v1
.end method

.method public static createOrder(Lcom/txdriver/App;Lcom/txdriver/socket/data/CurrentOrderData;)Lcom/txdriver/db/Order;
    .locals 2

    .line 80
    sget-object v0, Lcom/txdriver/db/Order$Kind;->NONE:Lcom/txdriver/db/Order$Kind;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/txdriver/order/OrderManager;->createOrder(Lcom/txdriver/App;Lcom/txdriver/socket/data/CurrentOrderData;Lcom/txdriver/db/Order$Kind;Z)Lcom/txdriver/db/Order;

    move-result-object p0

    return-object p0
.end method

.method public static createOrder(Lcom/txdriver/App;Lcom/txdriver/socket/data/CurrentOrderData;Lcom/txdriver/db/Order$Kind;Z)Lcom/txdriver/db/Order;
    .locals 1

    .line 84
    new-instance v0, Lcom/txdriver/db/Order;

    invoke-direct {v0}, Lcom/txdriver/db/Order;-><init>()V

    .line 85
    iput-object p2, v0, Lcom/txdriver/db/Order;->kind:Lcom/txdriver/db/Order$Kind;

    .line 86
    invoke-virtual {v0, p3}, Lcom/txdriver/db/Order;->save(Z)V

    .line 87
    iget-object p1, p1, Lcom/txdriver/socket/data/CurrentOrderData;->orderDetailsData:Lcom/txdriver/socket/data/OrderDetailsData;

    invoke-static {p0, v0, p1}, Lcom/txdriver/order/OrderManager;->setOrderDetails(Lcom/txdriver/App;Lcom/txdriver/db/Order;Lcom/txdriver/socket/data/OrderDetailsData;)V

    return-object v0
.end method

.method public static createOrder(Lcom/txdriver/App;Lcom/txdriver/socket/data/OrderData;Lcom/txdriver/db/Order$Kind;)Lcom/txdriver/db/Order;
    .locals 2

    .line 72
    sget-object v0, Lcom/txdriver/db/Order$Status;->NEW:Lcom/txdriver/db/Order$Status;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p2, v1}, Lcom/txdriver/order/OrderManager;->createOrder(Lcom/txdriver/App;Lcom/txdriver/socket/data/OrderData;Lcom/txdriver/db/Order$Status;Lcom/txdriver/db/Order$Kind;Z)Lcom/txdriver/db/Order;

    move-result-object p0

    return-object p0
.end method

.method public static createOrder(Lcom/txdriver/App;Lcom/txdriver/socket/data/OrderData;Lcom/txdriver/db/Order$Kind;Z)Lcom/txdriver/db/Order;
    .locals 1

    .line 76
    sget-object v0, Lcom/txdriver/db/Order$Status;->NEW:Lcom/txdriver/db/Order$Status;

    invoke-static {p0, p1, v0, p2, p3}, Lcom/txdriver/order/OrderManager;->createOrder(Lcom/txdriver/App;Lcom/txdriver/socket/data/OrderData;Lcom/txdriver/db/Order$Status;Lcom/txdriver/db/Order$Kind;Z)Lcom/txdriver/db/Order;

    move-result-object p0

    return-object p0
.end method

.method public static createOrder(Lcom/txdriver/App;Lcom/txdriver/socket/data/OrderData;Lcom/txdriver/db/Order$Status;Lcom/txdriver/db/Order$Kind;)Lcom/txdriver/db/Order;
    .locals 1

    const/4 v0, 0x1

    .line 34
    invoke-static {p0, p1, p2, p3, v0}, Lcom/txdriver/order/OrderManager;->createOrder(Lcom/txdriver/App;Lcom/txdriver/socket/data/OrderData;Lcom/txdriver/db/Order$Status;Lcom/txdriver/db/Order$Kind;Z)Lcom/txdriver/db/Order;

    move-result-object p0

    return-object p0
.end method

.method public static createOrder(Lcom/txdriver/App;Lcom/txdriver/socket/data/OrderData;Lcom/txdriver/db/Order$Status;Lcom/txdriver/db/Order$Kind;Z)Lcom/txdriver/db/Order;
    .locals 1

    .line 38
    new-instance p0, Lcom/txdriver/db/Order;

    invoke-direct {p0, p1}, Lcom/txdriver/db/Order;-><init>(Lcom/txdriver/socket/data/OrderData;)V

    .line 39
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getOrderType()I

    move-result v0

    invoke-static {v0}, Lcom/txdriver/db/OrderType;->getOrderType(I)Lcom/txdriver/db/OrderType;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    .line 40
    iput-object p2, p0, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    .line 41
    iput-object p3, p0, Lcom/txdriver/db/Order;->kind:Lcom/txdriver/db/Order$Kind;

    .line 42
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getDate()Ljava/util/Date;

    move-result-object p2

    iput-object p2, p0, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    .line 43
    invoke-virtual {p0, p4}, Lcom/txdriver/db/Order;->save(Z)V

    .line 44
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getDriverExtras()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getCarExtras()Ljava/util/List;

    move-result-object p3

    invoke-static {p0, p2, p3}, Lcom/txdriver/order/OrderManager;->saveExtras(Lcom/txdriver/db/Order;Ljava/util/List;Ljava/util/List;)V

    .line 45
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getPaymentTypes()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/txdriver/order/OrderManager;->saveOrderPaymentTypes(Lcom/txdriver/db/Order;Ljava/util/List;)V

    return-object p0
.end method

.method public static deleteAddresses(Lcom/txdriver/db/Order;)V
    .locals 3

    .line 131
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/txdriver/db/Address;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 132
    invoke-virtual {p0}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "OrderId = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 133
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public static getOrCreateOrder(Lcom/txdriver/socket/data/CurrentOrderData;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/socket/data/CurrentOrderData;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/txdriver/db/Order;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object p0, p0, Lcom/txdriver/socket/data/CurrentOrderData;->orderDetailsData:Lcom/txdriver/socket/data/OrderDetailsData;

    iget p0, p0, Lcom/txdriver/socket/data/OrderDetailsData;->orderId:I

    invoke-static {p0}, Lcom/txdriver/db/Order;->getOrderById(I)Lcom/txdriver/db/Order;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 194
    new-instance p0, Lcom/txdriver/db/Order;

    invoke-direct {p0}, Lcom/txdriver/db/Order;-><init>()V

    .line 195
    sget-object v1, Lcom/txdriver/db/Order$Kind;->NONE:Lcom/txdriver/db/Order$Kind;

    iput-object v1, p0, Lcom/txdriver/db/Order;->kind:Lcom/txdriver/db/Order$Kind;

    .line 196
    invoke-virtual {p0, v0}, Lcom/txdriver/db/Order;->save(Z)V

    const/4 v0, 0x1

    .line 199
    :cond_0
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static saveDefaultDropOffAddress(Lcom/txdriver/db/Order;Ljava/lang/String;)V
    .locals 3

    .line 164
    new-instance v0, Lcom/txdriver/db/Address;

    invoke-direct {v0}, Lcom/txdriver/db/Address;-><init>()V

    .line 165
    sget-object v1, Lcom/txdriver/db/Address$Type;->TO:Lcom/txdriver/db/Address$Type;

    iput-object v1, v0, Lcom/txdriver/db/Address;->type:Lcom/txdriver/db/Address$Type;

    const-wide/16 v1, 0x0

    .line 166
    iput-wide v1, v0, Lcom/txdriver/db/Address;->lng:D

    .line 167
    iput-wide v1, v0, Lcom/txdriver/db/Address;->lat:D

    .line 168
    iput-object p0, v0, Lcom/txdriver/db/Address;->order:Lcom/txdriver/db/Order;

    .line 169
    iput-object p1, v0, Lcom/txdriver/db/Address;->address:Ljava/lang/String;

    .line 170
    invoke-virtual {v0}, Lcom/txdriver/db/Address;->save()V

    return-void
.end method

.method public static saveDropOffAddress(Lcom/txdriver/db/Order;Lcom/txdriver/socket/data/OrderDetailsData;)V
    .locals 3

    .line 150
    iget-object v0, p1, Lcom/txdriver/socket/data/OrderDetailsData;->destinationAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/socket/data/AddressData;

    .line 151
    new-instance v2, Lcom/txdriver/db/Address;

    invoke-direct {v2, v1}, Lcom/txdriver/db/Address;-><init>(Lcom/txdriver/socket/data/AddressData;)V

    .line 152
    iput-object p0, v2, Lcom/txdriver/db/Address;->order:Lcom/txdriver/db/Order;

    .line 153
    sget-object v1, Lcom/txdriver/db/Address$Type;->TO:Lcom/txdriver/db/Address$Type;

    iput-object v1, v2, Lcom/txdriver/db/Address;->type:Lcom/txdriver/db/Address$Type;

    .line 154
    invoke-virtual {v2}, Lcom/txdriver/db/Address;->save()V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p1, Lcom/txdriver/socket/data/OrderDetailsData;->destinationAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 158
    iget-object p1, p1, Lcom/txdriver/socket/data/OrderDetailsData;->destinationAddresses:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/txdriver/socket/data/AddressData;

    .line 159
    iget-object p1, p1, Lcom/txdriver/socket/data/AddressData;->parking:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/txdriver/db/Parking;->getByParkingId(I)Lcom/txdriver/db/Parking;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/db/Order;->destinationParking:Lcom/txdriver/db/Parking;

    :cond_1
    return-void
.end method

.method public static saveExtras(Lcom/txdriver/db/Order;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/db/Order;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/txdriver/db/OrderDriverExtra;->delete(J)V

    .line 51
    invoke-virtual {p0}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/txdriver/db/OrderCarExtra;->delete(J)V

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 53
    invoke-static {p0, v0}, Lcom/txdriver/db/OrderDriverExtra;->createOrderExtra(Lcom/txdriver/db/Order;I)Lcom/txdriver/db/OrderDriverExtra;

    goto :goto_0

    .line 55
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 56
    invoke-static {p0, p2}, Lcom/txdriver/db/OrderCarExtra;->createOrderExtra(Lcom/txdriver/db/Order;I)Lcom/txdriver/db/OrderCarExtra;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static saveOrderPaymentTypes(Lcom/txdriver/db/Order;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/db/Order;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/txdriver/db/OrderPaymentType;->delete(J)V

    if-nez p1, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 66
    invoke-static {v0}, Lcom/txdriver/db/PaymentType;->getPaymentType(I)Lcom/txdriver/db/PaymentType;

    move-result-object v0

    .line 67
    invoke-static {p0, v0}, Lcom/txdriver/db/OrderPaymentType;->create(Lcom/txdriver/db/Order;Lcom/txdriver/db/PaymentType;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static savePickUpAddress(Lcom/txdriver/db/Order;Lcom/txdriver/socket/data/OrderDetailsData;)V
    .locals 3

    .line 137
    iget-object v0, p1, Lcom/txdriver/socket/data/OrderDetailsData;->parkingFrom:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/txdriver/db/Parking;->getByParkingId(I)Lcom/txdriver/db/Parking;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/db/Order;->parking:Lcom/txdriver/db/Parking;

    .line 138
    iget-wide v0, p1, Lcom/txdriver/socket/data/OrderDetailsData;->latFrom:D

    iput-wide v0, p0, Lcom/txdriver/db/Order;->lat:D

    .line 139
    iget-wide v0, p1, Lcom/txdriver/socket/data/OrderDetailsData;->lngFrom:D

    iput-wide v0, p0, Lcom/txdriver/db/Order;->lng:D

    .line 140
    new-instance v0, Lcom/txdriver/db/Address;

    invoke-direct {v0}, Lcom/txdriver/db/Address;-><init>()V

    .line 141
    sget-object v1, Lcom/txdriver/db/Address$Type;->FROM:Lcom/txdriver/db/Address$Type;

    iput-object v1, v0, Lcom/txdriver/db/Address;->type:Lcom/txdriver/db/Address$Type;

    .line 142
    iget-object v1, p1, Lcom/txdriver/socket/data/OrderDetailsData;->addressFrom:Ljava/lang/String;

    iput-object v1, v0, Lcom/txdriver/db/Address;->address:Ljava/lang/String;

    .line 143
    iget-wide v1, p1, Lcom/txdriver/socket/data/OrderDetailsData;->latFrom:D

    iput-wide v1, v0, Lcom/txdriver/db/Address;->lat:D

    .line 144
    iget-wide v1, p1, Lcom/txdriver/socket/data/OrderDetailsData;->lngFrom:D

    iput-wide v1, v0, Lcom/txdriver/db/Address;->lng:D

    .line 145
    iput-object p0, v0, Lcom/txdriver/db/Address;->order:Lcom/txdriver/db/Order;

    .line 146
    invoke-virtual {v0}, Lcom/txdriver/db/Address;->save()V

    return-void
.end method

.method public static setOrderDetails(Lcom/txdriver/App;Lcom/txdriver/db/Order;Lcom/txdriver/socket/data/OrderDetailsData;)V
    .locals 1

    const v0, 0x7f10009e

    .line 92
    invoke-virtual {p0, v0}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, p2, v0}, Lcom/txdriver/order/OrderManager;->setOrderDetails(Lcom/txdriver/db/Order;Lcom/txdriver/App;Lcom/txdriver/socket/data/OrderDetailsData;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/txdriver/taximeter/TaximeterHelper;->changeTaximeterTariff(Lcom/txdriver/App;Lcom/txdriver/db/Order;Lcom/txdriver/taximeter/Taximeter;)V

    return-void
.end method

.method public static setOrderDetails(Lcom/txdriver/db/Order;Lcom/txdriver/App;Lcom/txdriver/socket/data/OrderDetailsData;Ljava/lang/String;)V
    .locals 2

    .line 97
    iget-object p1, p2, Lcom/txdriver/socket/data/OrderDetailsData;->client:Ljava/lang/String;

    iput-object p1, p0, Lcom/txdriver/db/Order;->client:Ljava/lang/String;

    .line 98
    iget-wide v0, p2, Lcom/txdriver/socket/data/OrderDetailsData;->price:D

    iput-wide v0, p0, Lcom/txdriver/db/Order;->price:D

    .line 99
    iget-object p1, p2, Lcom/txdriver/socket/data/OrderDetailsData;->note:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/txdriver/socket/data/OrderDetailsData;->note:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/txdriver/db/Order;->note:Ljava/lang/String;

    .line 100
    invoke-virtual {p2}, Lcom/txdriver/socket/data/OrderDetailsData;->getDate()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    .line 101
    iget-object p1, p2, Lcom/txdriver/socket/data/OrderDetailsData;->addressFrom:Ljava/lang/String;

    iput-object p1, p0, Lcom/txdriver/db/Order;->address:Ljava/lang/String;

    .line 102
    iget-object p1, p0, Lcom/txdriver/db/Order;->source:Lcom/txdriver/db/Order$Source;

    sget-object v0, Lcom/txdriver/db/Order$Source;->UPUP:Lcom/txdriver/db/Order$Source;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/txdriver/db/Order;->source:Lcom/txdriver/db/Order$Source;

    sget-object v0, Lcom/txdriver/db/Order$Source;->RBT:Lcom/txdriver/db/Order$Source;

    if-eq p1, v0, :cond_1

    .line 103
    iget p1, p2, Lcom/txdriver/socket/data/OrderDetailsData;->tariff:I

    invoke-static {p1}, Lcom/txdriver/db/Tariff;->getTariff(I)Lcom/txdriver/db/Tariff;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/db/Order;->tariff:Lcom/txdriver/db/Tariff;

    .line 105
    :cond_1
    iget p1, p2, Lcom/txdriver/socket/data/OrderDetailsData;->orderId:I

    iput p1, p0, Lcom/txdriver/db/Order;->orderId:I

    .line 106
    iget-wide v0, p2, Lcom/txdriver/socket/data/OrderDetailsData;->discountSum:D

    iput-wide v0, p0, Lcom/txdriver/db/Order;->discountSum:D

    .line 107
    iget-wide v0, p2, Lcom/txdriver/socket/data/OrderDetailsData;->discountPercent:D

    iput-wide v0, p0, Lcom/txdriver/db/Order;->discountPercent:D

    .line 108
    iget-object p1, p2, Lcom/txdriver/socket/data/OrderDetailsData;->phoneNumber:Ljava/lang/String;

    iput-object p1, p0, Lcom/txdriver/db/Order;->phoneNumber:Ljava/lang/String;

    .line 109
    iget-object p1, p2, Lcom/txdriver/socket/data/OrderDetailsData;->orderType:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/txdriver/db/OrderType;->getOrderType(I)Lcom/txdriver/db/OrderType;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    .line 110
    iget-object p1, p2, Lcom/txdriver/socket/data/OrderDetailsData;->distance:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/txdriver/db/Order;->distance:I

    .line 111
    iget-object p1, p2, Lcom/txdriver/socket/data/OrderDetailsData;->clientBonusBalance:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/db/Order;->clientBonusBalance:D

    .line 112
    iget p1, p2, Lcom/txdriver/socket/data/OrderDetailsData;->source:I

    invoke-static {p1}, Lcom/txdriver/db/Order$Source;->get(I)Lcom/txdriver/db/Order$Source;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/db/Order;->source:Lcom/txdriver/db/Order$Source;

    .line 113
    iget-boolean p1, p2, Lcom/txdriver/socket/data/OrderDetailsData;->transfer:Z

    iput-boolean p1, p0, Lcom/txdriver/db/Order;->transfer:Z

    .line 114
    iget p1, p2, Lcom/txdriver/socket/data/OrderDetailsData;->markupAmount:F

    iput p1, p0, Lcom/txdriver/db/Order;->markupAmount:F

    .line 115
    iget p1, p2, Lcom/txdriver/socket/data/OrderDetailsData;->markupPercent:F

    iput p1, p0, Lcom/txdriver/db/Order;->markupPercent:F

    .line 116
    iget p1, p2, Lcom/txdriver/socket/data/OrderDetailsData;->bankCardPaymentState:I

    invoke-static {p1}, Lcom/txdriver/db/Order$BankCardPaymentState;->get(I)Lcom/txdriver/db/Order$BankCardPaymentState;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/db/Order;->bankCardPaymentState:Lcom/txdriver/db/Order$BankCardPaymentState;

    .line 117
    iget p1, p2, Lcom/txdriver/socket/data/OrderDetailsData;->bankCardPaymentAmount:F

    iput p1, p0, Lcom/txdriver/db/Order;->bankCardPaymentAmount:F

    .line 118
    iget-wide v0, p2, Lcom/txdriver/socket/data/OrderDetailsData;->bonusesPaymentAmount:D

    iput-wide v0, p0, Lcom/txdriver/db/Order;->bonusesPaymentAmount:D

    .line 119
    invoke-static {p0}, Lcom/txdriver/order/OrderManager;->deleteAddresses(Lcom/txdriver/db/Order;)V

    .line 120
    invoke-static {p0, p2}, Lcom/txdriver/order/OrderManager;->savePickUpAddress(Lcom/txdriver/db/Order;Lcom/txdriver/socket/data/OrderDetailsData;)V

    .line 121
    invoke-static {p0, p2}, Lcom/txdriver/order/OrderManager;->saveDropOffAddress(Lcom/txdriver/db/Order;Lcom/txdriver/socket/data/OrderDetailsData;)V

    .line 122
    iget-object p1, p2, Lcom/txdriver/socket/data/OrderDetailsData;->destinationAddresses:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 123
    invoke-static {p0, p3}, Lcom/txdriver/order/OrderManager;->saveDefaultDropOffAddress(Lcom/txdriver/db/Order;Ljava/lang/String;)V

    .line 125
    :cond_2
    iget-object p1, p2, Lcom/txdriver/socket/data/OrderDetailsData;->driverExtras:Ljava/util/List;

    iget-object p3, p2, Lcom/txdriver/socket/data/OrderDetailsData;->carExtras:Ljava/util/List;

    invoke-static {p0, p1, p3}, Lcom/txdriver/order/OrderManager;->saveExtras(Lcom/txdriver/db/Order;Ljava/util/List;Ljava/util/List;)V

    .line 126
    iget-object p1, p2, Lcom/txdriver/socket/data/OrderDetailsData;->paymentTypes:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/txdriver/order/OrderManager;->saveOrderPaymentTypes(Lcom/txdriver/db/Order;Ljava/util/List;)V

    .line 127
    invoke-virtual {p0}, Lcom/txdriver/db/Order;->save()V

    return-void
.end method

.method public static updateOrderStatusAndKind(Lcom/txdriver/App;Lcom/txdriver/db/Order;)V
    .locals 5

    .line 252
    invoke-virtual {p0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getCurrentOrderId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 253
    invoke-virtual {p1}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/txdriver/order/OrderHelper;->canStartPerforming(Lcom/txdriver/db/Order;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 254
    :cond_1
    sget-object p0, Lcom/txdriver/db/Order$Kind;->RESERVED:Lcom/txdriver/db/Order$Kind;

    iput-object p0, p1, Lcom/txdriver/db/Order;->kind:Lcom/txdriver/db/Order$Kind;

    .line 255
    sget-object p0, Lcom/txdriver/db/Order$Status;->ACCEPTED:Lcom/txdriver/db/Order$Status;

    iput-object p0, p1, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    goto :goto_0

    .line 257
    :cond_2
    sget-object v0, Lcom/txdriver/db/Order$Kind;->NONE:Lcom/txdriver/db/Order$Kind;

    iput-object v0, p1, Lcom/txdriver/db/Order;->kind:Lcom/txdriver/db/Order$Kind;

    .line 258
    sget-object v0, Lcom/txdriver/db/Order$Status;->PERFORMING:Lcom/txdriver/db/Order$Status;

    iput-object v0, p1, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    .line 259
    invoke-virtual {p0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p0

    invoke-virtual {p1}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->setCurrentOrderId(J)V

    :goto_0
    return-void
.end method

.method public static updateStatus(Lcom/txdriver/App;IB)Lcom/txdriver/db/Order;
    .locals 2

    .line 221
    invoke-static {p1}, Lcom/txdriver/db/Order;->getOrderById(I)Lcom/txdriver/db/Order;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    sget-object p2, Lcom/txdriver/db/Order$Status;->DONE:Lcom/txdriver/db/Order$Status;

    iput-object p2, p1, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    .line 236
    invoke-virtual {p0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p2

    const-wide/16 v0, -0x1

    invoke-virtual {p2, v0, v1}, Lcom/txdriver/preferences/Preferences;->setCurrentOrderId(J)V

    .line 237
    invoke-virtual {p0}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/txdriver/taximeter/Taximeter;->stopAndReset()V

    goto :goto_0

    .line 230
    :cond_1
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iput-object p2, p1, Lcom/txdriver/db/Order;->onRouteDate:Ljava/util/Date;

    .line 231
    sget-object p2, Lcom/txdriver/db/Order$Status;->ON_ROUTE:Lcom/txdriver/db/Order$Status;

    iput-object p2, p1, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    .line 232
    invoke-virtual {p0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p0

    invoke-virtual {p1}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->setCurrentOrderId(J)V

    goto :goto_0

    .line 225
    :cond_2
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iput-object p2, p1, Lcom/txdriver/db/Order;->arrivedDate:Ljava/util/Date;

    .line 226
    sget-object p2, Lcom/txdriver/db/Order$Status;->ARRIVED:Lcom/txdriver/db/Order$Status;

    iput-object p2, p1, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    .line 227
    invoke-virtual {p0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p0

    invoke-virtual {p1}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->setCurrentOrderId(J)V

    goto :goto_0

    .line 240
    :cond_3
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iput-object p2, p1, Lcom/txdriver/db/Order;->startPerformingDate:Ljava/util/Date;

    .line 241
    sget-object p2, Lcom/txdriver/db/Order$Status;->PERFORMING:Lcom/txdriver/db/Order$Status;

    iput-object p2, p1, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    .line 242
    sget-object p2, Lcom/txdriver/db/Order$Kind;->NONE:Lcom/txdriver/db/Order$Kind;

    iput-object p2, p1, Lcom/txdriver/db/Order;->kind:Lcom/txdriver/db/Order$Kind;

    .line 243
    invoke-virtual {p0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p0

    invoke-virtual {p1}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->setCurrentOrderId(J)V

    .line 246
    :goto_0
    invoke-virtual {p1}, Lcom/txdriver/db/Order;->save()V

    :cond_4
    return-object p1
.end method

.method public static updateStatus(Lcom/txdriver/db/Order;B)Lcom/txdriver/db/Order;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    sget-object p1, Lcom/txdriver/db/Order$Status;->ON_ROUTE:Lcom/txdriver/db/Order$Status;

    iput-object p1, p0, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    goto :goto_0

    .line 205
    :cond_1
    sget-object p1, Lcom/txdriver/db/Order$Status;->ARRIVED:Lcom/txdriver/db/Order$Status;

    iput-object p1, p0, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    goto :goto_0

    .line 211
    :cond_2
    sget-object p1, Lcom/txdriver/db/Order$Status;->PERFORMING:Lcom/txdriver/db/Order$Status;

    iput-object p1, p0, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    .line 212
    sget-object p1, Lcom/txdriver/db/Order$Kind;->NONE:Lcom/txdriver/db/Order$Kind;

    iput-object p1, p0, Lcom/txdriver/db/Order;->kind:Lcom/txdriver/db/Order$Kind;

    :goto_0
    const/4 p1, 0x0

    .line 215
    invoke-virtual {p0, p1}, Lcom/txdriver/db/Order;->save(Z)V

    return-object p0
.end method
