.class public Lcom/txdriver/db/DriverParking;
.super Lcom/activeandroid/Model;
.source "DriverParking.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "DriversParkings"
.end annotation


# instance fields
.field public driver:Lcom/txdriver/db/Driver;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Driver"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field

.field public parking:Lcom/txdriver/db/Parking;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Parking"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field

.field public position:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Position"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public static deleteAll()V
    .locals 2

    .line 28
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/txdriver/db/DriverParking;

    .line 29
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public static deleteDriver(I)V
    .locals 5

    .line 38
    new-instance v0, Lcom/activeandroid/query/Select;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "DriversParkings.*"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lcom/activeandroid/query/Select;-><init>([Ljava/lang/String;)V

    const-class v2, Lcom/txdriver/db/DriverParking;

    .line 39
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v2, Lcom/txdriver/db/Driver;

    .line 40
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v2, "DriversParkings.Driver = Drivers.Id"

    .line 41
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "DriverId = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p0

    .line 44
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/db/DriverParking;

    .line 45
    invoke-static {v0}, Lcom/txdriver/db/DriverParking;->deleteDriver(Lcom/txdriver/db/DriverParking;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static deleteDriver(Lcom/txdriver/db/DriverParking;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 51
    new-instance v0, Lcom/activeandroid/query/Update;

    const-class v1, Lcom/txdriver/db/DriverParking;

    invoke-direct {v0, v1}, Lcom/activeandroid/query/Update;-><init>(Ljava/lang/Class;)V

    const-string v1, "Position = Position - 1"

    .line 52
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Update;->set(Ljava/lang/String;)Lcom/activeandroid/query/Set;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/txdriver/db/DriverParking;->parking:Lcom/txdriver/db/Parking;

    .line 53
    invoke-virtual {v3}, Lcom/txdriver/db/Parking;->getId()Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/txdriver/db/DriverParking;->position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Parking = ? and Position > ?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/Set;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/Set;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/activeandroid/query/Set;->execute()V

    .line 55
    invoke-virtual {p0}, Lcom/txdriver/db/DriverParking;->delete()V

    :cond_0
    return-void
.end method

.method public static getDriverPosition(IJ)I
    .locals 3

    .line 60
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/DriverParking;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v1, Lcom/txdriver/db/Driver;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v1, "DriversParkings.Driver = Drivers.Id"

    .line 61
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "DriverId = ? and DriversParkings.Parking = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/DriverParking;

    if-eqz p0, :cond_0

    .line 64
    iget p0, p0, Lcom/txdriver/db/DriverParking;->position:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getParksCountQuery()Lcom/activeandroid/query/From;
    .locals 2

    .line 34
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/DriverParking;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "Driver"

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->groupBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    return-object v0
.end method

.method public static notifyChanged()V
    .locals 1

    .line 71
    const-class v0, Lcom/txdriver/db/DriverParking;

    invoke-static {v0}, Lcom/activeandroid/Model;->notifyChanged(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    invoke-super {p0, p1}, Lcom/activeandroid/Model;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 80
    :cond_2
    check-cast p1, Lcom/txdriver/db/DriverParking;

    .line 82
    iget v2, p0, Lcom/txdriver/db/DriverParking;->position:I

    iget v3, p1, Lcom/txdriver/db/DriverParking;->position:I

    if-eq v2, v3, :cond_3

    return v1

    .line 83
    :cond_3
    iget-object v2, p0, Lcom/txdriver/db/DriverParking;->driver:Lcom/txdriver/db/Driver;

    iget-object v3, p1, Lcom/txdriver/db/DriverParking;->driver:Lcom/txdriver/db/Driver;

    invoke-virtual {v2, v3}, Lcom/txdriver/db/Driver;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 84
    :cond_4
    iget-object v2, p0, Lcom/txdriver/db/DriverParking;->parking:Lcom/txdriver/db/Parking;

    iget-object p1, p1, Lcom/txdriver/db/DriverParking;->parking:Lcom/txdriver/db/Parking;

    invoke-virtual {v2, p1}, Lcom/txdriver/db/Parking;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/txdriver/db/DriverParking;->driver:Lcom/txdriver/db/Driver;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 92
    iget-object v1, p0, Lcom/txdriver/db/DriverParking;->parking:Lcom/txdriver/db/Parking;

    invoke-virtual {v1}, Lcom/txdriver/db/Parking;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 93
    iget v1, p0, Lcom/txdriver/db/DriverParking;->position:I

    add-int/2addr v0, v1

    return v0
.end method
