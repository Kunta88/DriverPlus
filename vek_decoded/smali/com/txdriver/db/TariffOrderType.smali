.class public Lcom/txdriver/db/TariffOrderType;
.super Lcom/activeandroid/Model;
.source "TariffOrderType.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "TariffsOrderTypes"
.end annotation


# instance fields
.field public orderType:Lcom/txdriver/db/OrderType;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "OrderType"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
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

    .line 18
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/db/Tariff;Lcom/txdriver/db/OrderType;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/txdriver/db/TariffOrderType;->tariff:Lcom/txdriver/db/Tariff;

    .line 23
    iput-object p2, p0, Lcom/txdriver/db/TariffOrderType;->orderType:Lcom/txdriver/db/OrderType;

    return-void
.end method

.method public static deleteAll()V
    .locals 2

    .line 27
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/txdriver/db/TariffOrderType;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method
