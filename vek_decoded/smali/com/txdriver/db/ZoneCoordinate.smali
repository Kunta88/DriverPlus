.class public Lcom/txdriver/db/ZoneCoordinate;
.super Lcom/activeandroid/Model;
.source "ZoneCoordinate.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "ZoneCoordinates"
.end annotation


# instance fields
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

.field public zone:Lcom/txdriver/db/Zone;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Zone"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/db/Zone;Lcom/txdriver/socket/data/PointData;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/txdriver/db/ZoneCoordinate;->zone:Lcom/txdriver/db/Zone;

    .line 28
    iget-wide v0, p2, Lcom/txdriver/socket/data/PointData;->lat:D

    iput-wide v0, p0, Lcom/txdriver/db/ZoneCoordinate;->lat:D

    .line 29
    iget-wide p1, p2, Lcom/txdriver/socket/data/PointData;->lng:D

    iput-wide p1, p0, Lcom/txdriver/db/ZoneCoordinate;->lng:D

    return-void
.end method

.method public static createCoordinate(Lcom/txdriver/db/Zone;Lcom/txdriver/socket/data/PointData;)Lcom/txdriver/db/ZoneCoordinate;
    .locals 1

    .line 33
    new-instance v0, Lcom/txdriver/db/ZoneCoordinate;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/db/ZoneCoordinate;-><init>(Lcom/txdriver/db/Zone;Lcom/txdriver/socket/data/PointData;)V

    .line 34
    invoke-virtual {v0}, Lcom/txdriver/db/ZoneCoordinate;->save()V

    return-object v0
.end method

.method public static getCoordinates(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/txdriver/db/ZoneCoordinate;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/ZoneCoordinate;

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

    const-string p0, "Zone = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
