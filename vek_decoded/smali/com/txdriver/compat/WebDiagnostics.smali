.class public final Lcom/txdriver/compat/WebDiagnostics;
.super Ljava/lang/Object;
.source "WebDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/compat/WebDiagnostics$Trace;
    }
.end annotation


# static fields
.field private static final LIMIT:I = 0x20000

.field private static directory:Ljava/io/File;

.field private static final ids:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final owner:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/txdriver/compat/WebDiagnostics;->ids:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/txdriver/compat/WebDiagnostics;->owner:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    .line 8
    sget-object v0, Lcom/txdriver/compat/WebDiagnostics;->ids:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 8
    invoke-static {}, Lcom/txdriver/compat/WebDiagnostics;->label()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .registers 1

    .line 8
    invoke-static {p0}, Lcom/txdriver/compat/WebDiagnostics;->write(Ljava/lang/String;)V

    return-void
.end method

.method public static begin(Ljava/lang/Object;)V
    .registers 4

    .line 21
    const-string v0, "unknown"

    if-nez p0, :cond_6

    move-object p0, v0

    goto :goto_e

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 22
    :goto_e
    sget-object v1, Lcom/txdriver/compat/WebDiagnostics;->owner:Ljava/lang/ThreadLocal;

    const-string v2, "com.txdriver.http.request."

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/txdriver/compat/WebDiagnostics;->token(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_28
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public static breakEvent(Ljava/lang/String;ZLjava/lang/Boolean;)V
    .registers 5

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event=break source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/txdriver/compat/WebDiagnostics;->token(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " manual="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " server="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-nez p2, :cond_28

    const-string p1, "unknown"

    goto :goto_2c

    :cond_28
    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2c
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/txdriver/compat/WebDiagnostics;->write(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method static causes(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const/4 v1, 0x0

    :goto_6
    if-eqz p0, :cond_28

    const/4 v2, 0x5

    if-ge v1, v2, :cond_28

    .line 42
    if-lez v1, :cond_12

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/txdriver/compat/WebDiagnostics;->token(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_6

    .line 45
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_31

    const-string p0, "none"

    goto :goto_35

    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_35
    return-object p0
.end method

.method public static end()V
    .registers 1

    .line 24
    sget-object v0, Lcom/txdriver/compat/WebDiagnostics;->owner:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public static failed(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    .line 30
    invoke-static {p0}, Lcom/txdriver/compat/WebDiagnostics;->begin(Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lcom/txdriver/compat/WebDiagnostics;->suppressed()Z

    move-result p0

    if-nez p0, :cond_31

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "event=request_failed request="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/txdriver/compat/WebDiagnostics;->label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " causes="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/txdriver/compat/WebDiagnostics;->causes(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/txdriver/compat/WebDiagnostics;->write(Ljava/lang/String;)V

    .line 32
    :cond_31
    invoke-static {}, Lcom/txdriver/compat/WebDiagnostics;->end()V

    .line 33
    return-void
.end method

.method public static declared-synchronized init(Ljava/io/File;)V
    .registers 4

    const-class v0, Lcom/txdriver/compat/WebDiagnostics;

    monitor-enter v0

    .line 15
    if-nez p0, :cond_7

    monitor-exit v0

    return-void

    .line 16
    :cond_7
    :try_start_7
    new-instance v1, Ljava/io/File;

    const-string v2, "web-diagnostics"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/txdriver/compat/WebDiagnostics;->directory:Ljava/io/File;

    .line 17
    sget-object p0, Lcom/txdriver/compat/WebDiagnostics;->directory:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_25

    sget-object p0, Lcom/txdriver/compat/WebDiagnostics;->directory:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_25

    const/4 p0, 0x0

    sput-object p0, Lcom/txdriver/compat/WebDiagnostics;->directory:Ljava/io/File;
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_2c

    monitor-exit v0

    return-void

    .line 18
    :cond_25
    :try_start_25
    const-string p0, "event=process_start schema=1 version=277"

    invoke-static {p0}, Lcom/txdriver/compat/WebDiagnostics;->write(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2c

    .line 19
    monitor-exit v0

    return-void

    .line 14
    :catchall_2c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static label()Ljava/lang/String;
    .registers 1

    .line 34
    sget-object v0, Lcom/txdriver/compat/WebDiagnostics;->owner:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, "unclassified"

    :cond_c
    return-object v0
.end method

.method public static suppressed()Z
    .registers 1

    .line 25
    sget-object v0, Lcom/txdriver/compat/WebDiagnostics;->owner:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/txdriver/compat/DisabledFeatures;->label(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static token(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 36
    if-eqz p0, :cond_c

    const-string v0, "[A-Za-z0-9_.$-]{1,96}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_c

    .line 37
    :cond_b
    return-object p0

    .line 36
    :cond_c
    :goto_c
    const-string p0, "other"

    return-object p0
.end method

.method private static declared-synchronized write(Ljava/lang/String;)V
    .registers 9

    const-class v0, Lcom/txdriver/compat/WebDiagnostics;

    monitor-enter v0

    .line 69
    :try_start_3
    sget-object v1, Lcom/txdriver/compat/WebDiagnostics;->directory:Ljava/io/File;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7f

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 71
    :cond_9
    :try_start_9
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/txdriver/compat/WebDiagnostics;->directory:Ljava/io/File;

    const-string v3, "web-current.log"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/txdriver/compat/WebDiagnostics;->directory:Ljava/io/File;

    const-string v4, "web-previous.log"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x20000

    cmp-long v7, v3, v5

    if-lez v7, :cond_3c

    .line 73
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_30} :catch_7b
    .catchall {:try_start_9 .. :try_end_30} :catchall_7f

    if-nez v3, :cond_34

    monitor-exit v0

    return-void

    .line 74
    :cond_34
    :try_start_34
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_38} :catch_7b
    .catchall {:try_start_34 .. :try_end_38} :catchall_7f

    if-nez v2, :cond_3c

    monitor-exit v0

    return-void

    .line 76
    :cond_3c
    :try_start_3c
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_42} :catch_7b
    .catchall {:try_start_3c .. :try_end_42} :catchall_7f

    .line 77
    :try_start_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time_ms="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_72
    .catchall {:try_start_42 .. :try_end_72} :catchall_76

    .line 78
    :try_start_72
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_7c

    :catchall_76
    move-exception p0

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw p0
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7b} :catch_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_7f

    .line 79
    :catch_7b
    move-exception p0

    :goto_7c
    nop

    .line 80
    monitor-exit v0

    return-void

    .line 68
    :catchall_7f
    move-exception p0

    monitor-exit v0

    throw p0
.end method
