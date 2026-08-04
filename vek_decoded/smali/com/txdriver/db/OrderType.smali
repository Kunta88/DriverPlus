.class public Lcom/txdriver/db/OrderType;
.super Lcom/activeandroid/Model;
.source "OrderType.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "OrderTypes"
.end annotation


# static fields
.field public static final CALL_TO_CLIENT_PBX:I = 0x1

.field public static final CALL_TO_CLIENT_PHONE:I = 0x2


# instance fields
.field public callToClient:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "CallToClient"
    .end annotation
.end field

.field public color:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Color"
    .end annotation
.end field

.field public driverCanCallToDispatcher:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "DriverCanCallToDispatcher"
    .end annotation
.end field

.field public driverCanCancel:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "DriverCanCancel"
    .end annotation
.end field

.field public driverCanEditOrderExtras:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "DriverCanEditOrderExtras"
    .end annotation
.end field

.field public driverCanReturn:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "DriverCanReturn"
    .end annotation
.end field

.field public driverCanSendInfoAboutClient:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "DriverCanSendInfoAboutClient"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Name"
    .end annotation
.end field

.field public orderReminderTime:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "OrderReminderTime"
    .end annotation
.end field

.field public orderTab:Lcom/txdriver/db/OrderTab;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "OrderTab"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field

.field public taximeter:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Taximeter"
    .end annotation
.end field

.field public taximeterWithPrice:Lcom/txdriver/taximeter/TaximeterCalcMethod;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "TaximeterWithPrice"
    .end annotation
.end field

.field public typeId:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "TypeId"
        onUniqueConflict = .enum Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;
        unique = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/txdriver/db/OrderType;->driverCanSendInfoAboutClient:Z

    .line 40
    iput-boolean v0, p0, Lcom/txdriver/db/OrderType;->driverCanCallToDispatcher:Z

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/txdriver/db/OrderType;->driverCanEditOrderExtras:I

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/socket/data/OrderTypeData;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/txdriver/db/OrderType;->driverCanSendInfoAboutClient:Z

    .line 40
    iput-boolean v0, p0, Lcom/txdriver/db/OrderType;->driverCanCallToDispatcher:Z

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/txdriver/db/OrderType;->driverCanEditOrderExtras:I

    .line 46
    iget v0, p1, Lcom/txdriver/socket/data/OrderTypeData;->id:I

    iput v0, p0, Lcom/txdriver/db/OrderType;->typeId:I

    .line 47
    iget-object v0, p1, Lcom/txdriver/socket/data/OrderTypeData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/txdriver/db/OrderType;->name:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/txdriver/socket/data/OrderTypeData;->color:Ljava/lang/String;

    iput-object v0, p0, Lcom/txdriver/db/OrderType;->color:Ljava/lang/String;

    .line 49
    iget v0, p1, Lcom/txdriver/socket/data/OrderTypeData;->orderTab:I

    invoke-static {v0}, Lcom/txdriver/db/OrderTab;->getTab(I)Lcom/txdriver/db/OrderTab;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/db/OrderType;->orderTab:Lcom/txdriver/db/OrderTab;

    .line 50
    iget v0, p1, Lcom/txdriver/socket/data/OrderTypeData;->callToClient:I

    iput v0, p0, Lcom/txdriver/db/OrderType;->callToClient:I

    .line 51
    iget v0, p1, Lcom/txdriver/socket/data/OrderTypeData;->orderReminderTime:I

    iput v0, p0, Lcom/txdriver/db/OrderType;->orderReminderTime:I

    .line 52
    iget-boolean v0, p1, Lcom/txdriver/socket/data/OrderTypeData;->taximeter:Z

    iput-boolean v0, p0, Lcom/txdriver/db/OrderType;->taximeter:Z

    .line 53
    iget v0, p1, Lcom/txdriver/socket/data/OrderTypeData;->taximeterWithPrice:I

    invoke-static {v0}, Lcom/txdriver/taximeter/TaximeterCalcMethod;->get(I)Lcom/txdriver/taximeter/TaximeterCalcMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/db/OrderType;->taximeterWithPrice:Lcom/txdriver/taximeter/TaximeterCalcMethod;

    .line 54
    iget-boolean v0, p1, Lcom/txdriver/socket/data/OrderTypeData;->driverCanCancel:Z

    iput-boolean v0, p0, Lcom/txdriver/db/OrderType;->driverCanCancel:Z

    .line 55
    iget-boolean v0, p1, Lcom/txdriver/socket/data/OrderTypeData;->driverCanReturn:Z

    iput-boolean v0, p0, Lcom/txdriver/db/OrderType;->driverCanReturn:Z

    .line 56
    iget-boolean v0, p1, Lcom/txdriver/socket/data/OrderTypeData;->driverCanSendInfoAboutClient:Z

    iput-boolean v0, p0, Lcom/txdriver/db/OrderType;->driverCanSendInfoAboutClient:Z

    .line 57
    iget-boolean v0, p1, Lcom/txdriver/socket/data/OrderTypeData;->driverCanCallToDispatcher:Z

    iput-boolean v0, p0, Lcom/txdriver/db/OrderType;->driverCanCallToDispatcher:Z

    .line 58
    iget p1, p1, Lcom/txdriver/socket/data/OrderTypeData;->driverCanEditOrderExtras:I

    iput p1, p0, Lcom/txdriver/db/OrderType;->driverCanEditOrderExtras:I

    return-void
.end method

.method public static deleteAll()V
    .locals 2

    .line 65
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/txdriver/db/OrderType;

    .line 66
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public static getOrderType(I)Lcom/txdriver/db/OrderType;
    .locals 3

    .line 71
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/txdriver/db/OrderType;

    .line 72
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 73
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "TypeId = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 74
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/txdriver/db/OrderType;

    return-object p0
.end method
