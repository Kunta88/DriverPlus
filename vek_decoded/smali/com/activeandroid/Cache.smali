.class public final Lcom/activeandroid/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# static fields
.field private static sContext:Landroid/content/Context;

.field private static sDatabaseHelper:Lcom/activeandroid/DatabaseHelper;

.field private static sEnabled:Z

.field private static sEntities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/activeandroid/Model;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsInitialized:Z

.field private static sModelInfo:Lcom/activeandroid/ModelInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addEntity(Lcom/activeandroid/Model;)V
    .locals 2

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 119
    :try_start_0
    sget-boolean v1, Lcom/activeandroid/Cache;->sEnabled:Z

    if-eqz v1, :cond_0

    .line 120
    sget-object v1, Lcom/activeandroid/Cache;->sEntities:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized clear()V
    .locals 2

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 84
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/activeandroid/Cache;->sEntities:Ljava/util/Set;

    const-string v1, "Cache cleared."

    .line 85
    invoke-static {v1}, Lcom/activeandroid/util/Log;->v(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized closeDatabase()V
    .locals 2

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 107
    :try_start_0
    sget-object v1, Lcom/activeandroid/Cache;->sDatabaseHelper:Lcom/activeandroid/DatabaseHelper;

    invoke-virtual {v1}, Lcom/activeandroid/DatabaseHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized dispose()V
    .locals 2

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 89
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->closeDatabase()V

    const/4 v1, 0x0

    .line 91
    sput-object v1, Lcom/activeandroid/Cache;->sEntities:Ljava/util/Set;

    .line 92
    sput-object v1, Lcom/activeandroid/Cache;->sModelInfo:Lcom/activeandroid/ModelInfo;

    .line 93
    sput-object v1, Lcom/activeandroid/Cache;->sDatabaseHelper:Lcom/activeandroid/DatabaseHelper;

    const/4 v1, 0x0

    .line 95
    sput-boolean v1, Lcom/activeandroid/Cache;->sIsInitialized:Z

    const-string v1, "ActiveAndroid disposed. Call initialize to use library."

    .line 97
    invoke-static {v1}, Lcom/activeandroid/util/Log;->v(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 113
    sget-object v0, Lcom/activeandroid/Cache;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getEntity(Ljava/lang/Class;J)Lcom/activeandroid/Model;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;J)",
            "Lcom/activeandroid/Model;"
        }
    .end annotation

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 125
    :try_start_0
    sget-object v1, Lcom/activeandroid/Cache;->sEntities:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/activeandroid/Model;

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p0, :cond_0

    invoke-virtual {v2}, Lcom/activeandroid/Model;->getId()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/activeandroid/Model;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    .line 129
    monitor-exit v0

    return-object v2

    :cond_1
    const/4 p0, 0x0

    .line 133
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_1

    :goto_0
    throw p0

    :goto_1
    goto :goto_0
.end method

.method public static declared-synchronized getParserForType(Ljava/lang/Class;)Lcom/activeandroid/serializer/TypeSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/activeandroid/serializer/TypeSerializer;"
        }
    .end annotation

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 153
    :try_start_0
    sget-object v1, Lcom/activeandroid/Cache;->sModelInfo:Lcom/activeandroid/ModelInfo;

    invoke-virtual {v1, p0}, Lcom/activeandroid/ModelInfo;->getTypeSerializer(Ljava/lang/Class;)Lcom/activeandroid/serializer/TypeSerializer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getTableInfo(Ljava/lang/Class;)Lcom/activeandroid/TableInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Lcom/activeandroid/TableInfo;"
        }
    .end annotation

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 149
    :try_start_0
    sget-object v1, Lcom/activeandroid/Cache;->sModelInfo:Lcom/activeandroid/ModelInfo;

    invoke-virtual {v1, p0}, Lcom/activeandroid/ModelInfo;->getTableInfo(Ljava/lang/Class;)Lcom/activeandroid/TableInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getTableInfos()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/activeandroid/TableInfo;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 145
    :try_start_0
    sget-object v1, Lcom/activeandroid/Cache;->sModelInfo:Lcom/activeandroid/ModelInfo;

    invoke-virtual {v1}, Lcom/activeandroid/ModelInfo;->getTableInfos()Ljava/util/Collection;

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

.method public static declared-synchronized getTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 157
    :try_start_0
    sget-object v1, Lcom/activeandroid/Cache;->sModelInfo:Lcom/activeandroid/ModelInfo;

    invoke-virtual {v1, p0}, Lcom/activeandroid/ModelInfo;->getTableInfo(Ljava/lang/Class;)Lcom/activeandroid/TableInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initialize(Landroid/app/Application;)V
    .locals 2

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-boolean v1, Lcom/activeandroid/Cache;->sIsInitialized:Z

    if-eqz v1, :cond_0

    const-string p0, "ActiveAndroid already initialized."

    .line 65
    invoke-static {p0}, Lcom/activeandroid/util/Log;->v(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit v0

    return-void

    .line 69
    :cond_0
    :try_start_1
    sput-object p0, Lcom/activeandroid/Cache;->sContext:Landroid/content/Context;

    .line 71
    new-instance v1, Lcom/activeandroid/ModelInfo;

    invoke-direct {v1, p0}, Lcom/activeandroid/ModelInfo;-><init>(Landroid/app/Application;)V

    sput-object v1, Lcom/activeandroid/Cache;->sModelInfo:Lcom/activeandroid/ModelInfo;

    .line 72
    new-instance p0, Lcom/activeandroid/DatabaseHelper;

    sget-object v1, Lcom/activeandroid/Cache;->sContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/activeandroid/DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/activeandroid/Cache;->sDatabaseHelper:Lcom/activeandroid/DatabaseHelper;

    .line 74
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    sput-object p0, Lcom/activeandroid/Cache;->sEntities:Ljava/util/Set;

    .line 76
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    const/4 p0, 0x1

    .line 78
    sput-boolean p0, Lcom/activeandroid/Cache;->sIsInitialized:Z

    const-string p0, "ActiveAndroid initialized succesfully."

    .line 80
    invoke-static {p0}, Lcom/activeandroid/util/Log;->v(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isEnabled()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcom/activeandroid/Cache;->sEnabled:Z

    return v0
.end method

.method public static declared-synchronized openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 103
    :try_start_0
    sget-object v1, Lcom/activeandroid/Cache;->sDatabaseHelper:Lcom/activeandroid/DatabaseHelper;

    invoke-virtual {v1}, Lcom/activeandroid/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

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

.method public static declared-synchronized removeEntity(Lcom/activeandroid/Model;)V
    .locals 2

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 137
    :try_start_0
    sget-boolean v1, Lcom/activeandroid/Cache;->sEnabled:Z

    if-eqz v1, :cond_0

    .line 138
    sget-object v1, Lcom/activeandroid/Cache;->sEntities:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setEnabled(Z)V
    .locals 0

    .line 49
    sput-boolean p0, Lcom/activeandroid/Cache;->sEnabled:Z

    return-void
.end method
