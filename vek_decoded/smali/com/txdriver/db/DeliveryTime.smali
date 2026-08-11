.class public Lcom/txdriver/db/DeliveryTime;
.super Lcom/activeandroid/Model;
.source "DeliveryTime.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "DeliveryTime"
.end annotation


# instance fields
.field public color:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Color"
    .end annotation
.end field

.field public time:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 31
    iput p1, p0, Lcom/txdriver/db/DeliveryTime;->time:I

    .line 32
    iput-object p2, p0, Lcom/txdriver/db/DeliveryTime;->color:Ljava/lang/String;

    return-void
.end method

.method public static deleteAll()V
    .locals 2

    .line 36
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/txdriver/db/DeliveryTime;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public static getById(J)Lcom/txdriver/db/DeliveryTime;
    .locals 2

    .line 24
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/DeliveryTime;

    .line 25
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    const-string p0, "id = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/DeliveryTime;

    return-object p0
.end method
