.class public final Lcom/txdriver/compat/CloseApplication;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Ljava/lang/Runnable;

.field private activity:Landroid/app/Activity;

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/txdriver/compat/CloseApplication;->activity:Landroid/app/Activity;
    return-void
.end method

.method public static isStopped(Landroid/content/Context;)Z
    .locals 2
    const-string v0, "driverplus_runtime"
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    const-string p0, "user_stopped"
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result v0
    return v0
.end method

.method public static setStopped(Landroid/content/Context;Z)V
    .locals 2
    const-string v0, "driverplus_runtime"
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "user_stopped"
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    return-void
.end method

.method public static confirm(Landroid/app/Activity;)V
    .locals 4
    new-instance v0, Lcom/txdriver/compat/CloseApplication;
    invoke-direct {v0, p0}, Lcom/txdriver/compat/CloseApplication;-><init>(Landroid/app/Activity;)V
    new-instance v1, Landroid/app/AlertDialog$Builder;
    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    const-string v2, "Закрыть приложение?"
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    const-string v2, "Соединение, приём заказов и фоновая служба будут остановлены до следующего запуска. Активный заказ не завершится на сервере. Точное системное «Остановить принудительно» доступно только в настройках Android."
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    const-string v2, "Закрыть"
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    const-string v2, "Отмена"
    const/4 v3, 0x0
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    const-string v2, "Настройки Android"
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    iget-object v0, p0, Lcom/txdriver/compat/CloseApplication;->activity:Landroid/app/Activity;
    const/4 v1, -0x3
    if-ne p2, v1, :close
    new-instance v1, Landroid/content/Intent;
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"
    const-string v3, "package:com.tx.driver.vek.znamenskoe"
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v3
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    return-void
    :close
    const/4 v1, 0x1
    invoke-static {v0, v1}, Lcom/txdriver/compat/CloseApplication;->setStopped(Landroid/content/Context;Z)V
    :cleanup_start
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;
    move-result-object v2
    check-cast v2, Lcom/txdriver/App;
    invoke-virtual {v2}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;
    move-result-object v3
    invoke-virtual {v3}, Lcom/txdriver/socket/Client;->close()V
    invoke-virtual {v2}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;
    move-result-object v3
    invoke-virtual {v3}, Lcom/txdriver/location/LocationManager;->stopUpdates()V
    invoke-virtual {v2}, Lcom/txdriver/App;->getNewsletterManager()Lcom/txdriver/news/NewsletterManager;
    move-result-object v3
    invoke-virtual {v3}, Lcom/txdriver/news/NewsletterManager;->cancelAlarm()V
    invoke-virtual {v2}, Lcom/txdriver/App;->getPcTasksNotificationManager()Lcom/txdriver/news/PCTasksNotificationManager;
    move-result-object v3
    invoke-virtual {v3}, Lcom/txdriver/news/PCTasksNotificationManager;->cancelAlarm()V
    new-instance v3, Landroid/content/Intent;
    const-class v4, Lcom/txdriver/service/MainService;
    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual {v0, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :cleanup_end
    .catch Ljava/lang/Exception; {:cleanup_start .. :cleanup_end} :cleanup_failed
    goto :finish
    :cleanup_failed
    move-exception v1
    :finish
    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v2, 0x15
    if-lt v1, v2, :kill_later
    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V
    :kill_later
    new-instance v1, Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v2
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    const-wide/16 v2, 0x3e8
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    return-void
.end method

.method public run()V
    .locals 1
    invoke-static {}, Landroid/os/Process;->myPid()I
    move-result v0
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    return-void
.end method
