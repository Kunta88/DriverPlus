.class public final Lcom/txdriver/compat/SavedLogin;
.super Ljava/lang/Object;

.method public static canStart(Lcom/txdriver/App;)Z
    .locals 5
    invoke-virtual {p0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;
    move-result-object v0
    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getLogin()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getPassword()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getCompany()Lcom/txdriver/json/Company;
    move-result-object v3
    if-eqz v3, :no_company
    const/4 v3, 0x1
    goto :company_known
    :no_company
    const/4 v3, 0x0
    :company_known
    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;
    move-result-object v0
    const-string v4, "auto_login_rejected"
    const/4 p0, 0x0
    invoke-interface {v0, v4, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result v4
    invoke-static {v1, v2, v3, v4}, Lcom/txdriver/compat/AutoLoginPolicy;->shouldSkipForm(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    move-result v0
    return v0
.end method

.method public static setRejected(Lcom/txdriver/App;Z)V
    .locals 1
    invoke-virtual {p0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;
    move-result-object p0
    invoke-virtual {p0}, Lcom/txdriver/preferences/Preferences;->getSharedPreferences()Landroid/content/SharedPreferences;
    move-result-object p0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object p0
    const-string v0, "auto_login_rejected"
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    move-result-object p0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    return-void
.end method
