.class public Lcom/txdriver/db/Driver;
.super Lcom/activeandroid/Model;
.source "Driver.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "Drivers"
.end annotation


# instance fields
.field public active:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Active"
    .end annotation
.end field

.field public driverId:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "DriverId"
        onUniqueConflict = .enum Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;
        unique = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public static deleteAll()V
    .locals 2

    .line 23
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/txdriver/db/Driver;

    .line 24
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public static getOrCreate(I)Lcom/txdriver/db/Driver;
    .locals 5

    .line 54
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Driver;

    .line 55
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "DriverId = ?"

    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/txdriver/db/Driver;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/txdriver/db/Driver;

    invoke-direct {v0}, Lcom/txdriver/db/Driver;-><init>()V

    .line 60
    iput p0, v0, Lcom/txdriver/db/Driver;->driverId:I

    .line 61
    iput-boolean v1, v0, Lcom/txdriver/db/Driver;->active:Z

    .line 62
    invoke-virtual {v0, v4}, Lcom/txdriver/db/Driver;->save(Z)V

    :cond_0
    return-object v0
.end method

.method public static getParkingsQuery(I)Lcom/activeandroid/query/From;
    .locals 3

    .line 39
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/DriverParking;

    .line 40
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v1, Lcom/txdriver/db/Driver;

    .line 41
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v1, "DriversParkings.Driver = Drivers.Id"

    .line 42
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "DriverId = ?"

    .line 43
    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    return-object p0
.end method

.method public static isParked(I)Z
    .locals 4

    .line 29
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/DriverParking;

    .line 30
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v1, Lcom/txdriver/db/Driver;

    .line 31
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v1, "DriversParkings.Driver = Drivers.Id"

    .line 32
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "DriverId = ?"

    invoke-virtual {v0, p0, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 35
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static notifyChanged()V
    .locals 1

    .line 68
    const-class v0, Lcom/txdriver/db/Driver;

    invoke-static {v0}, Lcom/activeandroid/Model;->notifyChanged(Ljava/lang/Class;)V

    return-void
.end method

.method public static updateStatus(IZ)V
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/txdriver/db/Driver;->getOrCreate(I)Lcom/txdriver/db/Driver;

    move-result-object p0

    .line 49
    iput-boolean p1, p0, Lcom/txdriver/db/Driver;->active:Z

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Lcom/txdriver/db/Driver;->save(Z)V

    return-void
.end method
