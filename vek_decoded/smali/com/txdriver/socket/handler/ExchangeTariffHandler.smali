.class public Lcom/txdriver/socket/handler/ExchangeTariffHandler;
.super Lcom/txdriver/socket/handler/ExternalTariffHandler;
.source "ExchangeTariffHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/ExternalTariffHandler<",
        "Lcom/txdriver/socket/data/ExchangerTariffData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 14
    const-class v0, Lcom/txdriver/socket/data/ExchangerTariffData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/ExternalTariffHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getOrder(Lcom/txdriver/socket/data/ExchangerTariffData;)Lcom/txdriver/db/Order;
    .locals 1

    .line 19
    invoke-super {p0, p1}, Lcom/txdriver/socket/handler/ExternalTariffHandler;->getOrder(Lcom/txdriver/socket/data/ExternalTariffData;)Lcom/txdriver/db/Order;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    iget p1, p1, Lcom/txdriver/socket/data/ExchangerTariffData;->calculationMethod:I

    invoke-static {p1}, Lcom/txdriver/taximeter/TaximeterCalcMethod;->get(I)Lcom/txdriver/taximeter/TaximeterCalcMethod;

    move-result-object p1

    iput-object p1, v0, Lcom/txdriver/db/Order;->taximeterCalcMethod:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getOrder(Lcom/txdriver/socket/data/ExternalTariffData;)Lcom/txdriver/db/Order;
    .locals 0

    .line 12
    check-cast p1, Lcom/txdriver/socket/data/ExchangerTariffData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/ExchangeTariffHandler;->getOrder(Lcom/txdriver/socket/data/ExchangerTariffData;)Lcom/txdriver/db/Order;

    move-result-object p1

    return-object p1
.end method
