.class public Lcom/txdriver/db/DistancePrice;
.super Lcom/activeandroid/Model;
.source "DistancePrice.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "DistancePrices"
.end annotation


# instance fields
.field public fixedPrice:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "fixedPrice"
    .end annotation
.end field

.field public fromKm:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "fromKm"
    .end annotation
.end field

.field public pricePerKm:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "pricePerKm"
    .end annotation
.end field

.field public tariff:Lcom/txdriver/db/Tariff;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Tariff"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field

.field public toKm:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "toKm"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public static createDistancePrice(Lcom/txdriver/db/Tariff;Lcom/txdriver/socket/data/DistancePriceData;)Lcom/txdriver/db/DistancePrice;
    .locals 1

    .line 30
    new-instance v0, Lcom/txdriver/db/DistancePrice;

    invoke-direct {v0}, Lcom/txdriver/db/DistancePrice;-><init>()V

    .line 31
    iput-object p0, v0, Lcom/txdriver/db/DistancePrice;->tariff:Lcom/txdriver/db/Tariff;

    .line 32
    iget p0, p1, Lcom/txdriver/socket/data/DistancePriceData;->fixedPrice:F

    iput p0, v0, Lcom/txdriver/db/DistancePrice;->fixedPrice:F

    .line 33
    iget p0, p1, Lcom/txdriver/socket/data/DistancePriceData;->pricePerKm:F

    iput p0, v0, Lcom/txdriver/db/DistancePrice;->pricePerKm:F

    .line 34
    iget p0, p1, Lcom/txdriver/socket/data/DistancePriceData;->fromKm:F

    iput p0, v0, Lcom/txdriver/db/DistancePrice;->fromKm:F

    .line 35
    iget p0, p1, Lcom/txdriver/socket/data/DistancePriceData;->toKm:F

    iput p0, v0, Lcom/txdriver/db/DistancePrice;->toKm:F

    .line 36
    invoke-virtual {v0}, Lcom/txdriver/db/DistancePrice;->save()V

    return-object v0
.end method

.method public static getDistancePrice(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/txdriver/db/DistancePrice;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/DistancePrice;

    .line 42
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 43
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    const-string p0, "Tariff = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    const-string p1, "fromKm"

    .line 44
    invoke-virtual {p0, p1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    invoke-super {p0, p1}, Lcom/activeandroid/Model;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 54
    :cond_2
    check-cast p1, Lcom/txdriver/db/DistancePrice;

    .line 56
    iget v1, p1, Lcom/txdriver/db/DistancePrice;->pricePerKm:F

    iget v2, p0, Lcom/txdriver/db/DistancePrice;->pricePerKm:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 57
    :cond_3
    iget v1, p1, Lcom/txdriver/db/DistancePrice;->fromKm:F

    iget v2, p0, Lcom/txdriver/db/DistancePrice;->fromKm:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v0

    .line 58
    :cond_4
    iget v1, p1, Lcom/txdriver/db/DistancePrice;->toKm:F

    iget v2, p0, Lcom/txdriver/db/DistancePrice;->toKm:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v0

    .line 59
    :cond_5
    iget v1, p1, Lcom/txdriver/db/DistancePrice;->fixedPrice:F

    iget v2, p0, Lcom/txdriver/db/DistancePrice;->fixedPrice:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v0

    .line 60
    :cond_6
    iget-object v0, p0, Lcom/txdriver/db/DistancePrice;->tariff:Lcom/txdriver/db/Tariff;

    iget-object p1, p1, Lcom/txdriver/db/DistancePrice;->tariff:Lcom/txdriver/db/Tariff;

    invoke-virtual {v0, p1}, Lcom/txdriver/db/Tariff;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 65
    iget-object v0, p0, Lcom/txdriver/db/DistancePrice;->tariff:Lcom/txdriver/db/Tariff;

    invoke-virtual {v0}, Lcom/txdriver/db/Tariff;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 66
    iget v1, p0, Lcom/txdriver/db/DistancePrice;->pricePerKm:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget v1, p0, Lcom/txdriver/db/DistancePrice;->fromKm:F

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 68
    iget v1, p0, Lcom/txdriver/db/DistancePrice;->toKm:F

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_2

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget v1, p0, Lcom/txdriver/db/DistancePrice;->fixedPrice:F

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method
