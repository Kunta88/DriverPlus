.class public Lcom/txdriver/socket/handler/PullTaximeterStateHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "PullTaximeterStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/TaximeterData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 20
    const-class v0, Lcom/txdriver/socket/data/TaximeterData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/TaximeterData;)V
    .locals 13

    .line 25
    iget-object v0, p1, Lcom/txdriver/socket/data/TaximeterData;->statements:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/txdriver/socket/data/TaximeterData;->statements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 28
    :cond_0
    iget v0, p1, Lcom/txdriver/socket/data/TaximeterData;->orderId:I

    invoke-static {v0}, Lcom/txdriver/db/Order;->getOrderById(I)Lcom/txdriver/db/Order;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 30
    iget v2, p1, Lcom/txdriver/socket/data/TaximeterData;->waitingMinutes:I

    iput v2, v0, Lcom/txdriver/db/Order;->waitTime:I

    .line 31
    invoke-virtual {v0, v1}, Lcom/txdriver/db/Order;->save(Z)V

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/txdriver/socket/handler/PullTaximeterStateHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object v0

    .line 34
    new-instance v2, Lcom/txdriver/taximeter/state/TaximeterState;

    invoke-direct {v2}, Lcom/txdriver/taximeter/state/TaximeterState;-><init>()V

    .line 35
    invoke-virtual {v0}, Lcom/txdriver/taximeter/Taximeter;->getStatus()I

    move-result v3

    iput v3, v2, Lcom/txdriver/taximeter/state/TaximeterState;->status:I

    .line 36
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iget-object p1, p1, Lcom/txdriver/socket/data/TaximeterData;->statements:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v4, 0x0

    move-wide v7, v4

    move-wide v5, v7

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/txdriver/socket/data/TaximeterStatementData;

    .line 42
    new-instance v10, Lcom/txdriver/taximeter/state/StatementState;

    invoke-direct {v10}, Lcom/txdriver/taximeter/state/StatementState;-><init>()V

    .line 43
    iget v11, v9, Lcom/txdriver/socket/data/TaximeterStatementData;->distance:I

    int-to-double v11, v11

    iput-wide v11, v10, Lcom/txdriver/taximeter/state/StatementState;->distance:D

    .line 44
    iget v11, v9, Lcom/txdriver/socket/data/TaximeterStatementData;->paidDistance:I

    int-to-double v11, v11

    iput-wide v11, v10, Lcom/txdriver/taximeter/state/StatementState;->paidDistance:D

    .line 45
    iget v11, v9, Lcom/txdriver/socket/data/TaximeterStatementData;->time:I

    iput v11, v10, Lcom/txdriver/taximeter/state/StatementState;->time:I

    .line 46
    iget v11, v9, Lcom/txdriver/socket/data/TaximeterStatementData;->paidTime:I

    iput v11, v10, Lcom/txdriver/taximeter/state/StatementState;->paidTime:I

    .line 47
    iget v11, v9, Lcom/txdriver/socket/data/TaximeterStatementData;->tariff:I

    iput v11, v10, Lcom/txdriver/taximeter/state/StatementState;->tariff:I

    .line 48
    iget v9, v9, Lcom/txdriver/socket/data/TaximeterStatementData;->tariffZone:I

    iput v9, v10, Lcom/txdriver/taximeter/state/StatementState;->zone:I

    .line 49
    iput-wide v5, v10, Lcom/txdriver/taximeter/state/StatementState;->previousDistance:D

    .line 50
    iput-wide v7, v10, Lcom/txdriver/taximeter/state/StatementState;->previousPaidDistance:D

    int-to-double v5, v1

    .line 51
    iput-wide v5, v10, Lcom/txdriver/taximeter/state/StatementState;->previousTime:D

    int-to-double v4, v4

    .line 52
    iput-wide v4, v10, Lcom/txdriver/taximeter/state/StatementState;->previousPaidTime:D

    .line 53
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-wide v5, v10, Lcom/txdriver/taximeter/state/StatementState;->distance:D

    .line 55
    iget-wide v7, v10, Lcom/txdriver/taximeter/state/StatementState;->paidDistance:D

    .line 56
    iget v1, v10, Lcom/txdriver/taximeter/state/StatementState;->time:I

    .line 57
    iget v4, v10, Lcom/txdriver/taximeter/state/StatementState;->paidTime:I

    goto :goto_0

    .line 59
    :cond_2
    iput-object v3, v2, Lcom/txdriver/taximeter/state/TaximeterState;->statementStates:Ljava/util/List;

    .line 60
    invoke-virtual {v2, v0}, Lcom/txdriver/taximeter/state/TaximeterState;->initTaximeter(Lcom/txdriver/taximeter/Taximeter;)Lcom/txdriver/taximeter/Taximeter;

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/txdriver/socket/data/TaximeterData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/PullTaximeterStateHandler;->handle(Lcom/txdriver/socket/data/TaximeterData;)V

    return-void
.end method
