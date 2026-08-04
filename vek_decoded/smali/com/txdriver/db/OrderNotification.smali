.class public Lcom/txdriver/db/OrderNotification;
.super Lcom/activeandroid/Model;
.source "OrderNotification.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "OrderNotification"
.end annotation


# instance fields
.field public countNotifications:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "CountNotifications"
    .end annotation
.end field

.field public lastNotification:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "LastNotification"
    .end annotation
.end field

.field public orderId:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "OrderId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 36
    iput p1, p0, Lcom/txdriver/db/OrderNotification;->orderId:I

    .line 37
    iput p2, p0, Lcom/txdriver/db/OrderNotification;->countNotifications:I

    return-void
.end method

.method public static deleteAll()V
    .locals 2

    .line 48
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/txdriver/db/OrderNotification;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public static getById(I)Lcom/txdriver/db/OrderNotification;
    .locals 3

    .line 29
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/OrderNotification;

    .line 30
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "OrderId = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/OrderNotification;

    return-object p0
.end method

.method public static getLastNotification()Lcom/txdriver/db/OrderNotification;
    .locals 2

    .line 41
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/OrderNotification;

    .line 42
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "LastNotification DESC"

    .line 43
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/txdriver/db/OrderNotification;

    return-object v0
.end method
