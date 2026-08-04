.class public Lcom/txdriver/preferences/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final PREF_ACCEPT_ORDER_MAP_VISIBILITY:Ljava/lang/String; = "pref_accept_order_map_visibility"

.field private static final PREF_ACTION_CONFIRM:Ljava/lang/String; = "pref_action_confirm"

.field public static final PREF_ALLOW_CANCEL_ORDER:Ljava/lang/String; = "pref_allow_cancel_order"

.field public static final PREF_ALLOW_EXIT_WHEN_SESSION_OPENED:Ljava/lang/String; = "pref_allow_exit_when_session_opened"

.field public static final PREF_ALLOW_TAKE_BREAK:Ljava/lang/String; = "pref_allow_take_break"

.field public static final PREF_APPLY_TIMEOUT:Ljava/lang/String; = "pref_apply_timeout"

.field private static final PREF_ARCHIVED_ENABLED:Ljava/lang/String; = "pref_archived_enabled"

.field public static final PREF_ARRIVED_STATE_DISTANCE:Ljava/lang/String; = "pref_arrived_state_distance"

.field private static final PREF_ASK_FOR_EMPLOYMENT_SETTINGS:Ljava/lang/String; = "pref_ask_for_employment_settings"

.field public static final PREF_AUTO_TYPE:Ljava/lang/String; = "pref_auto_type"

.field public static final PREF_BANNED:Ljava/lang/String; = "pref_banned"

.field public static final PREF_CALL_TO_CLIENT_BUTTON:Ljava/lang/String; = "pref_call_to_client_button"

.field private static final PREF_CITY_ID:Ljava/lang/String; = "pref_city_id"

.field private static final PREF_CITY_NAME:Ljava/lang/String; = "pref_city_name"

.field public static final PREF_COMPANY_ID:Ljava/lang/String; = "pref_company_id"

.field private static final PREF_COMPANY_NAME:Ljava/lang/String; = "pref_company_name"

.field private static final PREF_CURRENCY:Ljava/lang/String; = "pref_currency"

.field public static final PREF_CURRENT_ORDER_ID:Ljava/lang/String; = "pref_current_order_id"

.field public static final PREF_CURRENT_VERSION:Ljava/lang/String; = "pref_current_version"

.field private static final PREF_DEV_MODE:Ljava/lang/String; = "pref_dev_mode"

.field public static final PREF_DONE_STATE_DISTANCE:Ljava/lang/String; = "pref_done_state_distance"

.field private static final PREF_DRIVERS_ON_MAP:Ljava/lang/String; = "pref_drivers_on_map"

.field private static final PREF_DRIVER_ID:Ljava/lang/String; = "pref_driver_id"

.field private static final PREF_DRIVER_PARKINGS:Ljava/lang/String; = "pref_driver_parkings"

.field private static final PREF_DRIVER_REGISTRATION:Ljava/lang/String; = "pref_driver_registration"

.field private static final PREF_DRIVER_STORE:Ljava/lang/String; = "pref_driver_store"

.field private static final PREF_DRIVER_STORE_ARCHIVE:Ljava/lang/String; = "pref_driver_store_archive"

.field private static final PREF_DRIVER_UUID:Ljava/lang/String; = "pref_driver_uuid"

.field public static final PREF_ENABLE_PRE_ORDERS_TAB:Ljava/lang/String; = "pref_enable_pre_orders_tab"

.field private static final PREF_FIN_OPERATIONS_ENABLED:Ljava/lang/String; = "pref_finoperations_enabled"

.field private static final PREF_HERE_MAPS_API_KEY:Ljava/lang/String; = "pref_here_maps_api_key"

.field private static final PREF_HTTP_PORT:Ljava/lang/String; = "pref_http_port"

.field public static final PREF_IDLE_TIMEOUT:Ljava/lang/String; = "pref_idle_timeout"

.field private static final PREF_ILLEGITIMATE_ORDER:Ljava/lang/String; = "pref_illegitimate_order"

.field public static final PREF_INPUT_PRICE_AND_SLIP_WHEN_CLOSE_ORDER:Ljava/lang/String; = "pref_input_price_and_slip_when_close_order"

