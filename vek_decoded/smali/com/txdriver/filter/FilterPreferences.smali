.class public Lcom/txdriver/filter/FilterPreferences;
.super Ljava/lang/Object;
.source "FilterPreferences.java"


# static fields
.field public static final NONE_DESTINATION_PARKING:I = -0x1

.field public static final PREF_AUTO_ACCEPT_FILTER_ENABLE:Ljava/lang/String; = "pref_auto_accept_filter_enable"

.field public static final PREF_DESTINATION_FILTER_ENABLE:Ljava/lang/String; = "pref_destination_filter_enable"

.field public static final PREF_FILTER_AUTO_ACCEPT:Ljava/lang/String; = "pref_auto_accept"

.field public static final PREF_FILTER_DEFAULT_AUTO_ACCEPT:Z = false

.field public static final PREF_FILTER_DEFAULT_ENABLE:Z = false

.field public static final PREF_FILTER_DEFAULT_PRICE:Ljava/lang/String; = "0"

.field public static final PREF_FILTER_DEFAULT_RADIUS:Ljava/lang/String; = "3000"

.field public static final PREF_FILTER_DESTINATION_PARKING:Ljava/lang/String; = "pref_filter_destination_parking"

.field public static final PREF_FILTER_ENABLE:Ljava/lang/String; = "pref_filter_enable"

.field public static final PREF_FILTER_NONE_PRICE:Ljava/lang/String; = "pref_filter_none_price"

.field public static final PREF_FILTER_NONE_PRICE_DEFAULT:Z = true

.field public static final PREF_FILTER_PRICE:Ljava/lang/String; = "pref_filter_min_price"

.field public static final PREF_FILTER_RADIUS:Ljava/lang/String; = "pref_filter_radius"

.field public static final PREF_NAME:Ljava/lang/String; = "tab_%d"

.field public static final PREF_PRICE_FILTER_ENABLE:Ljava/lang/String; = "pref_price_filter_enable"

.field public static final PREF_RADIUS_FILTER_ENABLE:Ljava/lang/String; = "pref_radius_filter_enable"

.field public static final PREF_SORT:Ljava/lang/String; = "pref_sort"

.field public static final SORT_DISTANCE:I = 0x1

.field public static final SORT_TIME:I


# instance fields
.field private final app:Lcom/txdriver/App;

.field private final preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/txdriver/App;I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/txdriver/filter/FilterPreferences;->app:Lcom/txdriver/App;

    .line 42
    invoke-virtual {p0, p2}, Lcom/txdriver/filter/FilterPreferences;->getSharedPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/filter/FilterPreferences;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getTabPreferencesName(I)Ljava/lang/String;
    .locals 3

    .line 50
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "tab_%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDestinationParkingFilter()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    invoke-static {}, Lcom/txdriver/utils/Utils;->hasHoneycomb()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "pref_filter_destination_parking"

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/txdriver/filter/FilterPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/txdriver/filter/FilterPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-static {v0, v2, v1}, Lcom/h6ah4i/android/compat/utils/SharedPreferencesJsonStringSetWrapperUtils;->getStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPriceFilter()I
    .locals 3

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/txdriver/filter/FilterPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_filter_min_price"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRadiusFilter()I
    .locals 3

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/txdriver/filter/FilterPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_filter_radius"

    const-string v2, "3000"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSharedPreferences(I)Landroid/content/SharedPreferences;
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/txdriver/filter/FilterPreferences;->app:Lcom/txdriver/App;

    invoke-static {p1}, Lcom/txdriver/filter/FilterPreferences;->getTabPreferencesName(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/txdriver/App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public getSort()I
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/txdriver/filter/FilterPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_sort"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isAutoAccept()Z
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/txdriver/filter/FilterPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_auto_accept"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isAutoAcceptFilterEnabled()Z
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/txdriver/filter/FilterPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_auto_accept_filter_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDestionationFilterEnabled()Z
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/txdriver/filter/FilterPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_destination_filter_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFilterEnabled()Z
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/txdriver/filter/FilterPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_filter_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNonePriceOrders()Z
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/txdriver/filter/FilterPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_filter_none_price"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPriceFilterEnabled()Z
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/txdriver/filter/FilterPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_price_filter_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isRadiusFilterEnabled()Z
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/txdriver/filter/FilterPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_radius_filter_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAutoAcceptFilterEnable(Z)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/txdriver/filter/FilterPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_auto_accept_filter_enable"

    .line 85
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setDestinationFilterEnable(Z)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/txdriver/filter/FilterPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_destination_filter_enable"

    .line 75
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setPriceFilterEnable(Z)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/txdriver/filter/FilterPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_price_filter_enable"

    .line 55
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setRadiusFilterEnable(Z)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/txdriver/filter/FilterPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_radius_filter_enable"

    .line 65
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setSort(I)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/txdriver/filter/FilterPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_sort"

    .line 95
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
