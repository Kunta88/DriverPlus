.class public Lcom/txdriver/socket/handler/TransferHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "TransferHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/TransferData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 14
    const-class v0, Lcom/txdriver/socket/data/TransferData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/TransferData;)V
    .locals 3

    .line 19
    iget v0, p1, Lcom/txdriver/socket/data/TransferData;->transferId:I

    if-nez v0, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-static {p1}, Lcom/txdriver/db/Transfer;->createTransfer(Lcom/txdriver/socket/data/TransferData;)Lcom/txdriver/db/Transfer;

    move-result-object p1

    .line 23
    iget-object v0, p1, Lcom/txdriver/db/Transfer;->order:Lcom/txdriver/db/Order;

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/txdriver/socket/handler/TransferHandler;->app:Lcom/txdriver/App;

    iget-object v1, p0, Lcom/txdriver/socket/handler/TransferHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v1}, Lcom/txdriver/App;->getTaximeter()Lcom/txdriver/taximeter/Taximeter;

    move-result-object v1

    iget-object v2, p1, Lcom/txdriver/db/Transfer;->order:Lcom/txdriver/db/Order;

    iget-object p1, p1, Lcom/txdriver/db/Transfer;->order:Lcom/txdriver/db/Order;

    iget-object p1, p1, Lcom/txdriver/db/Order;->tariff:Lcom/txdriver/db/Tariff;

    invoke-static {v0, v1, v2, p1}, Lcom/txdriver/taximeter/TaximeterHelper;->startTaximeter(Lcom/txdriver/App;Lcom/txdriver/taximeter/Taximeter;Lcom/txdriver/db/Order;Lcom/txdriver/db/Tariff;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/txdriver/socket/data/TransferData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/TransferHandler;->handle(Lcom/txdriver/socket/data/TransferData;)V

    return-void
.end method
