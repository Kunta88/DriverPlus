.class public Lcom/txdriver/socket/packet/EditOrderExtrasPacket;
.super Lcom/txdriver/socket/packet/ClientPacket;
.source "EditOrderExtrasPacket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/packet/ClientPacket<",
        "Lcom/txdriver/socket/packet/EditOrderExtrasPacket;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public carExtras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public driverExtras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Optional;
    .end annotation
.end field

.field public orderId:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/txdriver/socket/packet/ClientPacket;-><init>()V

    .line 22
    iput p1, p0, Lcom/txdriver/socket/packet/EditOrderExtrasPacket;->orderId:I

    .line 23
    iput-object p2, p0, Lcom/txdriver/socket/packet/EditOrderExtrasPacket;->carExtras:Ljava/util/ArrayList;

    .line 24
    iput-object p3, p0, Lcom/txdriver/socket/packet/EditOrderExtrasPacket;->driverExtras:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCode()B
    .locals 1

    const/16 v0, 0x4b

    return v0
.end method

.method public getData()Lcom/txdriver/socket/packet/EditOrderExtrasPacket;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/txdriver/socket/packet/EditOrderExtrasPacket;->getData()Lcom/txdriver/socket/packet/EditOrderExtrasPacket;

    move-result-object v0

    return-object v0
.end method
