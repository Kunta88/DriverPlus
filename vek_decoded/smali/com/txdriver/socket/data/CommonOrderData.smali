.class public Lcom/txdriver/socket/data/CommonOrderData;
.super Ljava/lang/Object;
.source "CommonOrderData.java"

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
        value = 0x13
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public discountAmount:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x14
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public discountPercent:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x15
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public distance:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xf
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
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

.field public markupAmount:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x11
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public markupPercent:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x12
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
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
        value = 0x10
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public price:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xa
    .end annotation
.end field

.field public time:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x16
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->carType:I

    .line 35
    iput v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->parkingId:I

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->destinationParkingId:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->acceptable:Z

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->address:Ljava/lang/String;

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

    .line 139
    iget-object v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->carExtras:Ljava/util/List;

    return-object v0
.end method

.method public getCarType()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->carType:I

    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->date:Ljava/lang/String;

    invoke-static {v0}, Lcom/txdriver/utils/TimeUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .locals 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    iget-object v1, p0, Lcom/txdriver/socket/data/CommonOrderData;->destinations:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/txdriver/socket/data/CommonOrderData;->destinations:Ljava/util/List;

    const-string v2, "\n"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/txdriver/socket/data/CommonOrderData;->destinationAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationParkingId()Ljava/lang/Integer;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->destinationParkingId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDiscountAmount()F
    .locals 1

    .line 194
    iget v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->discountAmount:F

    return v0
.end method

.method public getDiscountPercent()F
    .locals 1

    .line 189
    iget v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->discountPercent:F

    return v0
.end method

.method public getDistance()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->distance:I

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

    .line 134
    iget-object v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->driverExtras:Ljava/util/List;

    return-object v0
.end method

.method public getLat()D
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->lng:D

    return-wide v0
.end method

.method public getMarkupAmount()F
    .locals 1

    .line 184
    iget v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->markupAmount:F

    return v0
.end method

.method public getMarkupPercent()F
    .locals 1

    .line 179
    iget v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->markupPercent:F

    return v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->orderId:I

    return v0
.end method

.method public getOrderType()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->orderType:I

    return v0
.end method

.method public getParkingId()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->parkingId:I

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

    .line 174
    iget-object v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->paymentTypes:Ljava/util/List;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->price:D

    return-wide v0
.end method

.method public getSellerName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSource()Lcom/txdriver/db/Order$Source;
    .locals 1

    .line 169
    sget-object v0, Lcom/txdriver/db/Order$Source;->OWN:Lcom/txdriver/db/Order$Source;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->time:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    :goto_0
    return v0
.end method

.method public isAcceptable()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/txdriver/socket/data/CommonOrderData;->acceptable:Z

    return v0
.end method
