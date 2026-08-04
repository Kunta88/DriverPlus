.class public Lcom/txdriver/socket/data/ExchangeOrderData;
.super Ljava/lang/Object;
.source "ExchangeOrderData.java"

# interfaces
.implements Lcom/txdriver/socket/data/OrderData;


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public acceptable:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xe
    .end annotation
.end field

.field public address:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field public carExtras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xc
    .end annotation
.end field

.field public carType:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x6
    .end annotation
.end field

.field public date:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x5
    .end annotation
.end field

.field public destinationAddress:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x8
    .end annotation
.end field

.field public destinationParkingId:Ljava/lang/Integer;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x9
    .end annotation
.end field

.field public destinations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x12
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public distance:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x10
    .end annotation
.end field

.field public driverExtras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xb
    .end annotation
.end field

.field public lat:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field

.field public lng:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
    .end annotation
.end field

.field public note:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xd
    .end annotation
.end field

.field public orderId:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field public orderType:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field public parkingId:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x7
    .end annotation
.end field

.field public paymentTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x11
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public price:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xa
    .end annotation
.end field

.field public sellerName:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xf
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->carType:I

    .line 34
    iput v0, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->parkingId:I

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->destinationParkingId:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->acceptable:Z

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCarExtras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->carExtras:Ljava/util/List;

    return-object v0
.end method

.method public getCarType()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->carType:I

    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->date:Ljava/lang/String;

    invoke-static {v0}, Lcom/txdriver/utils/TimeUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .locals 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->destinations:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->destinations:Ljava/util/List;

    const-string v2, "\n"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->destinationAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationParkingId()Ljava/lang/Integer;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->destinationParkingId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDiscountAmount()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDiscountPercent()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDistance()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->distance:I

    return v0
.end method

.method public getDriverExtras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->driverExtras:Ljava/util/List;

    return-object v0
.end method

.method public getLat()D
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->lng:D

    return-wide v0
.end method

.method public getMarkupAmount()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMarkupPercent()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->orderId:I

    return v0
.end method

.method public getOrderType()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->orderType:I

    return v0
.end method

.method public getParkingId()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->parkingId:I

    return v0
.end method

.method public getPaymentTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->paymentTypes:Ljava/util/List;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->price:D

    return-wide v0
.end method

.method public getSellerName()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->sellerName:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Lcom/txdriver/db/Order$Source;
    .locals 1

    .line 141
    sget-object v0, Lcom/txdriver/db/Order$Source;->EXCHANGE:Lcom/txdriver/db/Order$Source;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAcceptable()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/txdriver/socket/data/ExchangeOrderData;->acceptable:Z

    return v0
.end method
