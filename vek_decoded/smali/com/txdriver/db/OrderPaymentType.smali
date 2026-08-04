.class public Lcom/txdriver/db/OrderPaymentType;
.super Lcom/activeandroid/Model;
.source "OrderPaymentType.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "OrdersPaymentTypes"
.end annotation


# instance fields
.field public order:Lcom/txdriver/db/Order;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "OrderId"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field

.field public paymentType:Lcom/txdriver/db/PaymentType;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "PaymentType"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/db/PaymentType;Lcom/txdriver/db/Order;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/txdriver/db/OrderPaymentType;->paymentType:Lcom/txdriver/db/PaymentType;

    .line 23
    iput-object p2, p0, Lcom/txdriver/db/OrderPaymentType;->order:Lcom/txdriver/db/Order;

    return-void
.end method

.method public static create(Lcom/txdriver/db/Order;Lcom/txdriver/db/PaymentType;)V
    .locals 1

    .line 35
    new-instance v0, Lcom/txdriver/db/OrderPaymentType;

    invoke-direct {v0, p1, p0}, Lcom/txdriver/db/OrderPaymentType;-><init>(Lcom/txdriver/db/PaymentType;Lcom/txdriver/db/Order;)V

    invoke-virtual {v0}, Lcom/txdriver/db/OrderPaymentType;->save()V

    return-void
.end method

.method public static delete(J)V
    .locals 2

    .line 28
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/txdriver/db/OrderPaymentType;

    .line 29
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    const-string p0, "OrderId = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method
