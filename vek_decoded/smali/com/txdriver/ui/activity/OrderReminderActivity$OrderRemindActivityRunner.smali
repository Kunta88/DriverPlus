.class public Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;
.super Ljava/lang/Object;
.source "OrderReminderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/activity/OrderReminderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrderRemindActivityRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OrderRemindActivityRunner"


# instance fields
.field private app:Lcom/txdriver/App;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private order:Lcom/txdriver/db/Order;

.field private final soundManager:Lcom/txdriver/notification/SoundManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;Lcom/txdriver/db/Order;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->app:Lcom/txdriver/App;

    .line 152
    iput-object p2, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->order:Lcom/txdriver/db/Order;

    const-string p2, "notification"

    .line 153
    invoke-virtual {p1, p2}, Lcom/txdriver/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    .line 154
    invoke-virtual {p1}, Lcom/txdriver/App;->getSoundManager()Lcom/txdriver/notification/SoundManager;

    move-result-object p2

    iput-object p2, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->soundManager:Lcom/txdriver/notification/SoundManager;

    .line 155
    invoke-virtual {p1}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private showNotification(Lcom/txdriver/db/Order;)V
    .locals 5

    .line 173
    iget-object v0, p1, Lcom/txdriver/db/Order;->address:Ljava/lang/String;

    .line 174
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->app:Lcom/txdriver/App;

    const-class v3, Lcom/txdriver/ui/activity/OrderReminderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    invoke-virtual {p1}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object v2

    const-string v3, "id_extra"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const v2, 0x10008000

    .line 176
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 177
    iget-object v2, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->app:Lcom/txdriver/App;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 178
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->app:Lcom/txdriver/App;

    invoke-direct {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08009b

    .line 179
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->app:Lcom/txdriver/App;

    const v4, 0x7f1001fb

    .line 180
    invoke-virtual {v3, v4}, Lcom/txdriver/App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 181
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 182
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->app:Lcom/txdriver/App;

    .line 183
    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getCompany()Lcom/txdriver/json/Company;

    move-result-object v2

    iget-object v2, v2, Lcom/txdriver/json/Company;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p1, Lcom/txdriver/db/Order;->date:Ljava/util/Date;

    .line 184
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    sget-object v2, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-virtual {v1, v2, p1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private stop()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->notificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->order:Lcom/txdriver/db/Order;

    invoke-virtual {v2}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 200
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->soundManager:Lcom/txdriver/notification/SoundManager;

    invoke-virtual {v0}, Lcom/txdriver/notification/SoundManager;->stop()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/txdriver/service/MainService$StopEvent;)V
    .locals 0

    .line 204
    invoke-direct {p0}, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->stop()V

    return-void
.end method

.method public onEvent(Lcom/txdriver/socket/SocketEvents$ConnectionStateEvent;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->stop()V

    return-void
.end method

.method public onEvent(Lcom/txdriver/ui/activity/OrderReminderActivity$FinishEvent;)V
    .locals 4

    .line 191
    invoke-virtual {p1}, Lcom/txdriver/ui/activity/OrderReminderActivity$FinishEvent;->getOrderId()J

    move-result-wide v0

    iget-object p1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->order:Lcom/txdriver/db/Order;

    invoke-virtual {p1}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->stop()V

    return-void
.end method

.method public run()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->soundManager:Lcom/txdriver/notification/SoundManager;

    invoke-virtual {v0}, Lcom/txdriver/notification/SoundManager;->playPersonalOrderSound()V

    .line 161
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->startActivity()V

    .line 162
    iget-object v0, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->order:Lcom/txdriver/db/Order;

    invoke-direct {p0, v0}, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->showNotification(Lcom/txdriver/db/Order;)V

    return-void
.end method

.method public startActivity()V
    .locals 3

    .line 166
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->app:Lcom/txdriver/App;

    const-class v2, Lcom/txdriver/ui/activity/OrderReminderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->order:Lcom/txdriver/db/Order;

    invoke-virtual {v1}, Lcom/txdriver/db/Order;->getId()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "id_extra"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 169
    iget-object v1, p0, Lcom/txdriver/ui/activity/OrderReminderActivity$OrderRemindActivityRunner;->app:Lcom/txdriver/App;

    invoke-virtual {v1, v0}, Lcom/txdriver/App;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
