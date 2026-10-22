.class public final Lcom/txdriver/compat/DisabledModuleCleanup;
.super Ljava/lang/Object;

.method public static notifications(Landroid/content/Context;)V
    .locals 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 0x1a
    if-lt v0, v1, :done
    :try_start
    const-string v0, "notification"
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/app/NotificationManager;
    if-eqz v0, :done
    const-string v1, "TxNewsletterNotificationChannelID"
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V
    const-string v1, "TxPhotoControlTasksNotificationChannelID"
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :ignored
    return-void
    :ignored
    move-exception v0
    :done
    return-void
.end method
