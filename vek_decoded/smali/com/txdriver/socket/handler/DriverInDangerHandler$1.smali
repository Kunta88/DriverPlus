.class Lcom/txdriver/socket/handler/DriverInDangerHandler$1;
.super Ljava/lang/Object;
.source "DriverInDangerHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/socket/handler/DriverInDangerHandler;->sendBroadcast(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/socket/handler/DriverInDangerHandler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$driverId:I


# direct methods
.method constructor <init>(Lcom/txdriver/socket/handler/DriverInDangerHandler;ILandroid/content/Context;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/txdriver/socket/handler/DriverInDangerHandler$1;->this$0:Lcom/txdriver/socket/handler/DriverInDangerHandler;

    iput p2, p0, Lcom/txdriver/socket/handler/DriverInDangerHandler$1;->val$driverId:I

    iput-object p3, p0, Lcom/txdriver/socket/handler/DriverInDangerHandler$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_received_driver_status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    iget v1, p0, Lcom/txdriver/socket/handler/DriverInDangerHandler$1;->val$driverId:I

    const-string v2, "extra_driver_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    iget-object v1, p0, Lcom/txdriver/socket/handler/DriverInDangerHandler$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