.field public static final PREF_INPUT_PRICE_FOR_ORDER_WITH_PRICE:Ljava/lang/String; = "pref_input_price_for_order_with_price"

.field public static final PREF_INPUT_PRICE_WHEN_CLOSE_ORDER:Ljava/lang/String; = "pref_input_price_when_close_order"

.field public static final PREF_IS_FIRST_RUN:Ljava/lang/String; = "pref_is_first_run"

.field public static final PREF_IS_IN_DANGER:Ljava/lang/String; = "pref_in_danger"

.field public static final PREF_IS_SESSION_OPENED:Ljava/lang/String; = "pref_is_session_opened"

.field public static final PREF_LIFETIME_NOTIFICATIONS_FOR_BROADCAST_ORDER:Ljava/lang/String; = "pref_lifetime_notifications_for_broadcast_order"

.field public static final PREF_LIVE_NOW_SOUND:Ljava/lang/String; = "pref_live_now_sound"

.field public static final PREF_LOGIN:Ljava/lang/String; = "login_pref"

.field public static final PREF_MAP:Ljava/lang/String; = "pref_map"

.field public static final PREF_MAX_ALLOWED_PARKS:Ljava/lang/String; = "pref_max_allowed_parks"

.field public static final PREF_MAX_NOTIFICATIONS_FOR_BROADCAST_ORDER:Ljava/lang/String; = "pref_max_notifications_for_broadcast_order"

.field public static final PREF_NAVIGATOR:Ljava/lang/String; = "pref_navigator"

.field private static final PREF_NOTIFICATIONS_COUNTER_NEWS:Ljava/lang/String; = "pref_notifications_counter_news"

.field private static final PREF_NOTIFICATIONS_COUNTER_PC_TASKS:Ljava/lang/String; = "pref_notifications_counter_pc_tasks"

.field public static final PREF_ORDER_NOTIFICATION_IS_ACTIVE:Ljava/lang/String; = "pref_order_notification_is_active"

.field public static final PREF_ORDER_REMINDER_TIME:Ljava/lang/String; = "pref_order_reminder_time"

.field public static final PREF_PARKING_MOVING_NOTIFY:Ljava/lang/String; = "pref_parking_moving_notify"

.field public static final PREF_PASSWORD:Ljava/lang/String; = "password_pref"

.field public static final PREF_PAUSE_NOTIFICATIONS_FOR_BROADCAST_ORDER:Ljava/lang/String; = "pref_pause_notifications_for_broadcast_order"

.field public static final PREF_PERSONAL_ORDER_SOUND:Ljava/lang/String; = "pref_personal_order_sound"

.field private static final PREF_PHOTO_CONTROL:Ljava/lang/String; = "pref_photo_control"

.field private static final PREF_PRICE_ROUND:Ljava/lang/String; = "pref_price_round"

.field private static final PREF_PRICE_ROUND_UP:Ljava/lang/String; = "pref_price_round_up"

.field public static final PREF_PRIMARY_SERVER_ADDRESS:Ljava/lang/String; = "pref_primary_server_address"

.field public static final PREF_PRIMARY_SERVER_PORT:Ljava/lang/String; = "pref_primary_server_port"

.field private static final PREF_RATING_ENABLED:Ljava/lang/String; = "pref_rating_enabled"

.field public static final PREF_SAVE_PASSWORD:Ljava/lang/String; = "save_password_pref"

.field public static final PREF_SECONDARY_SERVER_ADDRESS:Ljava/lang/String; = "pref_secondary_server_address"

.field public static final PREF_SECONDARY_SERVER_PORT:Ljava/lang/String; = "pref_secondary_server_port"

.field public static final PREF_SESSION_OPEN_DATE:Ljava/lang/String; = "pref_session_open_date"

.field public static final PREF_SHOW_PARKINGS:Ljava/lang/String; = "pref_show_parkings"

.field public static final PREF_TAKE_A_BREAK:Ljava/lang/String; = "pref_take_a_break"

