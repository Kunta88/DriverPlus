.class public Lcom/txdriver/db/OrderDriverExtra;
.super Lcom/activeandroid/Model;
.source "OrderDriverExtra.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "OrderDriverExtras"
.end annotation


# instance fields
.field public extra:Lcom/txdriver/db/DriverExtra;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Extra"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field

.field public order:Lcom/txdriver/db/Order;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "OrderId"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/db/Order;I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/txdriver/db/OrderDriverExtra;->order:Lcom/txdriver/db/Order;

    .line 24
    invoke-static {p2}, Lcom/txdriver/db/DriverExtra;->getDriverExtra(I)Lcom/txdriver/db/DriverExtra;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/db/OrderDriverExtra;->extra:Lcom/txdriver/db/DriverExtra;

    return-void
.end method

.method public static createOrderExtra(Lcom/txdriver/db/Order;I)Lcom/txdriver/db/OrderDriverExtra;
    .locals 1

    .line 32
    new-instance v0, Lcom/txdriver/db/OrderDriverExtra;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/db/OrderDriverExtra;-><init>(Lcom/txdriver/db/Order;I)V

    .line 33
    invoke-virtual {v0}, Lcom/txdriver/db/OrderDriverExtra;->save()V

    return-object v0
.end method

.method public static delete(J)V
    .locals 2

    .line 49
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/txdriver/db/OrderDriverExtra;

    .line 50
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 51
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    const-string p0, "OrderId = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 52
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public static getExtras(J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/txdriver/db/OrderDriverExtra;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-static {p0, p1}, Lcom/txdriver/db/OrderDriverExtra;->getExtrasQuery(J)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getExtrasQuery(J)Lcom/activeandroid/query/From;
    .locals 2

    .line 43
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/OrderDriverExtra;

    .line 44
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 45
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    const-string p0, "OrderId = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    return-object p0
.end method
