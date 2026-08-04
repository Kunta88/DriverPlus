.class public Lcom/txdriver/socket/handler/AcceptExternalOrderHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "AcceptExternalOrderHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/AcceptOrderData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 16
    const-class v0, Lcom/txdriver/socket/data/AcceptOrderData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/AcceptOrderData;)V
    .locals 2

    .line 21
    iget v0, p1, Lcom/txdriver/socket/data/AcceptOrderData;->result:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/txdriver/socket/handler/AcceptExternalOrderHandler;->app:Lcom/txdriver/App;

    const v1, 0x7f100174

    invoke-virtual {p0, v1}, Lcom/txdriver/socket/handler/AcceptExternalOrderHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/txdriver/socket/handler/AcceptExternalOrderHandler;->app:Lcom/txdriver/App;

    const v1, 0x7f10028a

    invoke-virtual {p0, v1}, Lcom/txdriver/socket/handler/AcceptExternalOrderHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    :goto_0
    iget p1, p1, Lcom/txdriver/socket/data/AcceptOrderData;->orderId:I

    invoke-static {p1}, Lcom/txdriver/db/Order;->getOrderById(I)Lcom/txdriver/db/Order;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 31
    invoke-virtual {p1}, Lcom/txdriver/db/Order;->delete()V

    .line 33
    :cond_2
    iget-object p1, p0, Lcom/txdriver/socket/handler/AcceptExternalOrderHandler;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getOrderAcceptManager()Lcom/txdriver/filter/OrderAcceptManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/filter/OrderAcceptManager;->accept()V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/txdriver/socket/data/AcceptOrderData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/AcceptExternalOrderHandler;->handle(Lcom/txdriver/socket/data/AcceptOrderData;)V

    return-void
.end method
