.class public Lcom/txdriver/db/Order;
.super Lcom/activeandroid/Model;
.source "Order.java"

# interfaces
.implements Lcom/txdriver/ui/listItemTemplate/Connectable;


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "Orders"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/db/Order$BankCardPaymentState;,
        Lcom/txdriver/db/Order$Source;,
        Lcom/txdriver/db/Order$Kind;,
        Lcom/txdriver/db/Order$Status;
    }
.end annotation


# static fields
.field public static final ORDER_ID_NONE:I = -0x1


# instance fields
.field public acceptable:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Acceptable"
    .end annotation
.end field

.field public address:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Address"
    .end annotation
.end field

.field public arrivedDate:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "ArrivedDate"
    .end annotation
.end field

.field public bankCardPaymentAmount:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "BankCardPaymentAmount"
    .end annotation
.end field

.field public bankCardPaymentState:Lcom/txdriver/db/Order$BankCardPaymentState;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "BankCardPaymentState"
    .end annotation
.end field

.field public bonusesPaymentAmount:D
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "BonusesPaymentAmount"
    .end annotation
.end field

.field public transient carExtras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/db/CarExtra;",
            ">;"
        }
    .end annotation
.end field

.field public carType:Lcom/txdriver/db/CarType;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "AutoType"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field

.field public client:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Client"
    .end annotation
.end field

.field public clientBonusBalance:D
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "ClientBonusBalance"
    .end annotation
.end field

.field public commission:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Commission"
    .end annotation
.end field

.field public date:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Date"
    .end annotation
.end field

.field public destinationAddress:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "DestinationAddress"
    .end annotation
.end field

.field public destinationParking:Lcom/txdriver/db/Parking;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "DestinationParking"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field

.field public transient destinations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/db/Address;",
            ">;"
        }
    .end annotation
.end field

.field public discountPercent:D
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "DiscountPercent"
    .end annotation
.end field

.field public discountSum:D
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "DiscountSum"
    .end annotation
.end field

.field public distance:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Distance"
    .end annotation
.end field

.field public transient driverExtras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/db/DriverExtra;",
            ">;"
        }
    .end annotation
.end field

.field public kind:Lcom/txdriver/db/Order$Kind;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Kind"
    .end annotation
.end field

.field public lat:D
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Lat"
    .end annotation
.end field

.field public lng:D
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Lng"
    .end annotation
.end field

.field public markupAmount:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "MarkupAmount"
    .end annotation
.end field

.field public markupPercent:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "MarkupPercent"
    .end annotation
.end field

.field public note:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Note"
    .end annotation
.end field

.field public onRouteDate:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "OnRouteDate"
    .end annotation
.end field

.field public orderId:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "OrderId"
        onUniqueConflict = .enum Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;
        unique = true
    .end annotation
.end field

.field public parking:Lcom/txdriver/db/Parking;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Parking"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field

.field public transient paymentTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/db/PaymentType;",
            ">;"
        }
    .end annotation
.end field

.field public phoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "PhoneNumber"
    .end annotation
.end field

.field public price:D
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Price"
    .end annotation
.end field

.field public sellerName:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "SellerName"
    .end annotation
.end field

.field public source:Lcom/txdriver/db/Order$Source;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Source"
    .end annotation
.end field

.field public startPerformingDate:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "StartPerformingDate"
    .end annotation
.end field

.field public status:Lcom/txdriver/db/Order$Status;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Status"
    .end annotation
.end field

.field public tariff:Lcom/txdriver/db/Tariff;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Tariff"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field

.field public taximeterCalcMethod:Lcom/txdriver/taximeter/TaximeterCalcMethod;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "TaximeterUseCase"
    .end annotation
.end field

.field public time:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Time"
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public transfer:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Transfer"
    .end annotation
.end field

.field public type:Lcom/txdriver/db/OrderType;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Type"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field

