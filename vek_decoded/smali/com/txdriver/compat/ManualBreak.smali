.class public final Lcom/txdriver/compat/ManualBreak;
.super Ljava/lang/Object;

.field private static prefs:Lcom/txdriver/preferences/Preferences;
.field private static app:Lcom/txdriver/App;
.field private static policy:Lcom/txdriver/compat/ManualBreakPolicy;

.method public static init(Lcom/txdriver/App;)V
    .locals 2
    sput-object p0, Lcom/txdriver/compat/ManualBreak;->app:Lcom/txdriver/App;
    invoke-virtual {p0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;
    move-result-object p0
    sput-object p0, Lcom/txdriver/compat/ManualBreak;->prefs:Lcom/txdriver/preferences/Preferences;
    invoke-virtual {p0}, Lcom/txdriver/preferences/Preferences;->isTakeBreak()Z
    move-result v0
    new-instance v1, Lcom/txdriver/compat/ManualBreakPolicy;
    invoke-direct {v1, v0}, Lcom/txdriver/compat/ManualBreakPolicy;-><init>(Z)V
    sput-object v1, Lcom/txdriver/compat/ManualBreak;->policy:Lcom/txdriver/compat/ManualBreakPolicy;
    return-void
.end method

.method public static manual(Z)V
    .locals 1
    sget-object v0, Lcom/txdriver/compat/ManualBreak;->policy:Lcom/txdriver/compat/ManualBreakPolicy;
    if-eqz v0, :done
    invoke-virtual {v0, p0}, Lcom/txdriver/compat/ManualBreakPolicy;->manual(Z)V
    sget-object v0, Lcom/txdriver/compat/ManualBreak;->prefs:Lcom/txdriver/preferences/Preferences;
    invoke-virtual {v0, p0}, Lcom/txdriver/preferences/Preferences;->setManualBreak(Z)V
    if-eqz p0, :done
    sget-object v0, Lcom/txdriver/compat/ManualBreak;->app:Lcom/txdriver/App;
    invoke-virtual {v0}, Lcom/txdriver/App;->getOrderAcceptManager()Lcom/txdriver/filter/OrderAcceptManager;
    move-result-object v0
    if-eqz v0, :done
    invoke-virtual {v0}, Lcom/txdriver/filter/OrderAcceptManager;->clearPending()V
    :done
    return-void
.end method

.method public static server(Z)V
    .locals 1
    sget-object v0, Lcom/txdriver/compat/ManualBreak;->policy:Lcom/txdriver/compat/ManualBreakPolicy;
    if-eqz v0, :done
    invoke-virtual {v0, p0}, Lcom/txdriver/compat/ManualBreakPolicy;->server(Z)V
    :done
    return-void
.end method

.method public static automaticIgnored(Z)V
    .locals 1
    sget-object v0, Lcom/txdriver/compat/ManualBreak;->policy:Lcom/txdriver/compat/ManualBreakPolicy;
    if-eqz v0, :done
    invoke-virtual {v0, p0}, Lcom/txdriver/compat/ManualBreakPolicy;->automaticIgnored(Z)V
    :done
    return-void
.end method

.method public static reconnect()V
    .locals 1
    sget-object v0, Lcom/txdriver/compat/ManualBreak;->policy:Lcom/txdriver/compat/ManualBreakPolicy;
    if-eqz v0, :done
    invoke-virtual {v0}, Lcom/txdriver/compat/ManualBreakPolicy;->reconnect()V
    :done
    return-void
.end method

.method public static decorate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    sget-object v0, Lcom/txdriver/compat/ManualBreak;->policy:Lcom/txdriver/compat/ManualBreakPolicy;
    if-eqz v0, :unchanged
    invoke-virtual {v0}, Lcom/txdriver/compat/ManualBreakPolicy;->note()Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    move-result v1
    if-eqz v1, :unchanged
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string p0, "\n"
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    :unchanged
    return-object p0
.end method
