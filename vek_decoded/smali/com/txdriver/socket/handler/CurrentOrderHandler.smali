.class public Lcom/txdriver/socket/handler/CurrentOrderHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "CurrentOrderHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/CurrentOrderData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CurrentOrderHandler"


# instance fields
.field order:Lcom/txdriver/db/Order;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 20
    const-class v0, Lcom/txdriver/socket/data/CurrentOrderData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/CurrentOrderData;)V
    .locals 2

    if-nez p1, :cond_0

    .line 26
    iget-object p1, p0, Lcom/txdriver/socket/handler/CurrentOrderHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/txdriver/preferences/Preferences;->setCurrentOrderId(J)V

    .line 27
    invoke-static {}, Lcom/txdriver/db/Order;->deleteCurrentOrder()V

    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/txdriver/socket/handler/CurrentOrderHandler;->app:Lcom/txdriver/App;

    invoke-static {v0, p1}, Lcom/txdriver/order/OrderManager;->createCurrentOrder(Lcom/txdriver/App;Lcom/txdriver/socket/data/CurrentOrderData;)Lcom/txdriver/db/Order;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/socket/handler/CurrentOrderHandler;->order:Lcom/txdriver/db/Order;

    .line 31
    iget-object p1, p0, Lcom/txdriver/socket/handler/CurrentOrderHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/taximeter/Taximeter;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/txdriver/socket/handler/CurrentOrderHandler;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/socket/handler/CurrentOrderHandler;->order:Lcom/txdriver/db/Order;

    invoke-static {p1, v0}, Lcom/txdriver/taximeter/TaximeterHelper;->isUseTaximeter(Lcom/txdriver/App;Lcom/txdriver/db/Order;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/txdriver/socket/handler/CurrentOrderHandler;->order:Lcom/txdriver/db/Order;

    invoke-static {p1}, Lcom/txdriver/order/OrderHelper;->maybeHasExternalTariff(Lcom/txdriver/db/Order;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/txdriver/socket/handler/CurrentOrderHandler;->app:Lcom/txdriver/App;

    iget-object v0, p0, Lcom/txdriver/socket/handler/CurrentOrderHandler;->order:Lcom/txdriver/db/Order;

    invoke-static {p1, v0}, Lcom/txdriver/taximeter/TaximeterHelper;->startTaximeter(Lcom/txdriver/App;Lcom/txdriver/db/Order;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/txdriver/socket/data/CurrentOrderData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/CurrentOrderHandler;->handle(Lcom/txdriver/socket/data/CurrentOrderData;)V

    return-void
.end method
