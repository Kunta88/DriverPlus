.class public Lcom/txdriver/socket/packet/PushTaximeterStatePacket;
.super Lcom/txdriver/socket/packet/ClientPacket;
.source "PushTaximeterStatePacket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/packet/ClientPacket<",
        "Lcom/txdriver/socket/data/TaximeterData;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Lcom/txdriver/socket/data/TaximeterData;


# direct methods
.method public constructor <init>(Lcom/txdriver/App;Lcom/txdriver/db/Order;Lcom/txdriver/taximeter/Taximeter;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/txdriver/socket/packet/ClientPacket;-><init>()V

    .line 21
    invoke-static {p1, p3, p2}, Lcom/txdriver/taximeter/TaximeterHelper;->serializeTaximeter(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;)Lcom/txdriver/socket/data/TaximeterStateData;

    move-result-object p1

    .line 22
    new-instance p3, Lcom/txdriver/socket/data/TaximeterData;

    invoke-direct {p3}, Lcom/txdriver/socket/data/TaximeterData;-><init>()V

    iput-object p3, p0, Lcom/txdriver/socket/packet/PushTaximeterStatePacket;->data:Lcom/txdriver/socket/data/TaximeterData;

    .line 23
    iget p2, p2, Lcom/txdriver/db/Order;->orderId:I

    iput p2, p3, Lcom/txdriver/socket/data/TaximeterData;->orderId:I

    .line 24
    iget-wide v0, p1, Lcom/txdriver/socket/data/TaximeterStateData;->waitingMinutes:D

    double-to-int p2, v0

    iput p2, p3, Lcom/txdriver/socket/data/TaximeterData;->waitingMinutes:I

    .line 25
    iget-wide v0, p1, Lcom/txdriver/socket/data/TaximeterStateData;->price:D

    iput-wide v0, p3, Lcom/txdriver/socket/data/TaximeterData;->price:D

    .line 26
    iget-object p1, p1, Lcom/txdriver/socket/data/TaximeterStateData;->statements:Ljava/util/List;

    iput-object p1, p3, Lcom/txdriver/socket/data/TaximeterData;->statements:Ljava/util/List;

    .line 27
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-static {p1}, Lcom/txdriver/utils/TimeUtils;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/txdriver/socket/data/TaximeterData;->time:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()B
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public getData()Lcom/txdriver/socket/data/TaximeterData;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/txdriver/socket/packet/PushTaximeterStatePacket;->data:Lcom/txdriver/socket/data/TaximeterData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/txdriver/socket/packet/PushTaximeterStatePacket;->getData()Lcom/txdriver/socket/data/TaximeterData;

    move-result-object v0

    return-object v0
.end method