.field public static final PREF_TAXIMETER_ENABLED:Ljava/lang/String; = "pref_taximeter_enabled"

.field public static final PREF_TAXIMETER_ENABLED_CONFIG:Ljava/lang/String; = "pref_taximeter_enabled_config"

.field public static final PREF_TAXIMETER_STATE:Ljava/lang/String; = "pref_taximeter_state"

.field public static final PREF_THEME:Ljava/lang/String; = "pref_theme"

.field public static final PREF_TIME_ZONE:Ljava/lang/String; = "pref_timezone"

.field public static final PREF_TRAVEL_MIN_TIME:Ljava/lang/String; = "pref_travel_min_time"

.field public static final PREF_TYPE_NOTIFICATIONS_FOR_BROADCAST_ORDER:Ljava/lang/String; = "pref_type_notifications_for_broadcast_order"

.field public static final PREF_UNBAN_DATE:Ljava/lang/String; = "pref_unban_date"

.field public static final PREF_USE_TAXIMETER_FOR_ORDER_WITH_PRICE:Ljava/lang/String; = "pref_use_taximeter_for_order_with_price"

.field public static final PREF_VERSION:Ljava/lang/String; = "pref_version"

.field public static final PREF_VIBRATE:Ljava/lang/String; = "pref_vibrate"

.field private static final PREF_WEB_SERVER:Ljava/lang/String; = "pref_web_server"


# instance fields
.field private app:Landroid/app/Application;

.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/txdriver/preferences/Preferences;->cache:Ljava/util/Map;

    .line 115
    iput-object p1, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    .line 116
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/preferences/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 117
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 118
    iget-object p1, p0, Lcom/txdriver/preferences/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/preferences/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 163
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 166
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private getCompanyId()I
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "pref_company_id"

    invoke-direct {p0, v1, v0}, Lcom/txdriver/preferences/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getCompanyName()Ljava/lang/String;
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_company_name"

    invoke-direct {p0, v1, v0}, Lcom/txdriver/preferences/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFloat(Ljava/lang/String;F)F
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 628
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 629
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 632
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 201
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 204
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 145
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 148
    iget-object p3, p0, Lcom/txdriver/preferences/Preferences;->cache:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 222
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 225
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    check-cast p2, Ljava/lang/String;

    return-object p2
.end method

.method private isFirsRun()Z
    .locals 3

    const-string v0, "pref_is_first_run"

    const/4 v1, 0x1

    .line 381
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 383
    invoke-direct {p0, v0, v2}, Lcom/txdriver/preferences/Preferences;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return v1
.end method

.method private putBoolean(Ljava/lang/String;Z)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->cache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 131
    iget-object p1, p0, Lcom/txdriver/preferences/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private putFloat(Ljava/lang/String;F)V
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->cache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 643
    iget-object p1, p0, Lcom/txdriver/preferences/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private putInt(Ljava/lang/String;I)V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->cache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 254
    iget-object p1, p0, Lcom/txdriver/preferences/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private putLong(Ljava/lang/String;J)V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->cache:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 400
    iget-object p1, p0, Lcom/txdriver/preferences/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    iget-object p1, p0, Lcom/txdriver/preferences/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setCompanyId(I)V
    .locals 1

    const-string v0, "pref_company_id"

    .line 529
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private setCompanyName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_company_name"

    .line 537
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public askEmployments()Z
    .locals 2

    const-string v0, "pref_ask_for_employment_settings"

    const/4 v1, 0x1

    .line 797
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public broadcastOrderNotificationIsActive()Z
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->cache:Ljava/util/Map;

    const-string v1, "pref_order_notification_is_active"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getApplyOrderTimeout()I
    .locals 2

    const-string v0, "pref_apply_timeout"

    const/16 v1, 0x1e

    .line 266
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getArrivedStateDistance()I
    .locals 2

    const-string v0, "pref_arrived_state_distance"

    const/4 v1, -0x1

    .line 480
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCarType()J
    .locals 3

    const-string v0, "pref_auto_type"

    const-wide/16 v1, -0x1

    .line 505
    invoke-direct {p0, v0, v1, v2}, Lcom/txdriver/preferences/Preferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCity()Lcom/txdriver/json/City;
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "pref_city_id"

    invoke-direct {p0, v1, v0}, Lcom/txdriver/preferences/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 550
    :cond_0
    new-instance v1, Lcom/txdriver/json/City;

    invoke-direct {v1}, Lcom/txdriver/json/City;-><init>()V

    .line 551
    iput v0, v1, Lcom/txdriver/json/City;->id:I

    .line 552
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10007e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_city_name"

    invoke-direct {p0, v2, v0}, Lcom/txdriver/preferences/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/txdriver/json/City;->name:Ljava/lang/String;

    return-object v1
