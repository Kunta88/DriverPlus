.class public Lcom/txdriver/db/TariffDriverExtra;
.super Lcom/activeandroid/Model;
.source "TariffDriverExtra.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "TariffDriverExtras"
.end annotation


# instance fields
.field public extra:Lcom/txdriver/db/DriverExtra;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Extra"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field

.field public percent:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Percent"
    .end annotation
.end field

.field public price:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Price"
    .end annotation
.end field

.field public tariff:Lcom/txdriver/db/Tariff;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Tariff"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/db/Tariff;Lcom/txdriver/socket/data/TariffExtraData;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/txdriver/db/TariffDriverExtra;->tariff:Lcom/txdriver/db/Tariff;

    .line 30
    iget p1, p2, Lcom/txdriver/socket/data/TariffExtraData;->extraId:I

    invoke-static {p1}, Lcom/txdriver/db/DriverExtra;->getDriverExtra(I)Lcom/txdriver/db/DriverExtra;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/db/TariffDriverExtra;->extra:Lcom/txdriver/db/DriverExtra;

    .line 31
    iget p1, p2, Lcom/txdriver/socket/data/TariffExtraData;->price:F

    iput p1, p0, Lcom/txdriver/db/TariffDriverExtra;->price:F

    .line 32
    iget p1, p2, Lcom/txdriver/socket/data/TariffExtraData;->percent:F

    iput p1, p0, Lcom/txdriver/db/TariffDriverExtra;->percent:F

    return-void
.end method

.method public static createTariffExtra(Lcom/txdriver/db/Tariff;Lcom/txdriver/socket/data/TariffExtraData;)Lcom/txdriver/db/TariffDriverExtra;
    .locals 1

    .line 37
    new-instance v0, Lcom/txdriver/db/TariffDriverExtra;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/db/TariffDriverExtra;-><init>(Lcom/txdriver/db/Tariff;Lcom/txdriver/socket/data/TariffExtraData;)V

    .line 38
    invoke-virtual {v0}, Lcom/txdriver/db/TariffDriverExtra;->save()V

    return-object v0
.end method

.method public static getTariffExtras(JJ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/txdriver/db/TariffDriverExtra;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/activeandroid/query/Select;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "TariffDriverExtras.*"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lcom/activeandroid/query/Select;-><init>([Ljava/lang/String;)V

    const-class v2, Lcom/txdriver/db/TariffDriverExtra;

    .line 44
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v2, Lcom/txdriver/db/Tariff;

    .line 45
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v2, "TariffDriverExtras.Tariff = Tariffs.Id"

    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v2, Lcom/txdriver/db/OrderDriverExtra;

    .line 46
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v2, "OrderDriverExtras.Extra = TariffDriverExtras.Extra"

    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v2, Lcom/txdriver/db/Order;

    .line 47
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v2, "OrderDriverExtras.OrderId = Orders.Id"

    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 48
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "Tariffs.Id = ? AND Orders.Id = ?"

    invoke-virtual {v0, p0, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 49
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
