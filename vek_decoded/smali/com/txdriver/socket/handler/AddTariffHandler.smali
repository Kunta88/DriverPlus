.class public Lcom/txdriver/socket/handler/AddTariffHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "AddTariffHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/TariffOrdersData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AddTariffHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 55
    const-class v0, Lcom/txdriver/socket/data/TariffOrdersData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method

.method private saveConfig(Lcom/txdriver/socket/data/TariffOrdersData;)V
    .locals 4

    .line 64
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->beginTransaction()V

    .line 66
    :try_start_0
    iget-object v0, p1, Lcom/txdriver/socket/data/TariffOrdersData;->tariff:Lcom/txdriver/socket/data/CommonTariffData;

    iget v0, v0, Lcom/txdriver/socket/data/CommonTariffData;->tariffId:I

    invoke-static {v0}, Lcom/txdriver/db/Tariff;->getTariff(I)Lcom/txdriver/db/Tariff;

    move-result-object v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p1, Lcom/txdriver/socket/data/TariffOrdersData;->tariff:Lcom/txdriver/socket/data/CommonTariffData;

    invoke-static {v0}, Lcom/txdriver/db/Tariff;->createTariff(Lcom/txdriver/socket/data/TariffData;)Lcom/txdriver/db/Tariff;

    move-result-object v0

    .line 68
    iget-object p1, p1, Lcom/txdriver/socket/data/TariffOrdersData;->orderTypes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/socket/data/OrderTypeData;

    .line 69
    iget-object v2, v1, Lcom/txdriver/socket/data/OrderTypeData;->tariffs:Ljava/util/List;

    iget v3, v0, Lcom/txdriver/db/Tariff;->tariffId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget v1, v1, Lcom/txdriver/socket/data/OrderTypeData;->id:I

    invoke-static {v1}, Lcom/txdriver/db/OrderType;->getOrderType(I)Lcom/txdriver/db/OrderType;

    move-result-object v1

    .line 73
    new-instance v2, Lcom/txdriver/db/TariffOrderType;

    invoke-direct {v2, v0, v1}, Lcom/txdriver/db/TariffOrderType;-><init>(Lcom/txdriver/db/Tariff;Lcom/txdriver/db/OrderType;)V

    invoke-virtual {v2}, Lcom/txdriver/db/TariffOrderType;->save()V

    goto :goto_0

    .line 76
    :cond_1
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 78
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :goto_1
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V

    return-void

    :goto_2
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V

    .line 81
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/TariffOrdersData;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/txdriver/socket/handler/AddTariffHandler;->saveConfig(Lcom/txdriver/socket/data/TariffOrdersData;)V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/txdriver/socket/data/TariffOrdersData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/AddTariffHandler;->handle(Lcom/txdriver/socket/data/TariffOrdersData;)V

    return-void
.end method
