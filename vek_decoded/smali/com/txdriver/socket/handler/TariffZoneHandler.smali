.class public Lcom/txdriver/socket/handler/TariffZoneHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "TariffZoneHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 14
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/Integer;)V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/txdriver/socket/handler/TariffZoneHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/taximeter/Taximeter;->getTariff()Lcom/txdriver/db/Tariff;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    iget v0, v0, Lcom/txdriver/db/Tariff;->tariffId:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/txdriver/db/TariffZone;->getTariffZone(II)Lcom/txdriver/db/TariffZone;

    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/txdriver/socket/handler/TariffZoneHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object v0

    invoke-static {}, Lcom/txdriver/db/Order;->getCurrentOrder()Lcom/txdriver/db/Order;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/txdriver/taximeter/TaximeterHelper;->setTariffZone(Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;Lcom/txdriver/db/TariffZone;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/TariffZoneHandler;->handle(Ljava/lang/Integer;)V

    return-void
.end method
