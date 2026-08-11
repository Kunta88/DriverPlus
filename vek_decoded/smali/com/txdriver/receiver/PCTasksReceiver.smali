.class public Lcom/txdriver/receiver/PCTasksReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PCTasksReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPcTasksNotificationManager()Lcom/txdriver/news/PCTasksNotificationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/news/PCTasksNotificationManager;->fetchPCTasks()V

    return-void
.end method
