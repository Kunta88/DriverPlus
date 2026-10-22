.class public Lcom/txdriver/ui/activity/ConnectionHealthIndicator;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;

.field private client:Lcom/txdriver/socket/Client;
.field private status:Landroid/widget/TextView;
.field private received:Landroid/widget/TextView;
.field private sent:Landroid/widget/TextView;
.field private handler:Landroid/os/Handler;
.field private stopped:Z

.method public constructor <init>(Lcom/txdriver/App;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    invoke-virtual {p1}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;
    move-result-object v0
    iput-object v0, p0, Lcom/txdriver/ui/activity/ConnectionHealthIndicator;->client:Lcom/txdriver/socket/Client;
    iput-object p2, p0, Lcom/txdriver/ui/activity/ConnectionHealthIndicator;->status:Landroid/widget/TextView;
    iput-object p3, p0, Lcom/txdriver/ui/activity/ConnectionHealthIndicator;->received:Landroid/widget/TextView;
    iput-object p4, p0, Lcom/txdriver/ui/activity/ConnectionHealthIndicator;->sent:Landroid/widget/TextView;
    new-instance v0, Landroid/os/Handler;
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V
    iput-object v0, p0, Lcom/txdriver/ui/activity/ConnectionHealthIndicator;->handler:Landroid/os/Handler;
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    return-void
.end method

.method public stop()V
    .locals 1
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcom/txdriver/ui/activity/ConnectionHealthIndicator;->stopped:Z
    iget-object v0, p0, Lcom/txdriver/ui/activity/ConnectionHealthIndicator;->handler:Landroid/os/Handler;
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    return-void
.end method

.method private ageText(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-wide/16 v1, 0x0
    cmp-long v1, p2, v1
    if-nez v1, :known
    const-string p1, "ещё нет"
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :done
    :known
    sub-long/2addr p4, p2
    const-wide/16 v1, 0x3e8
    div-long/2addr p4, v1
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string p1, " с назад"
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :done
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public run()V
    .locals 12
    iget-boolean v0, p0, Lcom/txdriver/ui/activity/ConnectionHealthIndicator;->stopped:Z
    if-nez v0, :end
    iget-object v0, p0, Lcom/txdriver/ui/activity/ConnectionHealthIndicator;->status:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/txdriver/energy/Energy;->mayRender(Landroid/view/View;)Z
    move-result v0
    if-eqz v0, :schedule
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v4
    sget-wide v2, Lcom/txdriver/socket/ConnectionHealth;->lastRead:J
    move-object v0, p0
    const-string v1, "Приём: "
    invoke-direct/range {v0 .. v5}, Lcom/txdriver/ui/activity/ConnectionHealthIndicator;->ageText(Ljava/lang/String;JJ)Ljava/lang/String;
    move-result-object v6
    iget-object v7, p0, Lcom/txdriver/ui/activity/ConnectionHealthIndicator;->received:Landroid/widget/TextView;
    invoke-static {v7, v6}, Lcom/txdriver/energy/Energy;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    sget-wide v2, Lcom/txdriver/socket/ConnectionHealth;->lastWrite:J
    const-string v1, "Отправка: "
    invoke-direct/range {v0 .. v5}, Lcom/txdriver/ui/activity/ConnectionHealthIndicator;->ageText(Ljava/lang/String;JJ)Ljava/lang/String;
    move-result-object v6
    iget-object v7, p0, Lcom/txdriver/ui/activity/ConnectionHealthIndicator;->sent:Landroid/widget/TextView;
    invoke-static {v7, v6}, Lcom/txdriver/energy/Energy;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    iget-object v6, p0, Lcom/txdriver/ui/activity/ConnectionHealthIndicator;->client:Lcom/txdriver/socket/Client;
    invoke-virtual {v6}, Lcom/txdriver/socket/Client;->isSocketConnected()Z
    move-result v6
    if-nez v6, :connected
    iget-object v6, p0, Lcom/txdriver/ui/activity/ConnectionHealthIndicator;->client:Lcom/txdriver/socket/Client;
    invoke-virtual {v6}, Lcom/txdriver/socket/Client;->getLastFailure()Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v6}, Ljava/lang/String;->length()I
    move-result v7
    if-nez v7, :display
    const-string v6, "НЕТ СОЕДИНЕНИЯ — заказы не подтверждены"
    goto :display
    :connected
    sget-boolean v6, Lcom/txdriver/socket/ConnectionHealth;->authenticated:Z
    if-nez v6, :authorized
    const-string v6, "СОЕДИНЕНИЕ ЕСТЬ — ОЖИДАНИЕ АВТОРИЗАЦИИ"
    goto :display
    :authorized
    sget-wide v8, Lcom/txdriver/socket/ConnectionHealth;->connectedAt:J
    const-wide/16 v10, 0x0
    cmp-long v6, v2, v10
    if-nez v6, :write_known
    move-wide v2, v8
    :write_known
    sub-long v2, v4, v2
    const-wide/16 v10, 0x3a98
    cmp-long v6, v2, v10
    if-ltz v6, :check_read
    const-string v6, "🔴 НЕТ ОТПРАВКИ 15+ с — возможен сбой"
    goto :display
    :check_read
    sget-wide v2, Lcom/txdriver/socket/ConnectionHealth;->lastRead:J
    const-wide/16 v10, 0x0
    cmp-long v7, v2, v10
    if-nez v7, :read_known
    move-wide v2, v8
    :read_known
    sub-long v2, v4, v2
    const-wide/16 v10, 0x7530
    cmp-long v6, v2, v10
    if-ltz v6, :warning
    const-string v6, "🔴 НЕТ ОТВЕТА 30+ с — проверьте связь"
    goto :display
    :warning
    const-wide/16 v10, 0x3a98
    cmp-long v6, v2, v10
    if-ltz v6, :fresh
    const-string v6, "🟡 НЕТ ОТВЕТА 15+ с"
    goto :display
    :fresh
    if-nez v7, :alive
    const-string v6, "🟡 ОЖИДАНИЕ ОТВЕТА СЕРВЕРА"
    goto :display
    :alive
    invoke-static {}, Lcom/txdriver/compat/SafeHttp;->getIndicatorNote()Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v6}, Ljava/lang/String;->length()I
    move-result v7
    if-eqz v7, :web_ok
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "🟢 СЕРВЕР ТАКСОПАРКА ОТВЕЧАЕТ\n"
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    goto :display
    :web_ok
    const-string v6, "🟢 СЕРВЕР ОТВЕЧАЕТ"
    :display
    invoke-static {v6}, Lcom/txdriver/compat/ManualBreak;->decorate(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    iget-object v7, p0, Lcom/txdriver/ui/activity/ConnectionHealthIndicator;->status:Landroid/widget/TextView;
    invoke-static {v7, v6}, Lcom/txdriver/energy/Energy;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    :schedule
    iget-object v0, p0, Lcom/txdriver/ui/activity/ConnectionHealthIndicator;->handler:Landroid/os/Handler;
    const-wide/16 v1, 0x3e8
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :end
    return-void
.end method
