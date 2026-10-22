.class public final Lcom/txdriver/compat/ManualBreakPolicy;
.super Ljava/lang/Object;
.source "ManualBreakPolicy.java"


# instance fields
.field private desired:Z

.field private known:Z

.field private observed:Z

.field private pending:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/txdriver/compat/ManualBreakPolicy;->desired:Z

    iput-boolean p1, p0, Lcom/txdriver/compat/ManualBreakPolicy;->pending:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized automaticIgnored(Z)V
    .registers 4

    monitor-enter p0

    .line 21
    if-eqz p1, :cond_6

    :try_start_3
    const-string p1, "auto_true_ignored"

    goto :goto_8

    :cond_6
    const-string p1, "auto_false_ignored"

    :goto_8
    iget-boolean v0, p0, Lcom/txdriver/compat/ManualBreakPolicy;->desired:Z

    iget-boolean v1, p0, Lcom/txdriver/compat/ManualBreakPolicy;->known:Z

    if-eqz v1, :cond_15

    iget-boolean v1, p0, Lcom/txdriver/compat/ManualBreakPolicy;->observed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    invoke-static {p1, v0, v1}, Lcom/txdriver/compat/WebDiagnostics;->breakEvent(Ljava/lang/String;ZLjava/lang/Boolean;)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    .line 22
    monitor-exit p0

    return-void

    .line 20
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized desired()Z
    .registers 2

    monitor-enter p0

    .line 23
    :try_start_1
    iget-boolean v0, p0, Lcom/txdriver/compat/ManualBreakPolicy;->desired:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 23
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized manual(Z)V
    .registers 4

    monitor-enter p0

    .line 8
    :try_start_1
    iput-boolean p1, p0, Lcom/txdriver/compat/ManualBreakPolicy;->desired:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/txdriver/compat/ManualBreakPolicy;->pending:Z

    .line 9
    const-string p1, "manual"

    iget-boolean v0, p0, Lcom/txdriver/compat/ManualBreakPolicy;->desired:Z

    iget-boolean v1, p0, Lcom/txdriver/compat/ManualBreakPolicy;->known:Z

    if-eqz v1, :cond_15

    iget-boolean v1, p0, Lcom/txdriver/compat/ManualBreakPolicy;->observed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    invoke-static {p1, v0, v1}, Lcom/txdriver/compat/WebDiagnostics;->breakEvent(Ljava/lang/String;ZLjava/lang/Boolean;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 10
    monitor-exit p0

    return-void

    .line 7
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized note()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 25
    :try_start_1
    iget-boolean v0, p0, Lcom/txdriver/compat/ManualBreakPolicy;->pending:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/txdriver/compat/ManualBreakPolicy;->desired:Z

    if-eqz v0, :cond_c

    const-string v0, "\u041f\u0415\u0420\u0415\u0420\u042b\u0412 \u0412\u042b\u0411\u0420\u0410\u041d \u2014 \u0441\u0435\u0440\u0432\u0435\u0440 \u0435\u0449\u0451 \u043d\u0435 \u043f\u043e\u0434\u0442\u0432\u0435\u0440\u0434\u0438\u043b"

    goto :goto_e

    :cond_c
    const-string v0, "\u0421\u041d\u042f\u0422\u0418\u0415 \u041f\u0415\u0420\u0415\u0420\u042b\u0412\u0410 \u0417\u0410\u041f\u0420\u041e\u0428\u0415\u041d\u041e \u2014 \u0441\u0435\u0440\u0432\u0435\u0440 \u0435\u0449\u0451 \u043d\u0435 \u043f\u043e\u0434\u0442\u0432\u0435\u0440\u0434\u0438\u043b"
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_30

    :goto_e
    monitor-exit p0

    return-object v0

    .line 26
    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/txdriver/compat/ManualBreakPolicy;->known:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/txdriver/compat/ManualBreakPolicy;->observed:Z

    iget-boolean v1, p0, Lcom/txdriver/compat/ManualBreakPolicy;->desired:Z

    if-eq v0, v1, :cond_25

    .line 27
    iget-boolean v0, p0, Lcom/txdriver/compat/ManualBreakPolicy;->desired:Z

    if-eqz v0, :cond_21

    const-string v0, "\u26a0\ufe0f \u041f\u0415\u0420\u0415\u0420\u042b\u0412 \u0412\u042b\u0411\u0420\u0410\u041d \u0412\u0420\u0423\u0427\u041d\u0423\u042e; \u0441\u0435\u0440\u0432\u0435\u0440 \u0441\u043e\u043e\u0431\u0449\u0438\u043b \u0441\u043d\u044f\u0442\u0438\u0435 \u043f\u0435\u0440\u0435\u0440\u044b\u0432\u0430. \u0410\u0432\u0442\u043e\u043f\u0440\u0438\u043d\u044f\u0442\u0438\u0435 \u0437\u0430\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u043d\u043e."

    goto :goto_23

    .line 28
    :cond_21
    const-string v0, "\u26a0\ufe0f \u0421\u0415\u0420\u0412\u0415\u0420 \u0421\u041e\u041e\u0411\u0429\u0418\u041b \u041f\u0415\u0420\u0415\u0420\u042b\u0412, \u043a\u043e\u0442\u043e\u0440\u043e\u0433\u043e \u0432\u044b \u043d\u0435 \u0432\u043a\u043b\u044e\u0447\u0430\u043b\u0438. \u041f\u0440\u0438\u0451\u043c \u0437\u0430\u043a\u0430\u0437\u043e\u0432 \u043d\u0430 \u0441\u0435\u0440\u0432\u0435\u0440\u0435 \u043c\u043e\u0436\u0435\u0442 \u0431\u044b\u0442\u044c \u043f\u0440\u0438\u043e\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d."
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_30

    .line 27
    :goto_23
    monitor-exit p0

    return-object v0

    .line 29
    :cond_25
    :try_start_25
    iget-boolean v0, p0, Lcom/txdriver/compat/ManualBreakPolicy;->desired:Z

    if-eqz v0, :cond_2c

    const-string v0, "\u041f\u0415\u0420\u0415\u0420\u042b\u0412 \u0412\u041a\u041b\u042e\u0427\u0401\u041d \u0412\u0420\u0423\u0427\u041d\u0423\u042e"

    goto :goto_2e

    :cond_2c
    const-string v0, ""
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_30

    :goto_2e
    monitor-exit p0

    return-object v0

    .line 24
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reconnect()V
    .registers 4

    monitor-enter p0

    .line 17
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/txdriver/compat/ManualBreakPolicy;->known:Z

    iget-boolean v1, p0, Lcom/txdriver/compat/ManualBreakPolicy;->desired:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/txdriver/compat/ManualBreakPolicy;->pending:Z

    if-eqz v1, :cond_d

    :cond_c
    const/4 v0, 0x1

    :cond_d
    iput-boolean v0, p0, Lcom/txdriver/compat/ManualBreakPolicy;->pending:Z

    .line 18
    const-string v0, "reconnect_preserved"

    iget-boolean v1, p0, Lcom/txdriver/compat/ManualBreakPolicy;->desired:Z

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/txdriver/compat/WebDiagnostics;->breakEvent(Ljava/lang/String;ZLjava/lang/Boolean;)V
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_19

    .line 19
    monitor-exit p0

    return-void

    .line 16
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized server(Z)V
    .registers 4

    monitor-enter p0

    .line 12
    :try_start_1
    iput-boolean p1, p0, Lcom/txdriver/compat/ManualBreakPolicy;->observed:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/txdriver/compat/ManualBreakPolicy;->known:Z

    .line 13
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/txdriver/compat/ManualBreakPolicy;->pending:Z

    .line 14
    const-string p1, "server"

    iget-boolean v0, p0, Lcom/txdriver/compat/ManualBreakPolicy;->desired:Z

    iget-boolean v1, p0, Lcom/txdriver/compat/ManualBreakPolicy;->observed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/txdriver/compat/WebDiagnostics;->breakEvent(Ljava/lang/String;ZLjava/lang/Boolean;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 15
    monitor-exit p0

    return-void

    .line 11
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method
