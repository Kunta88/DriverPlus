.class public Lcom/txdriver/taximeter/state/TaximeterState;
.super Ljava/lang/Object;
.source "TaximeterState.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field public statementStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/txdriver/taximeter/state/StatementState;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field public status:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/taximeter/state/TaximeterState;->statementStates:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/taximeter/Taximeter;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/taximeter/state/TaximeterState;->statementStates:Ljava/util/List;

    .line 30
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getStatus()I

    move-result v0

    iput v0, p0, Lcom/txdriver/taximeter/state/TaximeterState;->status:I

    .line 31
    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->getStatements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/taximeter/Statement;

    .line 32
    iget-object v1, p0, Lcom/txdriver/taximeter/state/TaximeterState;->statementStates:Ljava/util/List;

    new-instance v2, Lcom/txdriver/taximeter/state/StatementState;

    invoke-direct {v2, v0}, Lcom/txdriver/taximeter/state/StatementState;-><init>(Lcom/txdriver/taximeter/Statement;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public initTaximeter(Lcom/txdriver/taximeter/Taximeter;)Lcom/txdriver/taximeter/Taximeter;
    .locals 8

    .line 47
    invoke-static {}, Lcom/txdriver/db/Order;->getCurrentOrder()Lcom/txdriver/db/Order;

    move-result-object v0

    .line 48
    iget v1, p0, Lcom/txdriver/taximeter/state/TaximeterState;->status:I

    invoke-virtual {p1, v1}, Lcom/txdriver/taximeter/Taximeter;->setStatus(I)V

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v2, p0, Lcom/txdriver/taximeter/state/TaximeterState;->statementStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/taximeter/state/StatementState;

    .line 54
    invoke-virtual {v3, v0}, Lcom/txdriver/taximeter/state/StatementState;->createStatement(Lcom/txdriver/db/Order;)Lcom/txdriver/taximeter/Statement;

    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lcom/txdriver/taximeter/Statement;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 57
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v3

    .line 60
    :cond_0
    invoke-virtual {v3}, Lcom/txdriver/taximeter/Statement;->getTariffZone()Lcom/txdriver/db/TariffZone;

    move-result-object v3

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p1, v1}, Lcom/txdriver/taximeter/Taximeter;->setStatements(Ljava/util/List;)V

    .line 63
    invoke-static {v3, v0}, Lcom/txdriver/taximeter/TaximeterCalcMethod;->adaptTariff(Lcom/txdriver/db/Tariff;Lcom/txdriver/db/Order;)Lcom/txdriver/db/Tariff;

    move-result-object v1

    .line 64
    invoke-static {v4, v0}, Lcom/txdriver/taximeter/TaximeterCalcMethod;->adaptTariffZone(Lcom/txdriver/db/TariffZone;Lcom/txdriver/db/Order;)Lcom/txdriver/db/TariffZone;

    move-result-object v0

    .line 65
    invoke-virtual {p1, v5}, Lcom/txdriver/taximeter/Taximeter;->setCurrentStatement(Lcom/txdriver/taximeter/Statement;)V

    .line 66
    invoke-virtual {p1, v1, v0}, Lcom/txdriver/taximeter/Taximeter;->setTariffAndZone(Lcom/txdriver/db/Tariff;Lcom/txdriver/db/TariffZone;)V

    return-object p1
.end method

.method public serialize()[B
    .locals 1

    .line 39
    :try_start_0
    new-instance v0, Lorg/msgpack/MessagePack;

    invoke-direct {v0}, Lorg/msgpack/MessagePack;-><init>()V

    invoke-virtual {v0, p0}, Lorg/msgpack/MessagePack;->write(Ljava/lang/Object;)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