.field public waitTime:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "WaitTime"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/txdriver/db/Order;->note:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/txdriver/db/Order$Status;->NEW:Lcom/txdriver/db/Order$Status;

    iput-object v0, p0, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/socket/data/OrderData;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/txdriver/db/Order;->note:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/txdriver/db/Order$Status;->NEW:Lcom/txdriver/db/Order$Status;

    iput-object v0, p0, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    .line 114
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getOrderId()I

    move-result v0

    iput v0, p0, Lcom/txdriver/db/Order;->orderId:I

    .line 115
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/db/Order;->address:Ljava/lang/String;

    .line 116
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/db/Order;->destinationAddress:Ljava/lang/String;

    .line 117
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getCarType()I

    move-result v0

    invoke-static {v0}, Lcom/txdriver/db/CarType;->getById(I)Lcom/txdriver/db/CarType;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/db/Order;->carType:Lcom/txdriver/db/CarType;

    .line 118
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getParkingId()I

    move-result v0

    invoke-static {v0}, Lcom/txdriver/db/Parking;->getByParkingId(I)Lcom/txdriver/db/Parking;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/db/Order;->parking:Lcom/txdriver/db/Parking;

    .line 119
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getDestinationParkingId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/txdriver/db/Parking;->getByParkingId(I)Lcom/txdriver/db/Parking;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/db/Order;->destinationParking:Lcom/txdriver/db/Parking;

    .line 120
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getPrice()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/db/Order;->price:D

    .line 121
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getLat()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/db/Order;->lat:D

    .line 122
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getLng()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/txdriver/db/Order;->lng:D

    .line 123
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getNote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/db/Order;->note:Ljava/lang/String;

    .line 124
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->isAcceptable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/txdriver/db/Order;->acceptable:Z

    .line 125
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getSellerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/db/Order;->sellerName:Ljava/lang/String;

    .line 126
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getSource()Lcom/txdriver/db/Order$Source;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/db/Order;->source:Lcom/txdriver/db/Order$Source;

    .line 127
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getDistance()I

    move-result v0

    iput v0, p0, Lcom/txdriver/db/Order;->distance:I

    .line 128
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getMarkupAmount()F

    move-result v0

    iput v0, p0, Lcom/txdriver/db/Order;->markupAmount:F

    .line 129
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getMarkupPercent()F

    move-result v0

    iput v0, p0, Lcom/txdriver/db/Order;->markupPercent:F

    .line 130
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getDiscountAmount()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/txdriver/db/Order;->discountSum:D

    .line 131
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getDiscountPercent()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/txdriver/db/Order;->discountPercent:D

    .line 132
    invoke-interface {p1}, Lcom/txdriver/socket/data/OrderData;->getTime()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/txdriver/db/Order;->time:F

    return-void
.end method

.method public static addressesQuery(J)Lcom/activeandroid/query/From;
    .locals 5

    .line 142
    new-instance v0, Lcom/activeandroid/query/Select;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Addresses.*"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lcom/activeandroid/query/Select;-><init>([Ljava/lang/String;)V

    const-class v2, Lcom/txdriver/db/Address;

    .line 143
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 144
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "OrderId = ? and (Addresses.Lat != 0 and Addresses.Lng != 0)"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    return-object p0
.end method

.method public static deleteAll()V
    .locals 2

    .line 233
    const-class v0, Lcom/txdriver/db/Order;

    new-instance v1, Lcom/activeandroid/query/Delete;

    invoke-direct {v1}, Lcom/activeandroid/query/Delete;-><init>()V

    .line 234
    invoke-virtual {v1, v0}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 236
    invoke-static {v0}, Lcom/txdriver/db/Order;->notifyChanged(Ljava/lang/Class;)V

    return-void
.end method

.method public static deleteBroadcastOrders()V
    .locals 3

    .line 200
    invoke-static {}, Lcom/txdriver/db/Order;->getBroadcastOrdersQuery()Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/db/Order;

    const/4 v2, 0x0

    .line 203
    invoke-virtual {v1, v2}, Lcom/txdriver/db/Order;->delete(Z)V

    goto :goto_0

    .line 206
    :cond_0
    const-class v0, Lcom/txdriver/db/Order;

    invoke-static {v0}, Lcom/txdriver/db/Order;->notifyChanged(Ljava/lang/Class;)V

    return-void
.end method

.method public static deleteCurrentOrder()V
    .locals 1

    .line 193
    invoke-static {}, Lcom/txdriver/db/Order;->getCurrentOrderQuery()Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/txdriver/db/Order;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/txdriver/db/Order;->delete()V

    :cond_0
    return-void
.end method

