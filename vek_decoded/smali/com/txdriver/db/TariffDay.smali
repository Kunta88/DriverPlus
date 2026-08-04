.class public Lcom/txdriver/db/TariffDay;
.super Lcom/activeandroid/Model;
.source "TariffDay.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "TariffDays"
.end annotation


# instance fields
.field public day:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Day"
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
    iput-object p1, p0, Lcom/txdriver/db/TariffDay;->tariff:Lcom/txdriver/db/Tariff;

    .line 22
    iput p2, p0, Lcom/txdriver/db/TariffDay;->day:I

    return-void
.end method

.method public static createDay(Lcom/txdriver/db/Tariff;I)Lcom/txdriver/db/TariffDay;
    .locals 1

    .line 26
    new-instance v0, Lcom/txdriver/db/TariffDay;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/db/TariffDay;-><init>(Lcom/txdriver/db/Tariff;I)V

    .line 27
    invoke-virtual {v0}, Lcom/txdriver/db/TariffDay;->save()V

    return-object v0
.end method
