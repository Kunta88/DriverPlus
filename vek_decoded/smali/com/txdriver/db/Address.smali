.class public Lcom/txdriver/db/Address;
.super Lcom/activeandroid/Model;
.source "Address.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "Addresses"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/db/Address$Type;
    }
.end annotation


# instance fields
.field public address:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Address"
    .end annotation
.end field

.field public lat:D
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Lat"
    .end annotation
.end field

.field public lng:D
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Lng"
    .end annotation
.end field

.field public order:Lcom/txdriver/db/Order;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "OrderId"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field

.field public type:Lcom/txdriver/db/Address$Type;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/socket/data/AddressData;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 33
    iget-object v0, p1, Lcom/txdriver/socket/data/AddressData;->address:Ljava/lang/String;

    iput-object v0, p0, Lcom/txdriver/db/Address;->address:Ljava/lang/String;

    .line 34
    iget-wide v0, p1, Lcom/txdriver/socket/data/AddressData;->lat:D

    iput-wide v0, p0, Lcom/txdriver/db/Address;->lat:D

    .line 35
    iget-wide v0, p1, Lcom/txdriver/socket/data/AddressData;->lng:D

    iput-wide v0, p0, Lcom/txdriver/db/Address;->lng:D

    return-void
.end method

.method public static getQuery(J)Lcom/activeandroid/query/From;
    .locals 2

    .line 39
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Address;

    .line 40
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 41
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    const-string p0, "OrderId = ? and (Lat != 0 and Lng != 0)"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 54
    :cond_1
    check-cast p1, Lcom/txdriver/db/Address;

    .line 56
    iget-wide v2, p1, Lcom/txdriver/db/Address;->lat:D

    iget-wide v4, p0, Lcom/txdriver/db/Address;->lat:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 57
    :cond_2
    iget-wide v2, p1, Lcom/txdriver/db/Address;->lng:D

    iget-wide v4, p0, Lcom/txdriver/db/Address;->lng:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 58
    :cond_3
    iget-object v2, p0, Lcom/txdriver/db/Address;->address:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/txdriver/db/Address;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/txdriver/db/Address;->address:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_0
    return v1

    .line 60
    :cond_5
    iget-object v2, p0, Lcom/txdriver/db/Address;->type:Lcom/txdriver/db/Address$Type;

    iget-object p1, p1, Lcom/txdriver/db/Address;->type:Lcom/txdriver/db/Address$Type;

    if-ne v2, p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 7

    .line 68
    iget-object v0, p0, Lcom/txdriver/db/Address;->address:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    iget-wide v2, p0, Lcom/txdriver/db/Address;->lat:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 71
    iget-wide v2, p0, Lcom/txdriver/db/Address;->lng:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 73
    iget-object v2, p0, Lcom/txdriver/db/Address;->type:Lcom/txdriver/db/Address$Type;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/txdriver/db/Address$Type;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/txdriver/db/Address;->address:Ljava/lang/String;

    return-object v0
.end method
