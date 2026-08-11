.class public Lcom/txdriver/db/OrderCarExtra;
.super Lcom/activeandroid/Model;
.source "OrderCarExtra.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "OrderCarExtras"
.end annotation


# instance fields
.field public extra:Lcom/txdriver/db/CarExtra;
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

    .line 18
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/db/Order;I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/txdriver/db/OrderCarExtra;->order:Lcom/txdriver/db/Order;

    .line 23
    invoke-static {p2}, Lcom/txdriver/db/CarExtra;->getCarExtra(I)Lcom/txdriver/db/CarExtra;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/db/OrderCarExtra;->extra:Lcom/txdriver/db/CarExtra;

    return-void
.end method

.method public static createOrderExtra(Lcom/txdriver/db/Order;I)Lcom/txdriver/db/OrderCarExtra;
    .locals 1

    .line 27
    new-instance v0, Lcom/txdriver/db/OrderCarExtra;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/db/OrderCarExtra;-><init>(Lcom/txdriver/db/Order;I)V

    .line 28
    invoke-virtual {v0}, Lcom/txdriver/db/OrderCarExtra;->save()V

    return-object v0
.end method

.method public static delete(J)V
    .locals 2

    .line 33
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/txdriver/db/OrderCarExtra;

    .line 34
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    const-string p0, "OrderId = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method
