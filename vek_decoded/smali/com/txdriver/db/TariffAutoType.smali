.class public Lcom/txdriver/db/TariffAutoType;
.super Lcom/activeandroid/Model;
.source "TariffAutoType.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "TariffAutoTypes"
.end annotation


# instance fields
.field public carType:Lcom/txdriver/db/CarType;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "AutoType"
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

    .line 17
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/db/Tariff;I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/txdriver/db/TariffAutoType;->tariff:Lcom/txdriver/db/Tariff;

    .line 22
    invoke-static {p2}, Lcom/txdriver/db/CarType;->getById(I)Lcom/txdriver/db/CarType;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/db/TariffAutoType;->carType:Lcom/txdriver/db/CarType;

    return-void
.end method

.method public static createTariffAutoType(Lcom/txdriver/db/Tariff;I)Lcom/txdriver/db/TariffAutoType;
    .locals 1

    .line 26
    new-instance v0, Lcom/txdriver/db/TariffAutoType;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/db/TariffAutoType;-><init>(Lcom/txdriver/db/Tariff;I)V

    .line 27
    invoke-virtual {v0}, Lcom/txdriver/db/TariffAutoType;->save()V

    return-object v0
.end method
