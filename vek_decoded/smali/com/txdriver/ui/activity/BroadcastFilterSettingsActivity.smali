.class public Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "BroadcastFilterSettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final TAB_ID:Ljava/lang/String; = "tab_id"

.field public static final TAB_NAME:Ljava/lang/String; = "tab_name"


# instance fields
.field private app:Lcom/txdriver/App;

.field private autoAcceptPreference:Landroid/preference/CheckBoxPreference;

.field private destinationParkingPreference:Lcom/txdriver/ui/view/MultiSelectListPreference;

.field private filterPreference:Lcom/txdriver/filter/FilterPreferences;

.field private nonePricePreference:Landroid/preference/CheckBoxPreference;

.field public pricePreference:Landroid/preference/EditTextPreference;

.field public radiusPreference:Landroid/preference/EditTextPreference;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private applyTheme()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getCurrentTheme()I

            const/4 v0, 0x7f1101ec

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/BaseActivity;->setTheme(I)V

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/BaseActivity;->setTheme(I)V

    if-ne v0, v1, :cond_0

    const v0, 0x7f1101ae

    goto :goto_0

    :cond_0
    const v0, 0x7f11019f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->setTheme(I)V

    return-void
.end method

.method private initDestinationParkingPreference()V
    .locals 6

    .line 90
    invoke-static {}, Lcom/txdriver/db/Parking;->getAll()Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 92
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const v3, 0x7f100172

    .line 93
    invoke-virtual {p0, v3}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, -0x1

    .line 94
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 95
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_0

    .line 96
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/txdriver/db/Parking;

    add-int/lit8 v4, v4, 0x1

    .line 97
    iget-object v5, v3, Lcom/txdriver/db/Parking;->name:Ljava/lang/String;

    aput-object v5, v1, v4

    .line 98
    iget v3, v3, Lcom/txdriver/db/Parking;->parkingId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->destinationParkingPreference:Lcom/txdriver/ui/view/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Lcom/txdriver/ui/view/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->destinationParkingPreference:Lcom/txdriver/ui/view/MultiSelectListPreference;

    invoke-virtual {v0, v2}, Lcom/txdriver/ui/view/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private removeDisabledPreferences(Landroid/preference/PreferenceCategory;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->filterPreference:Lcom/txdriver/filter/FilterPreferences;

    invoke-virtual {v0}, Lcom/txdriver/filter/FilterPreferences;->isRadiusFilterEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->radiusPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->filterPreference:Lcom/txdriver/filter/FilterPreferences;

    invoke-virtual {v0}, Lcom/txdriver/filter/FilterPreferences;->isPriceFilterEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->pricePreference:Landroid/preference/EditTextPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 79
    iget-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->nonePricePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->filterPreference:Lcom/txdriver/filter/FilterPreferences;

    invoke-virtual {v0}, Lcom/txdriver/filter/FilterPreferences;->isDestionationFilterEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->destinationParkingPreference:Lcom/txdriver/ui/view/MultiSelectListPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->filterPreference:Lcom/txdriver/filter/FilterPreferences;

    invoke-virtual {v0}, Lcom/txdriver/filter/FilterPreferences;->isAutoAcceptFilterEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->autoAcceptPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    return-void
.end method

.method public static start(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "tab_id"

    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "tab_name"

    .line 42
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 153
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 154
    iget-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getClient()Lcom/txdriver/socket/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/socket/Client;->reconn()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 48
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/txdriver/App;

    iput-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->app:Lcom/txdriver/App;

    .line 49
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->applyTheme()V

    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "tab_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 52
    new-instance v0, Lcom/txdriver/filter/FilterPreferences;

    iget-object v2, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->app:Lcom/txdriver/App;

    invoke-direct {v0, v2, p1}, Lcom/txdriver/filter/FilterPreferences;-><init>(Lcom/txdriver/App;I)V

    iput-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->filterPreference:Lcom/txdriver/filter/FilterPreferences;

    .line 53
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "tab_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    .line 55
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "tab_%d"

    invoke-static {v3, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    const/high16 p1, 0x7f130000

    .line 56
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->addPreferencesFromResource(I)V

    const-string p1, "filtersCategory"

    .line 57
    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    .line 58
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pref_filter_radius"

    .line 60
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->radiusPreference:Landroid/preference/EditTextPreference;

    const-string v0, "pref_filter_min_price"

    .line 61
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->pricePreference:Landroid/preference/EditTextPreference;

    const-string v0, "pref_filter_none_price"

    .line 62
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->nonePricePreference:Landroid/preference/CheckBoxPreference;

    const-string v0, "pref_auto_accept"

    .line 63
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->autoAcceptPreference:Landroid/preference/CheckBoxPreference;

    const-string v0, "pref_filter_destination_parking"

    .line 64
    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/txdriver/ui/view/MultiSelectListPreference;

    iput-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->destinationParkingPreference:Lcom/txdriver/ui/view/MultiSelectListPreference;

    .line 65
    invoke-direct {p0, p1}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->removeDisabledPreferences(Landroid/preference/PreferenceCategory;)V

    .line 66
    invoke-direct {p0}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->initDestinationParkingPreference()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "pref_filter_min_price"

    .line 159
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->pricePreference:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->updatePricePreferenceSummary(Landroid/preference/EditTextPreference;)V

    goto :goto_0

    :cond_0
    const-string p1, "pref_filter_radius"

    .line 161
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 162
    iget-object p1, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->radiusPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->updateRadiusPreferenceSummary(Landroid/preference/EditTextPreference;)V

    goto :goto_0

    :cond_1
    const-string p1, "pref_filter_destination_parking"

    .line 163
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 164
    iget-object p1, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->destinationParkingPreference:Lcom/txdriver/ui/view/MultiSelectListPreference;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->updateDestinationParkingPreferenceSummary(Lcom/txdriver/ui/view/MultiSelectListPreference;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 112
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 113
    iget-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->pricePreference:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->updatePricePreferenceSummary(Landroid/preference/EditTextPreference;)V

    .line 114
    iget-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->radiusPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->updateRadiusPreferenceSummary(Landroid/preference/EditTextPreference;)V

    .line 115
    iget-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->destinationParkingPreference:Lcom/txdriver/ui/view/MultiSelectListPreference;

    invoke-virtual {p0, v0}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->updateDestinationParkingPreferenceSummary(Lcom/txdriver/ui/view/MultiSelectListPreference;)V

    .line 116
    iget-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 106
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 107
    iget-object v0, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public updateDestinationParkingPreferenceSummary(Lcom/txdriver/ui/view/MultiSelectListPreference;)V
    .locals 5

    .line 130
    invoke-virtual {p1}, Lcom/txdriver/ui/view/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v0

    .line 131
    invoke-virtual {p1}, Lcom/txdriver/ui/view/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 134
    invoke-virtual {p1, v3}, Lcom/txdriver/ui/view/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 136
    aget-object v3, v1, v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 141
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 143
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    .line 144
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    const-string v1, ", "

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 148
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/txdriver/ui/view/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updatePricePreferenceSummary(Landroid/preference/EditTextPreference;)V
    .locals 4

    .line 120
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->filterPreference:Lcom/txdriver/filter/FilterPreferences;

    invoke-virtual {v2}, Lcom/txdriver/filter/FilterPreferences;->getPriceFilter()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/txdriver/preferences/Preferences;->getCurrency()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%d %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateRadiusPreferenceSummary(Landroid/preference/EditTextPreference;)V
    .locals 4

    .line 125
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->filterPreference:Lcom/txdriver/filter/FilterPreferences;

    invoke-virtual {v2}, Lcom/txdriver/filter/FilterPreferences;->getRadiusFilter()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f100131

    invoke-virtual {p0, v2}, Lcom/txdriver/ui/activity/BroadcastFilterSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%d %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
