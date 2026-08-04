.class public Lcom/txdriver/db/PaymentType;
.super Lcom/activeandroid/Model;
.source "PaymentType.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "PaymentTypes"
.end annotation


# instance fields
.field public bankCard:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "BankCard"
    .end annotation
.end field

.field public bonus:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Bonuses"
    .end annotation
.end field

.field public choosable:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Choosable"
    .end annotation
.end field

.field public inputCheckNumber:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "InputCheckNumber"
    .end annotation
.end field

.field public maxPayment:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "MaxPayment"
    .end annotation
.end field

.field public maxPaymentPercent:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "MaxPaymentPercent"
    .end annotation
.end field

.field public minPayment:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "MinPayment"
    .end annotation
.end field

.field public minPaymentPercent:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "MinPaymentPercent"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Name"
    .end annotation
.end field

.field public typeId:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "TypeId"
        onUniqueConflict = .enum Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;
        unique = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/socket/data/PaymentTypeData;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 42
    iget v0, p1, Lcom/txdriver/socket/data/PaymentTypeData;->id:I

    iput v0, p0, Lcom/txdriver/db/PaymentType;->typeId:I

    .line 43
    iget-object v0, p1, Lcom/txdriver/socket/data/PaymentTypeData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/txdriver/db/PaymentType;->name:Ljava/lang/String;

    .line 44
    iget-boolean v0, p1, Lcom/txdriver/socket/data/PaymentTypeData;->choosable:Z

    iput-boolean v0, p0, Lcom/txdriver/db/PaymentType;->choosable:Z

    .line 45
    iget-boolean v0, p1, Lcom/txdriver/socket/data/PaymentTypeData;->inputCheckNumber:Z

    iput-boolean v0, p0, Lcom/txdriver/db/PaymentType;->inputCheckNumber:Z

    .line 46
    iget v0, p1, Lcom/txdriver/socket/data/PaymentTypeData;->minPayment:F

    iput v0, p0, Lcom/txdriver/db/PaymentType;->minPayment:F

    .line 47
    iget v0, p1, Lcom/txdriver/socket/data/PaymentTypeData;->maxPayment:F

    iput v0, p0, Lcom/txdriver/db/PaymentType;->maxPayment:F

    .line 48
    iget v0, p1, Lcom/txdriver/socket/data/PaymentTypeData;->minPaymentPercent:F

    iput v0, p0, Lcom/txdriver/db/PaymentType;->minPaymentPercent:F

    .line 49
    iget v0, p1, Lcom/txdriver/socket/data/PaymentTypeData;->maxPaymentPercent:F

    iput v0, p0, Lcom/txdriver/db/PaymentType;->maxPaymentPercent:F

    .line 50
    iget-boolean v0, p1, Lcom/txdriver/socket/data/PaymentTypeData;->bonus:Z

    iput-boolean v0, p0, Lcom/txdriver/db/PaymentType;->bonus:Z

    .line 51
    iget-boolean p1, p1, Lcom/txdriver/socket/data/PaymentTypeData;->bankCard:Z

    iput-boolean p1, p0, Lcom/txdriver/db/PaymentType;->bankCard:Z

    return-void
.end method

.method public static deleteAll()V
    .locals 2

    .line 65
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/txdriver/db/PaymentType;

    .line 66
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public static getByOrder(J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/txdriver/db/PaymentType;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-static {p0, p1}, Lcom/txdriver/db/PaymentType;->getByOrderQuery(J)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getByOrderQuery(J)Lcom/activeandroid/query/From;
    .locals 5

    .line 81
    new-instance v0, Lcom/activeandroid/query/Select;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "PaymentTypes.*"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lcom/activeandroid/query/Select;-><init>([Ljava/lang/String;)V

    const-class v2, Lcom/txdriver/db/PaymentType;

    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v2, Lcom/txdriver/db/OrderPaymentType;

    .line 82
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v2, "PaymentTypes.Id = OrdersPaymentTypes.PaymentType"

    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 83
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "OrdersPaymentTypes.OrderId = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    return-object p0
.end method

.method public static getByOrderTypeQuery(JZ)Lcom/activeandroid/query/From;
    .locals 5

    .line 71
    new-instance v0, Lcom/activeandroid/query/Select;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "PaymentTypes.*"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lcom/activeandroid/query/Select;-><init>([Ljava/lang/String;)V

    const-class v2, Lcom/txdriver/db/PaymentType;

    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v2, Lcom/txdriver/db/OrderTypePaymentType;

    .line 72
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v2, "PaymentTypes.Id = OrderTypesPaymentTypes.PaymentType"

    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 73
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "OrderTypesPaymentTypes.OrderType = ? and Choosable = ?"

    invoke-virtual {v0, p0, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    return-object p0
.end method

.method public static getPaymentType(I)Lcom/txdriver/db/PaymentType;
    .locals 3

    .line 58
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/PaymentType;

    .line 59
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "TypeId = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/PaymentType;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/txdriver/db/PaymentType;->name:Ljava/lang/String;

    return-object v0
.end method
