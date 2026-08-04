.class public Lcom/txdriver/db/TariffCarExtra;
.super Lcom/activeandroid/Model;
.source "TariffCarExtra.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "TariffCarExtras"
.end annotation


# instance fields
.field public extra:Lcom/txdriver/db/CarExtra;
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

    .line 26
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/db/Tariff;Lcom/txdriver/socket/data/TariffExtraData;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/txdriver/db/TariffCarExtra;->tariff:Lcom/txdriver/db/Tariff;

    .line 31
    iget p1, p2, Lcom/txdriver/socket/data/TariffExtraData;->extraId:I

    invoke-static {p1}, Lcom/txdriver/db/CarExtra;->getCarExtra(I)Lcom/txdriver/db/CarExtra;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/db/TariffCarExtra;->extra:Lcom/txdriver/db/CarExtra;

    .line 32
    iget p1, p2, Lcom/txdriver/socket/data/TariffExtraData;->price:F

    iput p1, p0, Lcom/txdriver/db/TariffCarExtra;->price:F

    .line 33
    iget p1, p2, Lcom/txdriver/socket/data/TariffExtraData;->percent:F

    iput p1, p0, Lcom/txdriver/db/TariffCarExtra;->percent:F

    return-void
.end method

.method public static createTariffExtra(Lcom/txdriver/db/Tariff;Lcom/txdriver/socket/data/TariffExtraData;)Lcom/txdriver/db/TariffCarExtra;
    .locals 1

    .line 38
    new-instance v0, Lcom/txdriver/db/TariffCarExtra;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/db/TariffCarExtra;-><init>(Lcom/txdriver/db/Tariff;Lcom/txdriver/socket/data/TariffExtraData;)V

    .line 39
    invoke-virtual {v0}, Lcom/txdriver/db/TariffCarExtra;->save()V

    return-object v0
.end method

.method public static getTariffExtras(JJ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/txdriver/db/TariffCarExtra;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/activeandroid/query/Select;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "TariffCarExtras.*"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lcom/activeandroid/query/Select;-><init>([Ljava/lang/String;)V

    const-class v2, Lcom/txdriver/db/TariffCarExtra;

    .line 45
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v2, Lcom/txdriver/db/Tariff;

    .line 46
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v2, "TariffCarExtras.Tariff = Tariffs.Id"

    .line 47
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v2, Lcom/txdriver/db/OrderCarExtra;

    .line 48
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v2, "OrderCarExtras.Extra = TariffCarExtras.Extra"

    .line 49
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v2, Lcom/txdriver/db/Order;

    .line 50
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v2, "OrderCarExtras.OrderId = Orders.Id"

    .line 51
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 52
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "Tariffs.Id = ? AND Orders.Id = ?"

    invoke-virtual {v0, p0, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
