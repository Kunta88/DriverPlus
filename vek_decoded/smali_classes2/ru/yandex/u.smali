.class public Lru/yandex/u;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field public static a:Lru/yandex/u;


# instance fields
.field public b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "device_id.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    sget-object v0, Lru/yandex/u;->a:Lru/yandex/u;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, v0, Lru/yandex/u;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lru/yandex/u;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, v0, Lru/yandex/u;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v0, Lru/yandex/u;->a:Lru/yandex/u;

    iget-object v0, v0, Lru/yandex/u;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    :cond_1
    sget-object v0, Lru/yandex/u;->a:Lru/yandex/u;

    iget-object v0, v0, Lru/yandex/u;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lru/yandex/u;
    .locals 2

    const-class v0, Lru/yandex/u;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lru/yandex/u;->a:Lru/yandex/u;

    if-nez v1, :cond_0

    new-instance v1, Lru/yandex/u;

    invoke-direct {v1, p0}, Lru/yandex/u;-><init>(Landroid/content/Context;)V

    sput-object v1, Lru/yandex/u;->a:Lru/yandex/u;

    :cond_0
    sget-object p0, Lru/yandex/u;->a:Lru/yandex/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE device_id (_id INTEGER PRIMARY KEY,device_id TEXT UNIQUE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
