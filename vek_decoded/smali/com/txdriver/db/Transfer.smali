.class public Lcom/txdriver/db/Transfer;
.super Lcom/activeandroid/Model;
.source "Transfer.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "Transfers"
.end annotation


# instance fields
.field public distance:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Distance"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Name"
    .end annotation
.end field

.field public order:Lcom/txdriver/db/Order;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "OrderId"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
        onUniqueConflict = .enum Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;
        unique = true
    .end annotation
.end field

.field public price:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Price"
    .end annotation
.end field

.field public time:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Time"
    .end annotation
.end field

.field public transferId:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "TransferId"
    .end annotation
.end field

.field public waitTime:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "WaitTime"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public static createTransfer(Lcom/txdriver/socket/data/TransferData;)Lcom/txdriver/db/Transfer;
    .locals 2

    .line 31
    new-instance v0, Lcom/txdriver/db/Transfer;

    invoke-direct {v0}, Lcom/txdriver/db/Transfer;-><init>()V

    .line 32
    iget v1, p0, Lcom/txdriver/socket/data/TransferData;->orderId:I

    invoke-static {v1}, Lcom/txdriver/db/Order;->getOrderById(I)Lcom/txdriver/db/Order;

    move-result-object v1

    iput-object v1, v0, Lcom/txdriver/db/Transfer;->order:Lcom/txdriver/db/Order;

    .line 33
    iget v1, p0, Lcom/txdriver/socket/data/TransferData;->transferId:I

    iput v1, v0, Lcom/txdriver/db/Transfer;->transferId:I

    .line 34
    iget-object v1, p0, Lcom/txdriver/socket/data/TransferData;->transferName:Ljava/lang/String;

    iput-object v1, v0, Lcom/txdriver/db/Transfer;->name:Ljava/lang/String;

    .line 35
    iget v1, p0, Lcom/txdriver/socket/data/TransferData;->price:F

    iput v1, v0, Lcom/txdriver/db/Transfer;->price:F

    .line 36
    iget v1, p0, Lcom/txdriver/socket/data/TransferData;->distance:F

    iput v1, v0, Lcom/txdriver/db/Transfer;->distance:F

    .line 37
    iget v1, p0, Lcom/txdriver/socket/data/TransferData;->time:F

    iput v1, v0, Lcom/txdriver/db/Transfer;->time:F

    .line 38
    iget p0, p0, Lcom/txdriver/socket/data/TransferData;->waitTime:F

    iput p0, v0, Lcom/txdriver/db/Transfer;->waitTime:F

    .line 39
    invoke-virtual {v0}, Lcom/txdriver/db/Transfer;->save()V

    return-object v0
.end method

.method public static getByOrder(Lcom/txdriver/db/Order;)Lcom/txdriver/db/Transfer;
    .locals 5

    .line 44
    new-instance v0, Lcom/activeandroid/query/Select;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Transfers.*"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lcom/activeandroid/query/Select;-><init>([Ljava/lang/String;)V

    const-class v2, Lcom/txdriver/db/Transfer;

    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v2, Lcom/txdriver/db/Order;

    invoke-virtual {v0, v2}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v2, "Transfers.OrderId = Orders.Id"

    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget p0, p0, Lcom/txdriver/db/Order;->orderId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "Orders.OrderId = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/Transfer;

    return-object p0
.end method
