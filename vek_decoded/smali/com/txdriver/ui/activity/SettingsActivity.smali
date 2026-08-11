.class public Lcom/txdriver/ui/activity/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 21
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/SettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/txdriver/App;

    .line 22
    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getCurrentTheme()I

    move-result v0

    const v1, 0x7f1101ef

    if-ne v0, v1, :cond_0

    const v0, 0x7f1101ae

    goto :goto_0

    :cond_0
    const v0, 0x7f11019f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/SettingsActivity;->setTheme(I)V

    .line 25
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-static {}, Lcom/txdriver/utils/Utils;->hasHoneycomb()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/SettingsActivity;->openSettingsFragment()V

    goto :goto_1

    :cond_1
    const p1, 0x7f130002

    .line 29
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/SettingsActivity;->addPreferencesFromResource(I)V

    .line 30
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05000a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f130001

    .line 31
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/SettingsActivity;->addPreferencesFromResource(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public openSettingsFragment()V
    .locals 3

    .line 38
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/txdriver/ui/fragment/SettingsFragment;

    invoke-direct {v1}, Lcom/txdriver/ui/fragment/SettingsFragment;-><init>()V

    const v2, 0x1020002

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
