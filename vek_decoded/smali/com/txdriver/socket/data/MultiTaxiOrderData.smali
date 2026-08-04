.class public Lcom/txdriver/socket/data/MultiTaxiOrderData;
.super Ljava/lang/Object;
.source "MultiTaxiOrderData.java"

# interfaces
.implements Lcom/txdriver/socket/data/OrderData;


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public acceptable:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xc
    .end annotation
.end field

.field public address:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
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

.field public distance:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xd
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
        value = 0xb
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

.field public price:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xa
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/txdriver/socket/data/MultiTaxiOrderData;->carType:I

    .line 36
    iput v0, p0, Lcom/txdriver/socket/data/MultiTaxiOrderData;->parkingId:I

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/socket/data/MultiTaxiOrderData;->destinationParkingId:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/txdriver/socket/data/MultiTaxiOrderData;->acceptable:Z

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/txdriver/socket/data/MultiTaxiOrderData;->address:Ljava/lang/String;

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

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getCarType()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/txdriver/socket/data/MultiTaxiOrderData;->carType:I

    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/txdriver/socket/data/MultiTaxiOrderData;->date:Ljava/lang/String;

    invoke-static {v0}, Lcom/txdriver/utils/TimeUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/txdriver/socket/data/MultiTaxiOrderData;->destinationAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationParkingId()Ljava/lang/Integer;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/txdriver/socket/data/MultiTaxiOrderData;->destinationParkingId:Ljava/lang/Integer;

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

    .line 107
    iget v0, p0, Lcom/txdriver/socket/data/MultiTaxiOrderData;->distance:I

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

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getLat()D
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/txdriver/socket/data/MultiTaxiOrderData;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/txdriver/socket/data/MultiTaxiOrderData;->lng:D

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

    .line 93
    iget-object v0, p0, Lcom/txdriver/socket/data/MultiTaxiOrderData;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/txdriver/socket/data/MultiTaxiOrderData;->orderId:I

    return v0
.end method

.method public getOrderType()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/txdriver/socket/data/MultiTaxiOrderData;->orderType:I

    return v0
.end method

.method public getParkingId()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/txdriver/socket/data/MultiTaxiOrderData;->parkingId:I

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

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/txdriver/socket/data/MultiTaxiOrderData;->price:D

    return-wide v0
.end method

.method public getSellerName()Ljava/lang/String;
    .locals 1

    const-string v0, "MultiTaxi"

    return-object v0
.end method

.method public getSource()Lcom/txdriver/db/Order$Source;
    .locals 1

    .line 112
    sget-object v0, Lcom/txdriver/db/Order$Source;->MULTI_TAXI:Lcom/txdriver/db/Order$Source;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAcceptable()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/txdriver/socket/data/MultiTaxiOrderData;->acceptable:Z

    return v0
.end method
