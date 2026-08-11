.class public final Lcom/activeandroid/ActiveAndroid;
.super Ljava/lang/Object;
.source "ActiveAndroid.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginTransaction()V
    .locals 1

    .line 55
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public static clearCache()V
    .locals 0

    .line 39
    invoke-static {}, Lcom/activeandroid/Cache;->clear()V

    return-void
.end method

.method public static dispose()V
    .locals 0

    .line 43
    invoke-static {}, Lcom/activeandroid/Cache;->dispose()V

    return-void
.end method

.method public static endTransaction()V
    .locals 1

    .line 59
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public static execSQL(Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 75
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    const-class v0, Lcom/activeandroid/ActiveAndroid;

    monitor-enter v0

    .line 51
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static inTransaction()Z
    .locals 1

    .line 67
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized initialize(Landroid/app/Application;)V
    .locals 2

    const-class v0, Lcom/activeandroid/ActiveAndroid;

    monitor-enter v0

    const/4 v1, 0x0

    .line 30
    :try_start_0
    invoke-static {p0, v1}, Lcom/activeandroid/ActiveAndroid;->initialize(Landroid/app/Application;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initialize(Landroid/app/Application;Z)V
    .locals 1

    const-class v0, Lcom/activeandroid/ActiveAndroid;

    monitor-enter v0

    .line 34
    :try_start_0
    invoke-static {p1}, Lcom/activeandroid/ActiveAndroid;->setLoggingEnabled(Z)V

    .line 35
    invoke-static {p0}, Lcom/activeandroid/Cache;->initialize(Landroid/app/Application;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setLoggingEnabled(Z)V
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/activeandroid/util/Log;->setEnabled(Z)V

    return-void
.end method

.method public static setTransactionSuccessful()V
    .locals 1

    .line 63
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method
