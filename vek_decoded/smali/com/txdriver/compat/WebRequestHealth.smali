.class public final Lcom/txdriver/compat/WebRequestHealth;
.super Ljava/lang/Object;
.source "WebRequestHealth.java"


# instance fields
.field private failedAt:J

.field private failure:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/txdriver/compat/WebRequestHealth;->failure:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized failed(Ljava/lang/String;J)V
    .registers 4

    monitor-enter p0

    .line 11
    :try_start_1
    iput-object p1, p0, Lcom/txdriver/compat/WebRequestHealth;->failure:Ljava/lang/String;

    .line 12
    iput-wide p2, p0, Lcom/txdriver/compat/WebRequestHealth;->failedAt:J
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    .line 13
    monitor-exit p0

    return-void

    .line 10
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized failure()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 15
    :try_start_1
    iget-object v0, p0, Lcom/txdriver/compat/WebRequestHealth;->failure:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 15
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized note(J)Ljava/lang/String;
    .registers 8

    monitor-enter p0

    .line 18
    :try_start_1
    iget-object v0, p0, Lcom/txdriver/compat/WebRequestHealth;->failure:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    const-string p1, ""
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_a8

    monitor-exit p0

    return-object p1

    .line 19
    :cond_d
    :try_start_d
    iget-wide v0, p0, Lcom/txdriver/compat/WebRequestHealth;->failedAt:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    .line 20
    const-wide/16 v0, 0x3c

    cmp-long v2, p1, v0

    if-gez v2, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0441 \u043d\u0430\u0437\u0430\u0434"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_60

    .line 21
    :cond_33
    const-wide/16 v2, 0xe10

    cmp-long v4, p1, v2

    if-gez v4, :cond_4b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long v0, p1, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043c\u0438\u043d \u043d\u0430\u0437\u0430\u0434"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_5c

    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long v1, p1, v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0447 \u043d\u0430\u0437\u0430\u0434"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_5c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    :goto_60
    const-wide/16 v1, 0x78

    cmp-long v3, p1, v1

    if-gez v3, :cond_8d

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u0412\u0435\u0431: \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0439 \u0437\u0430\u043f\u0440\u043e\u0441 \u043d\u0435 \u0432\u044b\u043f\u043e\u043b\u043d\u0435\u043d \u2014 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/compat/WebRequestHealth;->failure:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_8b
    .catchall {:try_start_d .. :try_end_8b} :catchall_a8

    monitor-exit p0

    return-object p1

    .line 24
    :cond_8d
    :try_start_8d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u0412\u0435\u0431: \u0440\u0430\u043d\u0435\u0435 \u0431\u044b\u043b\u0430 \u043e\u0448\u0438\u0431\u043a\u0430 ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "); \u043f\u043e\u0432\u0442\u043e\u0440\u043d\u043e\u0439 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0438 \u043d\u0435 \u0431\u044b\u043b\u043e"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_a6
    .catchall {:try_start_8d .. :try_end_a6} :catchall_a8

    monitor-exit p0

    return-object p1

    .line 17
    :catchall_a8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized succeeded()V
    .registers 2

    monitor-enter p0

    .line 8
    :try_start_1
    const-string v0, ""

    iput-object v0, p0, Lcom/txdriver/compat/WebRequestHealth;->failure:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    .line 8
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method
