.class public Lcom/txdriver/ui/loader/OrdersLoader;
.super Lcom/activeandroid/ModelLoader;
.source "OrdersLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/activeandroid/ModelLoader<",
        "Lcom/txdriver/db/Order;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/activeandroid/ModelLoader;-><init>(Landroid/content/Context;Lcom/activeandroid/query/From;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/txdriver/ui/loader/OrdersLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Order;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-super {p0}, Lcom/activeandroid/ModelLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/db/Order;

    .line 26
    invoke-virtual {v2}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/txdriver/db/Order;->destinationsQuery(J)Lcom/activeandroid/query/From;

    move-result-object v3

    invoke-virtual {v3}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/txdriver/db/Order;->destinations:Ljava/util/List;

    .line 27
    invoke-virtual {v2}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/txdriver/db/CarExtra;->getCarExtras(J)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/txdriver/db/Order;->carExtras:Ljava/util/List;

    .line 28
    invoke-virtual {v2}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/txdriver/db/DriverExtra;->getDriverExtras(J)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/txdriver/db/Order;->driverExtras:Ljava/util/List;

    .line 29
    invoke-virtual {v2}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/txdriver/db/PaymentType;->getByOrder(J)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/txdriver/db/Order;->paymentTypes:Ljava/util/List;

    goto :goto_0

    :cond_0
    return-object v0
.end method
