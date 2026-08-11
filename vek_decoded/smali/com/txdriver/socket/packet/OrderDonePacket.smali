.class public Lcom/txdriver/socket/packet/OrderDonePacket;
.super Lcom/txdriver/socket/packet/ClientPacket;
.source "OrderDonePacket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/packet/ClientPacket<",
        "Lcom/txdriver/socket/data/OrderDoneData;",
        ">;"
    }
.end annotation


# instance fields
.field private data:Lcom/txdriver/socket/data/OrderDoneData;


# direct methods
.method public constructor <init>(Lcom/txdriver/App;Lcom/txdriver/db/Order;Ljava/util/List;Lcom/txdriver/taximeter/Taximeter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/App;",
            "Lcom/txdriver/db/Order;",
            "Ljava/util/List<",
            "Lcom/txdriver/socket/data/PaymentData;",
            ">;",
            "Lcom/txdriver/taximeter/Taximeter;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/txdriver/socket/packet/ClientPacket;-><init>()V

    .line 20
    new-instance v0, Lcom/txdriver/socket/data/OrderDoneData;

    invoke-direct {v0}, Lcom/txdriver/socket/data/OrderDoneData;-><init>()V

    iput-object v0, p0, Lcom/txdriver/socket/packet/OrderDonePacket;->data:Lcom/txdriver/socket/data/OrderDoneData;

    .line 21
    iget v1, p2, Lcom/txdriver/db/Order;->orderId:I

    iput v1, v0, Lcom/txdriver/socket/data/OrderDoneData;->orderId:I

    .line 22
    iget-object v0, p0, Lcom/txdriver/socket/packet/OrderDonePacket;->data:Lcom/txdriver/socket/data/OrderDoneData;

    iput-object p3, v0, Lcom/txdriver/socket/data/OrderDoneData;->payments:Ljava/util/List;

    .line 23
    iget-object p3, p0, Lcom/txdriver/socket/packet/OrderDonePacket;->data:Lcom/txdriver/socket/data/OrderDoneData;

    invoke-static {p1, p4, p2}, Lcom/txdriver/taximeter/TaximeterHelper;->serializeTaximeter(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;)Lcom/txdriver/socket/data/TaximeterStateData;

    move-result-object p1

    iput-object p1, p3, Lcom/txdriver/socket/data/OrderDoneData;->taximeterState:Lcom/txdriver/socket/data/TaximeterStateData;

    return-void
.end method


# virtual methods
.method public getCode()B
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public getData()Lcom/txdriver/socket/data/OrderDoneData;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/txdriver/socket/packet/OrderDonePacket;->data:Lcom/txdriver/socket/data/OrderDoneData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/txdriver/socket/packet/OrderDonePacket;->getData()Lcom/txdriver/socket/data/OrderDoneData;

    move-result-object v0

    return-object v0
.end method
