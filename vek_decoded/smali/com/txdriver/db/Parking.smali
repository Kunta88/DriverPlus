.class public Lcom/txdriver/db/Parking;
.super Lcom/activeandroid/Model;
.source "Parking.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "Parkings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/db/Parking$Info;
    }
.end annotation


# instance fields
.field public name:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Name"
    .end annotation
.end field

.field public parkingId:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "ParkingId"
        onUniqueConflict = .enum Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;
        unique = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/socket/data/ParkingData;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 35
    iget v0, p1, Lcom/txdriver/socket/data/ParkingData;->parkingId:I

    iput v0, p0, Lcom/txdriver/db/Parking;->parkingId:I

    .line 36
    iget-object p1, p1, Lcom/txdriver/socket/data/ParkingData;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/txdriver/db/Parking;->name:Ljava/lang/String;

    return-void
.end method

.method public static deleteAll()V
    .locals 2

    .line 71
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/txdriver/db/Parking;

    .line 72
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public static getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Parking;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Parking;

    .line 59
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getById(J)Lcom/txdriver/db/Parking;
    .locals 2

    .line 64
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Parking;

    .line 65
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 66
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    const-string p0, "id = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/Parking;

    return-object p0
.end method

.method public static getByParkingId(I)Lcom/txdriver/db/Parking;
    .locals 3

    .line 40
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Parking;

    .line 41
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "ParkingId = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/Parking;

    return-object p0
.end method

.method public static getDriverParkingsQuery(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 5

    .line 77
    new-instance v0, Lcom/activeandroid/query/Select;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Parkings.*"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lcom/activeandroid/query/Select;-><init>([Ljava/lang/String;)V

    const-class v2, Lcom/txdriver/db/Parking;

    .line 78
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v2, Lcom/txdriver/db/DriverParking;

    .line 79
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v2, "DriversParkings.Parking = Parkings.Id"

    .line 80
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v2, Lcom/txdriver/db/Driver;

    .line 81
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v2, "Drivers.Id = DriversParkings.Driver"

    .line 82
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    const-string p0, "Drivers.DriverId = ?"

    .line 83
    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    return-object p0
.end method

.method private getLastPosition()I
    .locals 5

    .line 133
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/DriverParking;

    .line 134
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "Position DESC"

    .line 135
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 136
    invoke-virtual {p0}, Lcom/txdriver/db/Parking;->getId()Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Parking = ?"

    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/txdriver/db/DriverParking;

    if-eqz v0, :cond_0

    .line 138
    iget v0, v0, Lcom/txdriver/db/DriverParking;->position:I

    add-int/lit8 v4, v0, 0x1

    :cond_0
    return v4
.end method

.method public static getParkings(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/txdriver/db/Parking;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Parking;

    .line 48
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v1, Lcom/txdriver/db/DriverParking;

    .line 49
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v1, "DriversParkings.Parking = Parkings.id"

    .line 50
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v1, Lcom/txdriver/db/Driver;

    .line 51
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v1, "DriversParkings.Driver = Drivers.Id"

    .line 52
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 53
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "DriverId = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addDriver(I)I
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/txdriver/db/Parking;->getLastPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/txdriver/db/Parking;->addDriver(II)I

    move-result p1

    return p1
.end method

.method public addDriver(II)I
    .locals 5

    .line 120
    new-instance v0, Lcom/activeandroid/query/Update;

    const-class v1, Lcom/txdriver/db/DriverParking;

    invoke-direct {v0, v1}, Lcom/activeandroid/query/Update;-><init>(Ljava/lang/Class;)V

    const-string v1, "Position = Position + 1"

    .line 121
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Update;->set(Ljava/lang/String;)Lcom/activeandroid/query/Set;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 122
    invoke-virtual {p0}, Lcom/txdriver/db/Parking;->getId()Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Parking = ? and Position >= ?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/Set;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/Set;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/activeandroid/query/Set;->execute()V

    .line 124
    new-instance v0, Lcom/txdriver/db/DriverParking;

    invoke-direct {v0}, Lcom/txdriver/db/DriverParking;-><init>()V

    .line 125
    iput p2, v0, Lcom/txdriver/db/DriverParking;->position:I

    .line 126
    iput-object p0, v0, Lcom/txdriver/db/DriverParking;->parking:Lcom/txdriver/db/Parking;

    .line 127
    invoke-static {p1}, Lcom/txdriver/db/Driver;->getOrCreate(I)Lcom/txdriver/db/Driver;

    move-result-object p1

    iput-object p1, v0, Lcom/txdriver/db/DriverParking;->driver:Lcom/txdriver/db/Driver;

    .line 128
    invoke-virtual {v0, v3}, Lcom/txdriver/db/DriverParking;->save(Z)V

    return p2
.end method

.method public drivers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/txdriver/db/DriverParking;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/DriverParking;

    .line 88
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 89
    invoke-virtual {p0}, Lcom/txdriver/db/Parking;->getId()Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Parking = ?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "Position ASC"

    .line 90
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 107
    :cond_1
    invoke-super {p0, p1}, Lcom/activeandroid/Model;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 109
    :cond_2
    check-cast p1, Lcom/txdriver/db/Parking;

    .line 111
    iget v2, p0, Lcom/txdriver/db/Parking;->parkingId:I

    iget v3, p1, Lcom/txdriver/db/Parking;->parkingId:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/txdriver/db/Parking;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/txdriver/db/Parking;->name:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public getDriver(I)Lcom/txdriver/db/DriverParking;
    .locals 5

    .line 95
    new-instance v0, Lcom/activeandroid/query/Select;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "DriversParkings.*"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lcom/activeandroid/query/Select;-><init>([Ljava/lang/String;)V

    const-class v2, Lcom/txdriver/db/DriverParking;

    .line 96
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v2, Lcom/txdriver/db/Driver;

    .line 97
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v2, "DriversParkings.Driver = Drivers.Id"

    .line 98
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 99
    invoke-virtual {p0}, Lcom/txdriver/db/Parking;->getId()Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Parking = ? and DriverId = ?"

    invoke-virtual {v0, p1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/txdriver/db/DriverParking;

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 144
    iget v0, p0, Lcom/txdriver/db/Parking;->parkingId:I

    mul-int/lit8 v0, v0, 0x1f

    .line 145
    iget-object v1, p0, Lcom/txdriver/db/Parking;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
