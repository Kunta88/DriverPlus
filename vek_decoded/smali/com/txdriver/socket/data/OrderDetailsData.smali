.class public Lcom/txdriver/socket/data/OrderDetailsData;
.super Ljava/lang/Object;
.source "OrderDetailsData.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public addressFrom:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field public bankCardPaymentAmount:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x19
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public bankCardPaymentState:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x18
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public bonusesPaymentAmount:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1a
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
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
        value = 0xd
    .end annotation
.end field

.field public client:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field public clientBonusBalance:Ljava/lang/Double;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x13
    .end annotation
.end field

.field public date:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x9
    .end annotation
.end field

.field public destinationAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/AddressData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x6
    .end annotation
.end field

.field public discountPercent:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xf
    .end annotation
.end field

.field public discountSum:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xe
    .end annotation
.end field

.field public distance:Ljava/lang/Integer;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x12
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
        value = 0xc
    .end annotation
.end field

.field public latFrom:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
    .end annotation
.end field

.field public lngFrom:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x5
    .end annotation
.end field

.field public markupAmount:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x16
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public markupPercent:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x17
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public note:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x8
    .end annotation
.end field

.field public orderId:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field public orderType:Ljava/lang/Integer;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x11
    .end annotation
.end field

.field public parkingFrom:Ljava/lang/Integer;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
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
        value = 0x14
    .end annotation
.end field

.field public phoneNumber:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x10
    .end annotation
.end field

.field public price:D
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x7
    .end annotation
.end field

.field public source:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xa
    .end annotation
.end field

.field public tariff:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xb
    .end annotation
.end field

.field public transfer:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x15
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/txdriver/socket/data/OrderDetailsData;->tariff:I

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/txdriver/socket/data/OrderDetailsData;->date:Ljava/lang/String;

    invoke-static {v0}, Lcom/txdriver/utils/TimeUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