.method public static deleteOrder(I)V
    .locals 3

    .line 155
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Order;

    .line 156
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 157
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object p0, Lcom/txdriver/db/Order$Status;->NEW:Lcom/txdriver/db/Order$Status;

    const/4 v2, 0x1

    aput-object p0, v1, v2

    sget-object p0, Lcom/txdriver/db/Order$Status;->AUTO_ACCEPTING:Lcom/txdriver/db/Order$Status;

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "OrderId = ? and (Status = ? or Status = ?)"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 158
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 160
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/db/Order;

    .line 161
    invoke-virtual {v0}, Lcom/txdriver/db/Order;->delete()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static deleteReservedOrders()V
    .locals 3

    .line 216
    invoke-static {}, Lcom/txdriver/db/Order;->getReservedOrdersQuery()Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/db/Order;

    const/4 v2, 0x0

    .line 219
    invoke-virtual {v1, v2}, Lcom/txdriver/db/Order;->delete(Z)V

    goto :goto_0

    .line 222
    :cond_0
    const-class v0, Lcom/txdriver/db/Order;

    invoke-static {v0}, Lcom/txdriver/db/Order;->notifyChanged(Ljava/lang/Class;)V

    return-void
.end method

.method public static destinationsQuery(J)Lcom/activeandroid/query/From;
    .locals 5

    .line 136
    new-instance v0, Lcom/activeandroid/query/Select;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Addresses.*"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lcom/activeandroid/query/Select;-><init>([Ljava/lang/String;)V

    const-class v2, Lcom/txdriver/db/Address;

    .line 137
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 138
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v4

    sget-object p0, Lcom/txdriver/db/Address$Type;->TO:Lcom/txdriver/db/Address$Type;

    aput-object p0, v2, v1

    const-string p0, "OrderId = ? and Type = ?"

    invoke-virtual {v0, p0, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    return-object p0
.end method

.method public static get(J)Lcom/txdriver/db/Order;
    .locals 1

    .line 240
    const-class v0, Lcom/txdriver/db/Order;

    invoke-static {v0, p0, p1}, Lcom/txdriver/db/Order;->load(Ljava/lang/Class;J)Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/Order;

    return-object p0
.end method

.method public static getBroadcastOrdersQuery()Lcom/activeandroid/query/From;
    .locals 4

    .line 210
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Order;

    .line 211
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/txdriver/db/Order$Kind;->BROADCAST:Lcom/txdriver/db/Order$Kind;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Kind = ?"

    .line 212
    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "Date ASC"

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentOrder()Lcom/txdriver/db/Order;
    .locals 1

    .line 179
    invoke-static {}, Lcom/txdriver/db/Order;->getCurrentOrderQuery()Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/txdriver/db/Order;

    return-object v0
.end method

.method public static getCurrentOrderQuery()Lcom/activeandroid/query/From;
    .locals 4

    .line 183
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Order;

    .line 184
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/txdriver/db/Order$Status;->PERFORMING:Lcom/txdriver/db/Order$Status;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/txdriver/db/Order$Status;->ON_ROUTE:Lcom/txdriver/db/Order$Status;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/txdriver/db/Order$Status;->ARRIVED:Lcom/txdriver/db/Order$Status;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "Status = ? or Status = ? or Status = ?"

    .line 185
    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "Date ASC"

    .line 189
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    return-object v0
.end method

.method public static getOrderById(I)Lcom/txdriver/db/Order;
    .locals 3

    .line 148
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Order;

    .line 149
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 150
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "OrderId = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/Order;

    return-object p0
.end method

.method public static getOrdersByTabQuery(I)Lcom/activeandroid/query/From;
    .locals 5

    .line 244
    new-instance v0, Lcom/activeandroid/query/Select;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Orders.*"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lcom/activeandroid/query/Select;-><init>([Ljava/lang/String;)V

    const-class v2, Lcom/txdriver/db/Order;

    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v2, Lcom/txdriver/db/OrderType;

    .line 245
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v2, "Orders.Type = OrderTypes.Id"

    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v2, Lcom/txdriver/db/OrderTab;

    .line 246
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v2, "OrderTypes.OrderTab = OrderTabs.Id"

    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/txdriver/db/Order$Kind;->BROADCAST:Lcom/txdriver/db/Order$Kind;

    aput-object v3, v2, v4

    .line 247
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "Orders.Kind = ? and OrderTabs.TabId = ?"

    invoke-virtual {v0, p0, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    const-string v0, "Date ASC"

    .line 248
    invoke-virtual {p0, v0}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p0

    return-object p0
.end method

.method public static getReservedAndCurrentOrdersQuery()Lcom/activeandroid/query/From;
    .locals 4

    .line 167
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Order;

    .line 168
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/txdriver/db/Order$Kind;->RESERVED:Lcom/txdriver/db/Order$Kind;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/txdriver/db/Order$Status;->ACCEPTED:Lcom/txdriver/db/Order$Status;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/txdriver/db/Order$Status;->PERFORMING:Lcom/txdriver/db/Order$Status;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/txdriver/db/Order$Status;->ON_ROUTE:Lcom/txdriver/db/Order$Status;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/txdriver/db/Order$Status;->ARRIVED:Lcom/txdriver/db/Order$Status;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "(Kind = ? and Status = ?) or Status = ? or Status = ? or Status = ?"

    .line 169
    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "Date ASC"

    .line 175
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    return-object v0
.end method

.method public static getReservedOrdersQuery()Lcom/activeandroid/query/From;
    .locals 4

    .line 226
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Order;

    .line 227
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/txdriver/db/Order$Kind;->RESERVED:Lcom/txdriver/db/Order$Kind;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/txdriver/db/Order$Status;->ACCEPTED:Lcom/txdriver/db/Order$Status;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Kind = ? and Status = ?"

    .line 228
    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "Date ASC"

    .line 229
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destinations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Address;",
            ">;"
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lcom/txdriver/db/Order;->destinationsQuery()Lcom/activeandroid/query/From;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public destinationsQuery()Lcom/activeandroid/query/From;
    .locals 4

    .line 279
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Address;

    .line 280
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 281
    invoke-virtual {p0}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/txdriver/db/Address$Type;->TO:Lcom/txdriver/db/Address$Type;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "OrderId = ? and Type = ?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 259
    :cond_1
    check-cast p1, Lcom/txdriver/db/Order;

    .line 260
    iget v2, p0, Lcom/txdriver/db/Order;->orderId:I

    iget p1, p1, Lcom/txdriver/db/Order;->orderId:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAddress()Lcom/txdriver/db/Address;
    .locals 4

    .line 285
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Address;

    .line 286
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 287
    invoke-virtual {p0}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/txdriver/db/Address$Type;->FROM:Lcom/txdriver/db/Address$Type;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "OrderId = ? and Type = ?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/txdriver/db/Address;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    new-instance v0, Lcom/txdriver/db/Address;

    invoke-direct {v0}, Lcom/txdriver/db/Address;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getExtras()Ljava/lang/String;
    .locals 7

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    iget-object v1, p0, Lcom/txdriver/db/Order;->carExtras:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/txdriver/db/Order;->driverExtras:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/txdriver/db/Order;->carExtras:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, ", %s"

    if-nez v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/txdriver/db/Order;->carExtras:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 297
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/txdriver/db/CarExtra;

    iget-object v5, v5, Lcom/txdriver/db/CarExtra;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    new-array v5, v3, [Ljava/lang/Object;

    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/txdriver/db/CarExtra;

    iget-object v6, v6, Lcom/txdriver/db/CarExtra;->name:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/txdriver/db/Order;->driverExtras:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 303
    iget-object v1, p0, Lcom/txdriver/db/Order;->driverExtras:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 304
    iget-object v5, p0, Lcom/txdriver/db/Order;->carExtras:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 305
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/txdriver/db/DriverExtra;

    iget-object v5, v5, Lcom/txdriver/db/DriverExtra;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    new-array v5, v3, [Ljava/lang/Object;

    .line 308
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/txdriver/db/DriverExtra;

    iget-object v6, v6, Lcom/txdriver/db/DriverExtra;->name:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 312
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReminderTime()I
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/txdriver/db/OrderType;->orderReminderTime:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 265
    iget v0, p0, Lcom/txdriver/db/Order;->orderId:I

    mul-int/lit8 v0, v0, 0x1f

    .line 266
    iget-object v1, p0, Lcom/txdriver/db/Order;->address:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 267
    iget-object v1, p0, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 268
    iget-object v1, p0, Lcom/txdriver/db/Order;->type:Lcom/txdriver/db/OrderType;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 269
    iget-object v1, p0, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/txdriver/db/Order$Status;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public isNewState()Z
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    sget-object v1, Lcom/txdriver/db/Order$Status;->NEW:Lcom/txdriver/db/Order$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnRouteState()Z
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/txdriver/db/Order;->status:Lcom/txdriver/db/Order$Status;

    sget-object v1, Lcom/txdriver/db/Order$Status;->ON_ROUTE:Lcom/txdriver/db/Order$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReserved()Z
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/txdriver/db/Order;->kind:Lcom/txdriver/db/Order$Kind;

    sget-object v1, Lcom/txdriver/db/Order$Kind;->RESERVED:Lcom/txdriver/db/Order$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
