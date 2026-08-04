.class public Lcom/txdriver/ui/fragment/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130002

    .line 19
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/SettingsFragment;->addPreferencesFromResource(I)V

    .line 20
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/txdriver/App;

    .line 21
    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->isDevMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f130001

    .line 22
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/SettingsFragment;->addPreferencesFromResource(I)V

    :cond_0
    return-void
.end method
