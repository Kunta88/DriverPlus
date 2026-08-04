.class Lcom/txdriver/reminder/BroadcastNotificationRunner$1;
.super Ljava/lang/Object;
.source "BroadcastNotificationRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/reminder/BroadcastNotificationRunner;->showToast(Lcom/txdriver/db/Order;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/reminder/BroadcastNotificationRunner;

.field final synthetic val$notificationText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/txdriver/reminder/BroadcastNotificationRunner;Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/txdriver/reminder/BroadcastNotificationRunner$1;->this$0:Lcom/txdriver/reminder/BroadcastNotificationRunner;

    iput-object p2, p0, Lcom/txdriver/reminder/BroadcastNotificationRunner$1;->val$notificationText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/txdriver/reminder/BroadcastNotificationRunner$1;->this$0:Lcom/txdriver/reminder/BroadcastNotificationRunner;

    invoke-static {v0}, Lcom/txdriver/reminder/BroadcastNotificationRunner;->access$000(Lcom/txdriver/reminder/BroadcastNotificationRunner;)Lcom/txdriver/App;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/reminder/BroadcastNotificationRunner$1;->val$notificationText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
