.class public final Lcom/txdriver/energy/EnergySettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "EnergySettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private add(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 63
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, p3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v0, p4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 67
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 69
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 76
    invoke-virtual {p0}, Lcom/txdriver/energy/EnergySettingsActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 19
    const v0, 0x7f1101ec

    invoke-virtual {p0, v0}, Lcom/txdriver/energy/EnergySettingsActivity;->setTheme(I)V

    .line 20
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const-string p1, "\u042d\u043d\u0435\u0440\u0433\u043e\u044d\u0444\u0444\u0435\u043a\u0442\u0438\u0432\u043d\u043e\u0441\u0442\u044c"

    invoke-virtual {p0, p1}, Lcom/txdriver/energy/EnergySettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p0}, Lcom/txdriver/energy/EnergySettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000c

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 23
    invoke-virtual {p0}, Lcom/txdriver/energy/EnergySettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lcom/txdriver/energy/EnergySettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 24
    :cond_26
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 26
    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 27
    invoke-virtual {p0}, Lcom/txdriver/energy/EnergySettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 28
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 29
    const-string v4, "\u2039  \u042d\u043d\u0435\u0440\u0433\u043e\u044d\u0444\u0444\u0435\u043a\u0442\u0438\u0432\u043d\u043e\u0441\u0442\u044c"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    const/high16 v5, 0x41a80000    # 21.0f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 32
    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 33
    const/high16 v5, 0x41800000    # 16.0f

    mul-float v5, v5, v2

    float-to-int v5, v5

    const/high16 v6, 0x41000000    # 8.0f

    mul-float v6, v6, v2

    float-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 34
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const-string v5, "\u041d\u0430\u0437\u0430\u0434. \u042d\u043d\u0435\u0440\u0433\u043e\u044d\u0444\u0444\u0435\u043a\u0442\u0438\u0432\u043d\u043e\u0441\u0442\u044c"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 36
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42800000    # 64.0f

    mul-float v2, v2, v6

    float-to-int v2, v2

    invoke-direct {v5, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 38
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setId(I)V

    .line 39
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 40
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 41
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 42
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/txdriver/energy/EnergySettingsActivity;->setContentView(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Lcom/txdriver/energy/EnergySettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Lcom/txdriver/energy/EnergySettingsActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 46
    const-string v4, "\u041e\u0431\u043d\u043e\u0432\u043b\u044f\u0442\u044c \u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f \u043d\u0435 \u0447\u0430\u0449\u0435 \u043e\u0434\u043d\u043e\u0433\u043e \u0440\u0430\u0437\u0430 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0443"

    const/4 v5, 0x1

    const-string v2, "energy_ui"

    const-string v3, "\u042d\u043a\u043e\u043d\u043e\u043c\u043d\u043e\u0435 \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435 \u044d\u043a\u0440\u0430\u043d\u0430"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/txdriver/energy/EnergySettingsActivity;->add(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 48
    const-string v4, "\u041f\u0440\u0438 \u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d\u043d\u043e\u043c \u0438\u043b\u0438 \u0441\u043a\u0440\u044b\u0442\u043e\u043c \u044d\u043a\u0440\u0430\u043d\u0435 \u043f\u0440\u0438\u043e\u0441\u0442\u0430\u043d\u0430\u0432\u043b\u0438\u0432\u0430\u0442\u044c \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435 \u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u0439"

    const-string v2, "energy_hidden"

    const-string v3, "\u041d\u0435 \u043e\u0431\u043d\u043e\u0432\u043b\u044f\u0442\u044c \u0441\u043a\u0440\u044b\u0442\u044b\u0439 \u044d\u043a\u0440\u0430\u043d"

    invoke-direct/range {v0 .. v5}, Lcom/txdriver/energy/EnergySettingsActivity;->add(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    const-string v4, "\u0411\u0435\u0437 \u0430\u043a\u0442\u0438\u0432\u043d\u043e\u0433\u043e \u0437\u0430\u043a\u0430\u0437\u0430 \u0437\u0430\u043f\u0440\u0430\u0448\u0438\u0432\u0430\u0442\u044c \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442\u044b \u0440\u0430\u0437 \u0432 5 \u0441\u0435\u043a\u0443\u043d\u0434. \u041f\u0440\u0438 \u0437\u0430\u043a\u0430\u0437\u0435 \u2014 \u043e\u0431\u044b\u0447\u043d\u0430\u044f \u0442\u043e\u0447\u043d\u043e\u0441\u0442\u044c"

    const/4 v5, 0x0

    const-string v2, "energy_gps"

    const-string v3, "\u042d\u043a\u043e\u043d\u043e\u043c\u043d\u044b\u0439 GPS \u0432 \u043e\u0436\u0438\u0434\u0430\u043d\u0438\u0438"

    invoke-direct/range {v0 .. v5}, Lcom/txdriver/energy/EnergySettingsActivity;->add(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 52
    const-string v4, "\u041f\u0440\u043e\u0432\u0435\u0440\u044f\u0442\u044c \u043f\u043e \u0438\u0437\u043c\u0435\u043d\u0435\u043d\u0438\u044e \u0437\u0430\u043a\u0430\u0437\u0430 \u0438 \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442. \u0412\u043e \u0432\u0440\u0435\u043c\u044f \u043e\u0436\u0438\u0434\u0430\u043d\u0438\u044f \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u2014 \u043a\u0430\u0436\u0434\u0443\u044e \u0441\u0435\u043a\u0443\u043d\u0434\u0443"

    const/4 v5, 0x1

    const-string v2, "energy_pickup"

    const-string v3, "\u0410\u0432\u0442\u043e\u043f\u0440\u0438\u0431\u044b\u0442\u0438\u0435 \u043f\u043e \u0441\u043e\u0431\u044b\u0442\u0438\u044e"

    invoke-direct/range {v0 .. v5}, Lcom/txdriver/energy/EnergySettingsActivity;->add(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    const-string v4, "\u0420\u0430\u0437\u0440\u0435\u0448\u0430\u0442\u044c \u044d\u043a\u0440\u0430\u043d\u0443 \u0432\u044b\u043a\u043b\u044e\u0447\u0430\u0442\u044c\u0441\u044f \u0432 \u043e\u0436\u0438\u0434\u0430\u043d\u0438\u0438. \u041f\u0440\u0438 \u0430\u043a\u0442\u0438\u0432\u043d\u043e\u043c \u0437\u0430\u043a\u0430\u0437\u0435 \u2014 \u043e\u0431\u044b\u0447\u043d\u044b\u0439 \u0440\u0435\u0436\u0438\u043c"

    const/4 v5, 0x0

    const-string v2, "energy_screen"

    const-string v3, "\u042d\u043a\u043e\u043d\u043e\u043c\u043d\u044b\u0439 \u0440\u0435\u0436\u0438\u043c \u044d\u043a\u0440\u0430\u043d\u0430"

    invoke-direct/range {v0 .. v5}, Lcom/txdriver/energy/EnergySettingsActivity;->add(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 57
    const-string v1, "\u0417\u0430\u043a\u0430\u0437\u044b, \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f \u0438 \u0430\u0432\u0442\u043e\u043f\u0440\u0438\u043d\u044f\u0442\u0438\u0435 \u043e\u0431\u0440\u0430\u0431\u0430\u0442\u044b\u0432\u0430\u044e\u0442\u0441\u044f \u0441\u0440\u0430\u0437\u0443. \u0420\u0430\u0441\u0447\u0451\u0442 \u0441\u0442\u043e\u0438\u043c\u043e\u0441\u0442\u0438 \u0438 \u0438\u043d\u0434\u0438\u043a\u0430\u0442\u043e\u0440 \u0441\u0432\u044f\u0437\u0438 \u043f\u0440\u043e\u0434\u043e\u043b\u0436\u0430\u044e\u0442 \u0440\u0430\u0431\u043e\u0442\u0430\u0442\u044c."

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 59
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 60
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/txdriver/energy/EnergySettingsActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 73
    :cond_e
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
