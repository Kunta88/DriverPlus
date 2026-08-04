.class Lcom/txdriver/reminder/OrderReminder$OrderRemindCheckTask;
.super Ljava/util/TimerTask;
.source "OrderReminder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/reminder/OrderReminder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrderRemindCheckTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/reminder/OrderReminder;


# direct methods
.method private constructor <init>(Lcom/txdriver/reminder/OrderReminder;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/txdriver/reminder/OrderReminder$OrderRemindCheckTask;->this$0:Lcom/txdriver/reminder/OrderReminder;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/txdriver/reminder/OrderReminder;Lcom/txdriver/reminder/OrderReminder$1;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/txdriver/reminder/OrderReminder$OrderRemindCheckTask;-><init>(Lcom/txdriver/reminder/OrderReminder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/txdriver/reminder/OrderReminder$OrderRemindCheckTask;->this$0:Lcom/txdriver/reminder/OrderReminder;

    invoke-virtual {v0}, Lcom/txdriver/reminder/OrderReminder;->orderRemindCheck()V

    return-void
.end method