.end method

.method public getCompany()Lcom/txdriver/json/Company;
    .locals 2

    .line 514
    invoke-direct {p0}, Lcom/txdriver/preferences/Preferences;->getCompanyId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 518
    :cond_0
    new-instance v1, Lcom/txdriver/json/Company;

    invoke-direct {v1}, Lcom/txdriver/json/Company;-><init>()V

    .line 519
    iput v0, v1, Lcom/txdriver/json/Company;->id:I

    .line 520
    invoke-direct {p0}, Lcom/txdriver/preferences/Preferences;->getCompanyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/txdriver/json/Company;->name:Ljava/lang/String;

    return-object v1
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_currency"

    const-string v1, ""

    .line 570
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentOrderId()J
    .locals 3

    const-string v0, "pref_current_order_id"

    const-wide/16 v1, -0x1

    .line 139
    invoke-direct {p0, v0, v1, v2}, Lcom/txdriver/preferences/Preferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTheme()I
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    const v1, 0x7f100102

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_theme"

    invoke-direct {p0, v1, v0}, Lcom/txdriver/preferences/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    const v2, 0x7f10009c

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1101ec

    return v0

    :cond_0
    const v0, 0x7f1101ef

    return v0
.end method

.method public getCurrentVersion()J
    .locals 3

    const-string v0, "pref_current_version"

    const-wide/16 v1, -0x1

    .line 390
    invoke-direct {p0, v0, v1, v2}, Lcom/txdriver/preferences/Preferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDoneStateDistance()I
    .locals 2

    const-string v0, "pref_done_state_distance"

    const/4 v1, -0x1

    .line 488
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDriverId()I
    .locals 2

    const-string v0, "pref_driver_id"

    const/4 v1, 0x0

    .line 578
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHereMapsApiKey()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_here_maps_api_key"

    const-string v1, "no_such_value"

    .line 759
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpPort()I
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "pref_http_port"

    invoke-direct {p0, v1, v0}, Lcom/txdriver/preferences/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIdleTimeout()I
    .locals 2

    const-string v0, "pref_idle_timeout"

    const/16 v1, 0xa

    .line 437
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLifetimeNotificationsForBroadcastOrder()I
    .locals 4

    .line 724
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    const v1, 0x7f1000df

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_lifetime_notifications_for_broadcast_order"

    invoke-direct {p0, v2, v0}, Lcom/txdriver/preferences/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 725
    iget-object v2, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    invoke-virtual {v2, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_0

    return v2

    .line 727
    :cond_0
    iget-object v1, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    const v3, 0x7f10025a

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xa

    return v0

    .line 729
    :cond_1
    iget-object v1, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    const v3, 0x7f1000d9

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xf

    return v0

    :cond_2
    return v2
.end method

.method public getLiveNowSoundUri()Landroid/net/Uri;
    .locals 2

    const-string v0, "pref_live_now_sound"

    const-string v1, ""

    .line 299
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 2

    const-string v0, "login_pref"

    const-string v1, ""

    .line 328
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMap()Ljava/lang/String;
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    const v1, 0x7f10009f

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_map"

    invoke-direct {p0, v1, v0}, Lcom/txdriver/preferences/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxAllowedParks()I
    .locals 2

    const-string v0, "pref_max_allowed_parks"

    const/4 v1, 0x2

    .line 258
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxNotificationsForBroadcastOrder()I
    .locals 4

    const-string v0, "pref_max_notifications_for_broadcast_order"

    const/4 v1, 0x0

    .line 699
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "0"

    .line 700
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 702
    aget-object v0, v0, v1

    .line 704
    :cond_1
    iget-object v2, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    const v3, 0x7f1000ec

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 707
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getNavigator()Ljava/lang/String;
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    const v1, 0x7f1000a0

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_navigator"

    invoke-direct {p0, v1, v0}, Lcom/txdriver/preferences/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationsNewsCounter()I
    .locals 2

    const-string v0, "pref_notifications_counter_news"

    const/4 v1, -0x1

    .line 782
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNotificationsPcTasksCounter()I
    .locals 2

    const-string v0, "pref_notifications_counter_pc_tasks"

    const/4 v1, -0x1

    .line 789
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    const-string v0, "password_pref"

    const-string v1, ""

    .line 336
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPauseNotificationsForBroadcastOrder()I
    .locals 4

    .line 712
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    const v1, 0x7f100220

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_pause_notifications_for_broadcast_order"

    invoke-direct {p0, v2, v0}, Lcom/txdriver/preferences/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 713
    iget-object v2, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    invoke-virtual {v2, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 715
    :cond_0
    iget-object v1, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    const v3, 0x7f100183

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x3c

    return v0

    .line 717
    :cond_1
    iget-object v1, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    const v3, 0x7f100262

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x78

    return v0

    :cond_2
    return v2
.end method

.method public getPersonalOrderSoundUri()Landroid/net/Uri;
    .locals 2

    .line 290
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_personal_order_sound"

    invoke-direct {p0, v1, v0}, Lcom/txdriver/preferences/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPrefDriverUuid()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_driver_uuid"

    const-string v1, "no_such_value"

    .line 751
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoundPrice()F
    .locals 2

    const-string v0, "pref_price_round"

    const/high16 v1, 0x3f800000    # 1.0f

    .line 623
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getRoundPriceUp()Z
    .locals 2

    const-string v0, "pref_price_round_up"

    const/4 v1, 0x1

    .line 647
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const v1, 0x7f100214

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_primary_server_address"

    invoke-direct {p0, v1, v0}, Lcom/txdriver/preferences/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerPort()I
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "pref_primary_server_port"

    invoke-direct {p0, v1, v0}, Lcom/txdriver/preferences/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getTaximeterState()Lcom/txdriver/taximeter/state/TaximeterState;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "pref_taximeter_state"

    .line 468
    invoke-direct {p0, v1, v0}, Lcom/txdriver/preferences/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 470
    invoke-static {v1}, Lnet/iharder/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 471
    new-instance v2, Lorg/msgpack/MessagePack;

    invoke-direct {v2}, Lorg/msgpack/MessagePack;-><init>()V

    const-class v3, Lcom/txdriver/taximeter/state/TaximeterState;

    invoke-virtual {v2, v1, v3}, Lorg/msgpack/MessagePack;->read([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/taximeter/state/TaximeterState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 474
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_timezone"

    const-string v1, "GMT+2"

    .line 274
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTravelMinTime()I
    .locals 2

    const-string v0, "pref_travel_min_time"

    const/4 v1, -0x1

    .line 496
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTypeNotificationsForBroadcastOrder()I
    .locals 4

    .line 736
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    const v1, 0x7f10017b

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_type_notifications_for_broadcast_order"

    invoke-direct {p0, v2, v0}, Lcom/txdriver/preferences/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    iget-object v2, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    invoke-virtual {v2, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 739
    :cond_0
    iget-object v1, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    const v3, 0x7f100179

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    return v2
.end method

.method public getUnbanDate()Ljava/util/Date;
    .locals 3

    const-string v0, "pref_unban_date"

    const-wide/16 v1, 0x0

    .line 404
    invoke-direct {p0, v0, v1, v2}, Lcom/txdriver/preferences/Preferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 405
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method public getVersion()I
    .locals 2

    const-string v0, "pref_version"

    const/4 v1, 0x0

    .line 195
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWebServer()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_web_server"

    const-string v1, ""

    .line 562
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAcceptOrderMapVisible()Z
    .locals 2

    const-string v0, "pref_accept_order_map_visibility"

    const/4 v1, 0x1

    .line 679
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isAllowTakeBreak()Z
    .locals 2

    const-string v0, "pref_allow_take_break"

    const/4 v1, 0x1

    .line 348
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isArchiveEnabled()Z
    .locals 2

    const-string v0, "pref_archived_enabled"

    const/4 v1, 0x0

    .line 586
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBanned()Z
    .locals 2

    const-string v0, "pref_banned"

    const/4 v1, 0x0

    .line 413
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isConfirmActions()Z
    .locals 2

    const-string v0, "pref_action_confirm"

    const/4 v1, 0x0

    .line 667
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDevMode()Z
    .locals 2

    .line 671
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "pref_dev_mode"

    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isDriverRegistrationActive()Z
    .locals 2

    const-string v0, "pref_driver_registration"

    const/4 v1, 0x0

    .line 763
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDriverStore()Z
    .locals 2

    const-string v0, "pref_driver_store"

    const/4 v1, 0x1

    .line 683
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDriverStoreArchive()Z
    .locals 2

    const-string v0, "pref_driver_store_archive"

    const/4 v1, 0x1

    .line 691
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFinOperationsEnabled()Z
    .locals 2

    const-string v0, "pref_finoperations_enabled"

    const/4 v1, 0x0

    .line 594
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHideDriverInfoOnMap()Z
    .locals 2

    .line 801
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isIllegitimateOrder()Z
    .locals 2

    const-string v0, "pref_illegitimate_order"

    const/4 v1, 0x0

    .line 614
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isInDanger()Z
    .locals 2

    const-string v0, "pref_in_danger"

    const/4 v1, 0x0

    .line 175
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLogPushAllowed()Z
    .locals 2

    .line 809
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isNotifyParkingMoving()Z
    .locals 2

    const-string v0, "pref_parking_moving_notify"

    const/4 v1, 0x1

    .line 344
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPhotoControlActive()Z
    .locals 2

    const-string v0, "pref_photo_control"

    const/4 v1, 0x0

    .line 771
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isRatingEnabled()Z
    .locals 2

    const-string v0, "pref_rating_enabled"

    const/4 v1, 0x0

    .line 602
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSavePassword()Z
    .locals 2

    const-string v0, "save_password_pref"

    const/4 v1, 0x0

    .line 312
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSessionOpened()Z
    .locals 2

    const-string v0, "pref_is_session_opened"

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowDriverParkings()Z
    .locals 2

    const-string v0, "pref_driver_parkings"

    const/4 v1, 0x1

    .line 663
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowDriversOnMap()Z
    .locals 2

    const-string v0, "pref_drivers_on_map"

    const/4 v1, 0x1

    .line 655
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowParkings()Z
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "pref_show_parkings"

    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTakeBreak()Z
    .locals 2

    const-string v0, "pref_take_a_break"

    const/4 v1, 0x0

    .line 320
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTaximeterEnabled()Z
    .locals 2

    const-string v0, "pref_taximeter_enabled"

    const/4 v1, 0x0

    .line 421
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTaximeterEnabledConfig()Z
    .locals 2

    const-string v0, "pref_taximeter_enabled_config"

    const/4 v1, 0x0

    .line 429
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isVibrate()Z
    .locals 2

    const-string v0, "pref_vibrate"

    const/4 v1, 0x1

    .line 308
    invoke-direct {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 619
    iget-object p1, p0, Lcom/txdriver/preferences/Preferences;->cache:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0}, Lcom/txdriver/preferences/Preferences;->setTakeBreak(Z)V

    .line 123
    invoke-virtual {p0, v0}, Lcom/txdriver/preferences/Preferences;->setInDanger(Z)V

    .line 124
    invoke-virtual {p0, v0}, Lcom/txdriver/preferences/Preferences;->setSessionOpened(Z)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/txdriver/preferences/Preferences;->setBanned(Z)V

    return-void
.end method

.method public saveTaximeterState(Lcom/txdriver/taximeter/state/TaximeterState;)V
    .locals 1

    const-string v0, "pref_taximeter_state"

    if-eqz p1, :cond_0

    .line 455
    :try_start_0
    invoke-virtual {p1}, Lcom/txdriver/taximeter/state/TaximeterState;->serialize()[B

    move-result-object p1

    invoke-static {p1}, Lnet/iharder/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object p1

    .line 456
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 458
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 461
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setAllowTakeBreak(Z)V
    .locals 1

    const-string v0, "pref_allow_take_break"

    .line 352
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setApplyOrderTimeout(I)V
    .locals 1

    const-string v0, "pref_apply_timeout"

    .line 270
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setArchiveEnabled(Z)V
    .locals 1

    const-string v0, "pref_archived_enabled"

    .line 590
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setArrivedStateDistance(I)V
    .locals 1

    const-string v0, "pref_arrived_state_distance"

    .line 484
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setAskForEmployments(Z)V
    .locals 1

    const-string v0, "pref_ask_for_employment_settings"

    .line 793
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setBanned(Z)V
    .locals 1

    const-string v0, "pref_banned"

    .line 417
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setBroadcastOrderNotificationIsActive(Z)V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->cache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "pref_order_notification_is_active"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCarType(J)V
    .locals 1

    const-string v0, "pref_auto_type"

    .line 509
    invoke-direct {p0, v0, p1, p2}, Lcom/txdriver/preferences/Preferences;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setCity(Lcom/txdriver/json/City;)V
    .locals 2

    .line 557
    iget v0, p1, Lcom/txdriver/json/City;->id:I

    const-string v1, "pref_city_id"

    invoke-direct {p0, v1, v0}, Lcom/txdriver/preferences/Preferences;->putInt(Ljava/lang/String;I)V

    .line 558
    iget-object p1, p1, Lcom/txdriver/json/City;->name:Ljava/lang/String;

    const-string v0, "pref_city_name"

    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCompany(Lcom/txdriver/json/Company;)V
    .locals 1

    .line 541
    iget v0, p1, Lcom/txdriver/json/Company;->id:I

    invoke-direct {p0, v0}, Lcom/txdriver/preferences/Preferences;->setCompanyId(I)V

    .line 542
    iget-object p1, p1, Lcom/txdriver/json/Company;->name:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/txdriver/preferences/Preferences;->setCompanyName(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_currency"

    .line 574
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentOrderId(J)V
    .locals 1

    const-string v0, "pref_current_order_id"

    .line 153
    invoke-direct {p0, v0, p1, p2}, Lcom/txdriver/preferences/Preferences;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setCurrentVersion()V
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    invoke-static {v0}, Lcom/txdriver/utils/Utils;->getApplicationVersion(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    const-string v2, "pref_current_version"

    invoke-direct {p0, v2, v0, v1}, Lcom/txdriver/preferences/Preferences;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setDefaults()V
    .locals 5

    .line 365
    invoke-direct {p0}, Lcom/txdriver/preferences/Preferences;->isFirsRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/txdriver/preferences/Preferences;->setPersonalOrderSoundUri(Ljava/lang/String;)V

    .line 367
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/txdriver/preferences/Preferences;->setLiveNowSoundUri(Ljava/lang/String;)V

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/txdriver/preferences/Preferences;->getCurrentVersion()J

    move-result-wide v0

    .line 371
    iget-object v2, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    invoke-static {v2}, Lcom/txdriver/utils/Utils;->getApplicationVersion(Landroid/content/Context;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v0, 0x0

    .line 373
    invoke-virtual {p0, v0}, Lcom/txdriver/preferences/Preferences;->setVersion(I)V

    const-wide/16 v0, -0x1

    .line 374
    invoke-virtual {p0, v0, v1}, Lcom/txdriver/preferences/Preferences;->setCurrentOrderId(J)V

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/txdriver/preferences/Preferences;->setCurrentVersion()V

    return-void
.end method

.method public setDevMode(Z)V
    .locals 1

    const-string v0, "pref_dev_mode"

    .line 675
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDoneStateDistance(I)V
    .locals 1

    const-string v0, "pref_done_state_distance"

    .line 492
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setDriverId(I)V
    .locals 1

    const-string v0, "pref_driver_id"

    .line 582
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setDriverRegistration(Z)V
    .locals 1

    const-string v0, "pref_driver_registration"

    .line 767
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDriverStore(Z)V
    .locals 1

    const-string v0, "pref_driver_store"

    .line 687
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDriverStoreArchive(Z)V
    .locals 1

    const-string v0, "pref_driver_store_archive"

    .line 695
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFinOperationsEnabled(Z)V
    .locals 1

    const-string v0, "pref_finoperations_enabled"

    .line 598
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHereMapsApiKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_here_maps_api_key"

    .line 755
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIdleTimeout(I)V
    .locals 1

    const-string v0, "pref_idle_timeout"

    .line 441
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setIllegitimateOrderEnabled(Z)V
    .locals 1

    const-string v0, "pref_illegitimate_order"

    .line 610
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setInDanger(Z)V
    .locals 1

    const-string v0, "pref_in_danger"

    .line 179
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLiveNowSoundUri(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_live_now_sound"

    .line 304
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLogin(Ljava/lang/String;)V
    .locals 1

    const-string v0, "login_pref"

    .line 332
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMaxAllowedParks(I)V
    .locals 1

    const-string v0, "pref_max_allowed_parks"

    .line 262
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setNotificationsNewsCounter(I)V
    .locals 1

    const-string v0, "pref_notifications_counter_news"

    .line 779
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setNotificationsPcTasksCounter(I)V
    .locals 1

    const-string v0, "pref_notifications_counter_pc_tasks"

    .line 786
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1

    const-string v0, "password_pref"

    .line 340
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPersonalOrderSoundUri(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_personal_order_sound"

    .line 295
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPhotoControl(Z)V
    .locals 1

    const-string v0, "pref_photo_control"

    .line 775
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPrefDriverUuid(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_driver_uuid"

    .line 747
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPrefTaximeterEnabledConfig(Z)V
    .locals 1

    const-string v0, "pref_taximeter_enabled_config"

    .line 433
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPrimaryServerAddress(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_primary_server_address"

    .line 230
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPrimaryServerPort(I)V
    .locals 1

    const-string v0, "pref_primary_server_port"

    .line 248
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setRatingEnabled(Z)V
    .locals 1

    const-string v0, "pref_rating_enabled"

    .line 606
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setRoundPrice(F)V
    .locals 1

    const-string v0, "pref_price_round"

    .line 637
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setRoundPriceUp(Z)V
    .locals 1

    const-string v0, "pref_price_round_up"

    .line 651
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSavePassword(Z)V
    .locals 1

    const-string v0, "save_password_pref"

    .line 316
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSessionOpened(Z)V
    .locals 1

    const-string v0, "pref_is_session_opened"

    .line 171
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setShowDriversOnMap(Z)V
    .locals 1

    const-string v0, "pref_drivers_on_map"

    .line 659
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setShowParkings(Z)V
    .locals 1

    const-string v0, "pref_show_parkings"

    .line 360
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTakeBreak(Z)V
    .locals 1

    const-string v0, "pref_take_a_break"

    .line 324
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTaximeterEnabled(Z)V
    .locals 1

    const-string v0, "pref_taximeter_enabled"

    .line 425
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_timezone"

    .line 278
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTravelMinTime(I)V
    .locals 1

    const-string v0, "pref_travel_min_time"

    .line 500
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setUnbanDate(Ljava/util/Date;)V
    .locals 2

    .line 409
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-string p1, "pref_unban_date"

    invoke-direct {p0, p1, v0, v1}, Lcom/txdriver/preferences/Preferences;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setVersion(I)V
    .locals 1

    const-string v0, "pref_version"

    .line 209
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setWebServer(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_web_server"

    .line 566
    invoke-direct {p0, v0, p1}, Lcom/txdriver/preferences/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showBusyDriversOnMap()Z
    .locals 2

    .line 805
    iget-object v0, p0, Lcom/txdriver/preferences/Preferences;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
