.class Lcom/txdriver/socket/handler/ParkingUpdateHandler$1;
.super Ljava/lang/Object;
.source "ParkingUpdateHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/socket/handler/ParkingUpdateHandler;->updateQueues(Lcom/txdriver/socket/data/ParkingUpdateData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/socket/handler/ParkingUpdateHandler;

.field final synthetic val$parking:Lcom/txdriver/db/Parking;


# direct methods
.method constructor <init>(Lcom/txdriver/socket/handler/ParkingUpdateHandler;Lcom/txdriver/db/Parking;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/txdriver/socket/handler/ParkingUpdateHandler$1;->this$0:Lcom/txdriver/socket/handler/ParkingUpdateHandler;

    iput-object p2, p0, Lcom/txdriver/socket/handler/ParkingUpdateHandler$1;->val$parking:Lcom/txdriver/db/Parking;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 57
    iget-object v0, p0, Lcom/txdriver/socket/handler/ParkingUpdateHandler$1;->this$0:Lcom/txdriver/socket/handler/ParkingUpdateHandler;

    iget-object v0, v0, Lcom/txdriver/socket/handler/ParkingUpdateHandler;->app:Lcom/txdriver/App;

    iget-object v1, p0, Lcom/txdriver/socket/handler/ParkingUpdateHandler$1;->this$0:Lcom/txdriver/socket/handler/ParkingUpdateHandler;

    const v2, 0x7f1000de

    invoke-virtual {v1, v2}, Lcom/txdriver/socket/handler/ParkingUpdateHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/txdriver/socket/handler/ParkingUpdateHandler$1;->val$parking:Lcom/txdriver/db/Parking;

    iget-object v3, v3, Lcom/txdriver/db/Parking;->name:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
