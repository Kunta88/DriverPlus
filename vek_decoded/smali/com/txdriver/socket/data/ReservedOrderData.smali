.class public Lcom/txdriver/socket/data/ReservedOrderData;
.super Ljava/lang/Object;
.source "ReservedOrderData.java"

# interfaces
.implements Lcom/txdriver/socket/data/OrderData;


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public address:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field public autoTypeId:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
    .end annotation
.end field

.field public date:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
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
        value = 0x5
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/txdriver/socket/data/ReservedOrderData;->autoTypeId:I

    .line 27
    iput v0, p0, Lcom/txdriver/socket/data/ReservedOrderData;->parkingId:I

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/txdriver/socket/data/ReservedOrderData;->address:Ljava/lang/String;

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

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getCarType()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/txdriver/socket/data/ReservedOrderData;->autoTypeId:I

    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/txdriver/socket/data/ReservedOrderData;->date:Ljava/lang/String;

    invoke-static {v0}, Lcom/txdriver/utils/TimeUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDestinationParkingId()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    const/4 v0, 0x0

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

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getLat()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    const-wide/16 v0, 0x0

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrderId()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/txdriver/socket/data/ReservedOrderData;->orderId:I

    return v0
.end method

.method public getOrderType()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/txdriver/socket/data/ReservedOrderData;->orderType:I

    return v0
.end method

.method public getParkingId()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/txdriver/socket/data/ReservedOrderData;->parkingId:I

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSellerName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSource()Lcom/txdriver/db/Order$Source;
    .locals 1

    .line 117
    sget-object v0, Lcom/txdriver/db/Order$Source;->OWN:Lcom/txdriver/db/Order$Source;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAcceptable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
