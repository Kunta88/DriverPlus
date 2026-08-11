.class public Lcom/txdriver/socket/handler/ExternalTariffHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "ExternalTariffHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/txdriver/socket/data/ExternalTariffData;",
        ">",
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/txdriver/App;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getOrder(Lcom/txdriver/socket/data/ExternalTariffData;)Lcom/txdriver/db/Order;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/txdriver/db/Order;"
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Lcom/txdriver/socket/data/ExternalTariffData;->getOrderId()I

    move-result p1

    invoke-static {p1}, Lcom/txdriver/db/Order;->getOrderById(I)Lcom/txdriver/db/Order;

    move-result-object p1

    return-object p1
.end method

.method public handle(Lcom/txdriver/socket/data/ExternalTariffData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/ExternalTariffHandler;->getOrder(Lcom/txdriver/socket/data/ExternalTariffData;)Lcom/txdriver/db/Order;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 23
    invoke-interface {p1}, Lcom/txdriver/socket/data/ExternalTariffData;->getTariffName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {p1}, Lcom/txdriver/socket/data/ExternalTariffData;->getTariffId()I

    move-result v1

    invoke-static {v1}, Lcom/txdriver/db/Tariff;->deleteById(I)V

    .line 27
    invoke-static {p1}, Lcom/txdriver/db/Tariff;->createTariff(Lcom/txdriver/socket/data/TariffData;)Lcom/txdriver/db/Tariff;

    move-result-object p1

    iput-object p1, v0, Lcom/txdriver/db/Order;->tariff:Lcom/txdriver/db/Tariff;

    .line 28
    invoke-virtual {v0}, Lcom/txdriver/db/Order;->save()V

    .line 29
    iget-object p1, p0, Lcom/txdriver/socket/handler/ExternalTariffHandler;->app:Lcom/txdriver/App;

    iget-object v1, p0, Lcom/txdriver/socket/handler/ExternalTariffHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object v1

    iget-object v2, v0, Lcom/txdriver/db/Order;->tariff:Lcom/txdriver/db/Tariff;

    invoke-static {p1, v1, v0, v2}, Lcom/txdriver/taximeter/TaximeterHelper;->startTaximeter(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;Lcom/txdriver/db/Tariff;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/txdriver/socket/data/ExternalTariffData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/ExternalTariffHandler;->handle(Lcom/txdriver/socket/data/ExternalTariffData;)V

    return-void
.end method
