.class public Lcom/txdriver/socket/ConnectionHealth;
.super Ljava/lang/Object;

.field public static volatile connectedAt:J
.field public static volatile lastRead:J
.field public static volatile lastWrite:J
.field public static volatile authenticated:Z

.method public static declared-synchronized connected()V
    .locals 2
    invoke-static {}, Lcom/txdriver/compat/ManualBreak;->reconnect()V
    const/4 v0, 0x0
    sput-boolean v0, Lcom/txdriver/socket/ConnectionHealth;->authenticated:Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v0
    sput-wide v0, Lcom/txdriver/socket/ConnectionHealth;->connectedAt:J
    const-wide/16 v0, 0x0
    sput-wide v0, Lcom/txdriver/socket/ConnectionHealth;->lastRead:J
    sput-wide v0, Lcom/txdriver/socket/ConnectionHealth;->lastWrite:J
    return-void
.end method

.method public static read()V
    .locals 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v0
    sput-wide v0, Lcom/txdriver/socket/ConnectionHealth;->lastRead:J
    return-void
.end method

.method public static wrote()V
    .locals 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v0
    sput-wide v0, Lcom/txdriver/socket/ConnectionHealth;->lastWrite:J
    return-void
.end method
