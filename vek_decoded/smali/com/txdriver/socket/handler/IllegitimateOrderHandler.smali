.class public Lcom/txdriver/socket/handler/IllegitimateOrderHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "IllegitimateOrderHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/IllegitimateOrderData;",
        ">;"
    }
.end annotation


# static fields
.field private static final RESULT_OK:I = 0x1


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 24
    const-class v0, Lcom/txdriver/socket/data/IllegitimateOrderData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    .line 25
    new-instance v0, Lcom/txdriver/socket/handler/CurrentOrderHandler;

    invoke-direct {v0, p1}, Lcom/txdriver/socket/handler/CurrentOrderHandler;-><init>(Lcom/txdriver/App;)V

    return-void
.end method

.method private startOrderActivity(Lcom/txdriver/db/Order;)V
    .locals 1

    .line 48
    new-instance v0, Lcom/txdriver/socket/handler/IllegitimateOrderHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/socket/handler/IllegitimateOrderHandler$1;-><init>(Lcom/txdriver/socket/handler/IllegitimateOrderHandler;Lcom/txdriver/db/Order;)V

    invoke-virtual {p0, v0}, Lcom/txdriver/socket/handler/IllegitimateOrderHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/IllegitimateOrderData;)V
    .locals 4

    .line 30
    iget v0, p1, Lcom/txdriver/socket/data/IllegitimateOrderData;->result:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/txdriver/socket/handler/IllegitimateOrderHandler;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/socket/handler/IllegitimateOrderHandler;->app:Lcom/txdriver/App;

    const v1, 0x7f100029

    invoke-virtual {v0, v1}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/txdriver/socket/handler/IllegitimateOrderHandler;->app:Lcom/txdriver/App;

    iget-object v1, p1, Lcom/txdriver/socket/data/IllegitimateOrderData;->orderData:Lcom/txdriver/socket/data/CurrentOrderData;

    invoke-static {v0, v1}, Lcom/txdriver/order/OrderManager;->createCurrentOrder(Lcom/txdriver/App;Lcom/txdriver/socket/data/CurrentOrderData;)Lcom/txdriver/db/Order;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/txdriver/socket/handler/IllegitimateOrderHandler;->app:Lcom/txdriver/App;

    invoke-static {v1, v0}, Lcom/txdriver/taximeter/TaximeterHelper;->isUseTaximeter(Lcom/txdriver/App;Lcom/txdriver/db/Order;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    iget-object v1, p0, Lcom/txdriver/socket/handler/IllegitimateOrderHandler;->app:Lcom/txdriver/App;

    iget-object v2, p0, Lcom/txdriver/socket/handler/IllegitimateOrderHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object v2

    iget-object v3, v0, Lcom/txdriver/db/Order;->tariff:Lcom/txdriver/db/Tariff;

    invoke-static {v1, v2, v0, v3}, Lcom/txdriver/taximeter/TaximeterHelper;->startTaximeter(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;Lcom/txdriver/db/Tariff;)V

    .line 38
    iget-object v1, p0, Lcom/txdriver/socket/handler/IllegitimateOrderHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txdriver/taximeter/Taximeter;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 39
    iget v2, p1, Lcom/txdriver/socket/data/IllegitimateOrderData;->zoneId:I

    if-lez v2, :cond_1

    .line 40
    iget v1, v1, Lcom/txdriver/db/Tariff;->tariffId:I

    iget p1, p1, Lcom/txdriver/socket/data/IllegitimateOrderData;->zoneId:I

    invoke-static {v1, p1}, Lcom/txdriver/db/TariffZone;->getTariffZone(II)Lcom/txdriver/db/TariffZone;

    move-result-object p1

    .line 41
    iget-object v1, p0, Lcom/txdriver/socket/handler/IllegitimateOrderHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/txdriver/taximeter/TaximeterHelper;->setTariffZone(Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;Lcom/txdriver/db/TariffZone;)V

    .line 44
    :cond_1
    invoke-direct {p0, v0}, Lcom/txdriver/socket/handler/IllegitimateOrderHandler;->startOrderActivity(Lcom/txdriver/db/Order;)V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/txdriver/socket/data/IllegitimateOrderData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/IllegitimateOrderHandler;->handle(Lcom/txdriver/socket/data/IllegitimateOrderData;)V

    return-void
.end method
