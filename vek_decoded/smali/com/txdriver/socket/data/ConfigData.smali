.class public Lcom/txdriver/socket/data/ConfigData;
.super Ljava/lang/Object;
.source "ConfigData.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public allowTakeBreak:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x9
    .end annotation
.end field

.field public applyOrderTimeout:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x5
    .end annotation
.end field

.field public archiveEnabled:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x17
    .end annotation
.end field

.field public arrivedStateDistance:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xd
    .end annotation
.end field

.field public autoTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/CarTypeData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x8
    .end annotation
.end field

.field public carExtras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/ExtrasData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x14
    .end annotation
.end field

.field public currency:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x16
    .end annotation
.end field

.field public deliveryTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/DeliveryTimes;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1f
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public doneStateDistance:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xe
    .end annotation
.end field

.field public driverExtras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/ExtrasData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x13
    .end annotation
.end field

.field public driverPhotoControlActive:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x24
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public driverRegistrationActive:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x23
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public driverStore:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x20
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public driverStoreArchive:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x21
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public driversOnMap:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1d
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public finOperationsEnabled:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x19
    .end annotation
.end field

.field public hereMapsAPIkey:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x22
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public idleTimeout:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xc
    .end annotation
.end field

.field public illegitimateOrder:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1a
    .end annotation
.end field

.field public maxAllowedParks:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
    .end annotation
.end field

.field public messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/MessageData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field public orderTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/OrderTypeData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x11
    .end annotation
.end field

.field public parkings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/ParkingData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field public paymentTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/PaymentTypeData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x12
    .end annotation
.end field

.field public priceRound:F
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1b
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public priceRoundUp:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1c
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/QuestionData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field

.field public ratingEnabled:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x18
    .end annotation
.end field

.field public rejectReasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/RejectReasonData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x7
    .end annotation
.end field

.field public showParkings:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xb
    .end annotation
.end field

.field public tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/OrderTabData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x10
    .end annotation
.end field

.field public taximeterConfig:Lcom/txdriver/socket/data/TaximeterConfigData;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x15
    .end annotation
.end field

.field public taximeterEnabled:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xa
    .end annotation
.end field

.field public timezone:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x6
    .end annotation
.end field

.field public travelMinTime:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xf
    .end annotation
.end field

.field public version:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field public webApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/WebAppData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1e
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/txdriver/socket/data/ConfigData;->showParkings:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 69
    iput v1, p0, Lcom/txdriver/socket/data/ConfigData;->priceRound:F

    .line 72
    iput-boolean v0, p0, Lcom/txdriver/socket/data/ConfigData;->priceRoundUp:Z

    .line 75
    iput-boolean v0, p0, Lcom/txdriver/socket/data/ConfigData;->driversOnMap:Z

    return-void
.end method
