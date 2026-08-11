.class public Lcom/txdriver/receiver/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/txdriver/App;

    invoke-virtual {p2}, Lcom/txdriver/App;->getNewsletterManager()Lcom/txdriver/news/NewsletterManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/txdriver/news/NewsletterManager;->scheduleAlarm()V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPcTasksNotificationManager()Lcom/txdriver/news/PCTasksNotificationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/news/PCTasksNotificationManager;->scheduleAlarm()V

    return-void
.end method
