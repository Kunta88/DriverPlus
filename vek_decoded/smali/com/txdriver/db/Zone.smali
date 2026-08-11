.class public Lcom/txdriver/db/Zone;
.super Lcom/activeandroid/Model;
.source "Zone.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "Zones"
.end annotation


# instance fields
.field private mPolygon:Lcom/sromku/polygon/Polygon;

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Name"
    .end annotation
.end field

.field public zoneId:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "ZoneId"
        onUniqueConflict = .enum Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;
        unique = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/socket/data/ZoneData;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 31
    iget v0, p1, Lcom/txdriver/socket/data/ZoneData;->id:I

    iput v0, p0, Lcom/txdriver/db/Zone;->zoneId:I

    .line 32
    iget-object p1, p1, Lcom/txdriver/socket/data/ZoneData;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/txdriver/db/Zone;->name:Ljava/lang/String;

    return-void
.end method

.method private buildPolygon()V
    .locals 7

    .line 60
    invoke-virtual {p0}, Lcom/txdriver/db/Zone;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/txdriver/db/ZoneCoordinate;->getCoordinates(J)Ljava/util/List;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/sromku/polygon/Polygon;->Builder()Lcom/sromku/polygon/Polygon$Builder;

    move-result-object v1

    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/txdriver/db/ZoneCoordinate;

    .line 63
    new-instance v3, Lcom/sromku/polygon/Point;

    iget-wide v4, v2, Lcom/txdriver/db/ZoneCoordinate;->lat:D

    double-to-float v4, v4

    iget-wide v5, v2, Lcom/txdriver/db/ZoneCoordinate;->lng:D

    double-to-float v2, v5

    invoke-direct {v3, v4, v2}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-virtual {v1, v3}, Lcom/sromku/polygon/Polygon$Builder;->addVertex(Lcom/sromku/polygon/Point;)Lcom/sromku/polygon/Polygon$Builder;

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v1}, Lcom/sromku/polygon/Polygon$Builder;->build()Lcom/sromku/polygon/Polygon;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/db/Zone;->mPolygon:Lcom/sromku/polygon/Polygon;

    return-void
.end method

.method public static createZone(Lcom/txdriver/socket/data/ZoneData;)Lcom/txdriver/db/Zone;
    .locals 1

    .line 36
    new-instance v0, Lcom/txdriver/db/Zone;

    invoke-direct {v0, p0}, Lcom/txdriver/db/Zone;-><init>(Lcom/txdriver/socket/data/ZoneData;)V

    .line 37
    invoke-virtual {v0}, Lcom/txdriver/db/Zone;->save()V

    return-object v0
.end method

.method public static deleteAll()V
    .locals 2

    .line 42
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/txdriver/db/Zone;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public static getById(I)Lcom/txdriver/db/Zone;
    .locals 3

    .line 46
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/Zone;

    .line 47
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 48
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "ZoneId = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 49
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/Zone;

    return-object p0
.end method


# virtual methods
.method public contains(DD)Z
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/txdriver/db/Zone;->mPolygon:Lcom/sromku/polygon/Polygon;

    if-nez v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/txdriver/db/Zone;->buildPolygon()V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/txdriver/db/Zone;->getPolygon()Lcom/sromku/polygon/Polygon;

    move-result-object v0

    new-instance v1, Lcom/sromku/polygon/Point;

    double-to-float p1, p1

    double-to-float p2, p3

    invoke-direct {v1, p1, p2}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/sromku/polygon/Polygon;->contains(Lcom/sromku/polygon/Point;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    invoke-super {p0, p1}, Lcom/activeandroid/Model;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 81
    :cond_2
    check-cast p1, Lcom/txdriver/db/Zone;

    .line 83
    iget v2, p0, Lcom/txdriver/db/Zone;->zoneId:I

    iget p1, p1, Lcom/txdriver/db/Zone;->zoneId:I

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getPolygon()Lcom/sromku/polygon/Polygon;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/txdriver/db/Zone;->mPolygon:Lcom/sromku/polygon/Polygon;

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/txdriver/db/Zone;->buildPolygon()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/txdriver/db/Zone;->mPolygon:Lcom/sromku/polygon/Polygon;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/txdriver/db/Zone;->zoneId:I

    return v0
.end method
