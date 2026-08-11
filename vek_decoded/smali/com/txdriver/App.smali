.class public Lcom/txdriver/App;
.super Landroid/app/Application;
.source "App.java"


# instance fields
.field private activityLifecycleObserver:Lcom/txdriver/ActivityLifecycleObserver;

.field private client:Lcom/txdriver/socket/Client;

.field private driversStatesManager:Lcom/txdriver/driver/DriversStatesManager;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private locationManager:Lcom/txdriver/location/LocationManager;

.field private newsletterManager:Lcom/txdriver/news/NewsletterManager;

.field private orderAcceptManager:Lcom/txdriver/filter/OrderAcceptManager;

.field private orderReminder:Lcom/txdriver/reminder/OrderReminder;

.field private pcTasksNotificationManager:Lcom/txdriver/news/PCTasksNotificationManager;

.field private preferences:Lcom/txdriver/preferences/Preferences;

.field private requestManager:Lcom/txdriver/http/RequestManager;

.field private soundManager:Lcom/txdriver/notification/SoundManager;

.field private taximeter:Lcom/txdriver/taximeter/Taximeter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private createActivityLifecycleObserver()V
    .locals 1

    .line 117
    new-instance v0, Lcom/txdriver/ActivityLifecycleObserver;

    invoke-direct {v0}, Lcom/txdriver/ActivityLifecycleObserver;-><init>()V

    iput-object v0, p0, Lcom/txdriver/App;->activityLifecycleObserver:Lcom/txdriver/ActivityLifecycleObserver;

    return-void
.end method

.method private createEventBus()V
    .locals 2

    .line 79
    invoke-static {}, Lde/greenrobot/event/EventBus;->builder()Lde/greenrobot/event/EventBusBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBusBuilder;->logNoSubscriberMessages(Z)Lde/greenrobot/event/EventBusBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBusBuilder;->sendNoSubscriberEvent(Z)Lde/greenrobot/event/EventBusBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/event/EventBusBuilder;->build()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/App;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method private createLocationManager()V
    .locals 2

    .line 87
    new-instance v0, Lcom/txdriver/location/LocationManager;

    invoke-direct {v0, p0}, Lcom/txdriver/location/LocationManager;-><init>(Lcom/txdriver/App;)V

    iput-object v0, p0, Lcom/txdriver/App;->locationManager:Lcom/txdriver/location/LocationManager;

    .line 88
    new-instance v1, Lcom/txdriver/location/LocationSender;

    invoke-direct {v1, p0}, Lcom/txdriver/location/LocationSender;-><init>(Lcom/txdriver/App;)V

    invoke-virtual {v0, v1}, Lcom/txdriver/location/LocationManager;->addLocationChangeListener(Lcom/txdriver/location/LocationManager$LocationChangeListener;)V

    return-void
.end method

.method private createNewsletterManager()V
    .locals 1

    .line 105
    new-instance v0, Lcom/txdriver/news/NewsletterManager;

    invoke-direct {v0, p0}, Lcom/txdriver/news/NewsletterManager;-><init>(Lcom/txdriver/App;)V

    iput-object v0, p0, Lcom/txdriver/App;->newsletterManager:Lcom/txdriver/news/NewsletterManager;

    return-void
.end method

.method private createOrderAcceptManager()V
    .locals 1

    .line 121
    new-instance v0, Lcom/txdriver/filter/OrderAcceptManager;

    invoke-direct {v0, p0}, Lcom/txdriver/filter/OrderAcceptManager;-><init>(Lcom/txdriver/App;)V

    iput-object v0, p0, Lcom/txdriver/App;->orderAcceptManager:Lcom/txdriver/filter/OrderAcceptManager;

    return-void
.end method

.method private createOrderReminder()V
    .locals 1

    .line 97
    new-instance v0, Lcom/txdriver/reminder/OrderReminder;

    invoke-direct {v0, p0}, Lcom/txdriver/reminder/OrderReminder;-><init>(Lcom/txdriver/App;)V

    iput-object v0, p0, Lcom/txdriver/App;->orderReminder:Lcom/txdriver/reminder/OrderReminder;

    return-void
.end method

.method private createPCTasksNotificationManager()V
    .locals 1

    .line 109
    new-instance v0, Lcom/txdriver/news/PCTasksNotificationManager;

    invoke-direct {v0, p0}, Lcom/txdriver/news/PCTasksNotificationManager;-><init>(Lcom/txdriver/App;)V

    iput-object v0, p0, Lcom/txdriver/App;->pcTasksNotificationManager:Lcom/txdriver/news/PCTasksNotificationManager;

    return-void
.end method

.method private createPrefecences()V
    .locals 1

    .line 75
    new-instance v0, Lcom/txdriver/preferences/Preferences;

    invoke-direct {v0, p0}, Lcom/txdriver/preferences/Preferences;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/txdriver/App;->preferences:Lcom/txdriver/preferences/Preferences;

    return-void
.end method

.method private createRequestManager()V
    .locals 1

    .line 113
    new-instance v0, Lcom/txdriver/http/RequestManager;

    invoke-direct {v0}, Lcom/txdriver/http/RequestManager;-><init>()V

    iput-object v0, p0, Lcom/txdriver/App;->requestManager:Lcom/txdriver/http/RequestManager;

    return-void
.end method

.method private createSocketClient()V
    .locals 3

    .line 83
    new-instance v0, Lcom/txdriver/socket/Client;

    new-instance v1, Lcom/txdriver/socket/SocketHandler;

    invoke-direct {v1, p0}, Lcom/txdriver/socket/SocketHandler;-><init>(Lcom/txdriver/App;)V

    new-instance v2, Lcom/txdriver/socket/SocketFrameDecoder;

    invoke-direct {v2}, Lcom/txdriver/socket/SocketFrameDecoder;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/txdriver/socket/Client;-><init>(Lcom/txdriver/socket/SocketClientListener;Lcom/txdriver/socket/FrameDecoder;)V

    iput-object v0, p0, Lcom/txdriver/App;->client:Lcom/txdriver/socket/Client;

    return-void
.end method

.method private createSoundManager()V
    .locals 1

    .line 101
    new-instance v0, Lcom/txdriver/notification/SoundManager;

    invoke-direct {v0, p0}, Lcom/txdriver/notification/SoundManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txdriver/App;->soundManager:Lcom/txdriver/notification/SoundManager;

    return-void
.end method

.method private createTaximeter()V
    .locals 2

    .line 92
    new-instance v0, Lcom/txdriver/taximeter/Taximeter;

    invoke-virtual {p0}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/txdriver/taximeter/Taximeter;-><init>(Lcom/txdriver/App;Lcom/txdriver/location/LocationManager;)V

    iput-object v0, p0, Lcom/txdriver/App;->taximeter:Lcom/txdriver/taximeter/Taximeter;

    .line 93
    invoke-virtual {v0}, Lcom/txdriver/taximeter/Taximeter;->restore()V

    return-void
.end method

.method private createdriversStatesManager()V
    .locals 1

    .line 129
    new-instance v0, Lcom/txdriver/driver/DriversStatesManager;

    invoke-direct {v0, p0}, Lcom/txdriver/driver/DriversStatesManager;-><init>(Lcom/txdriver/App;)V

    iput-object v0, p0, Lcom/txdriver/App;->driversStatesManager:Lcom/txdriver/driver/DriversStatesManager;

    return-void
.end method


# virtual methods
.method public getActivityLifecycleObserver()Lcom/txdriver/ActivityLifecycleObserver;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/txdriver/App;->activityLifecycleObserver:Lcom/txdriver/ActivityLifecycleObserver;

    return-object v0
.end method

.method public getClient()Lcom/txdriver/socket/Client;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/txdriver/App;->client:Lcom/txdriver/socket/Client;

    return-object v0
.end method

.method public getDriversStatesManager()Lcom/txdriver/driver/DriversStatesManager;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/txdriver/App;->driversStatesManager:Lcom/txdriver/driver/DriversStatesManager;

    return-object v0
.end method

.method public getEventBus()Lde/greenrobot/event/EventBus;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/txdriver/App;->eventBus:Lde/greenrobot/event/EventBus;

    return-object v0
.end method

.method public getLocationManager()Lcom/txdriver/location/LocationManager;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/txdriver/App;->locationManager:Lcom/txdriver/location/LocationManager;

    return-object v0
.end method

.method public getNewsletterManager()Lcom/txdriver/news/NewsletterManager;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/txdriver/App;->newsletterManager:Lcom/txdriver/news/NewsletterManager;

    return-object v0
.end method

.method public getOrderAcceptManager()Lcom/txdriver/filter/OrderAcceptManager;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/txdriver/App;->orderAcceptManager:Lcom/txdriver/filter/OrderAcceptManager;

    return-object v0
.end method

.method public getOrderReminder()Lcom/txdriver/reminder/OrderReminder;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/txdriver/App;->orderReminder:Lcom/txdriver/reminder/OrderReminder;

    return-object v0
.end method

.method public getPcTasksNotificationManager()Lcom/txdriver/news/PCTasksNotificationManager;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/txdriver/App;->pcTasksNotificationManager:Lcom/txdriver/news/PCTasksNotificationManager;

    return-object v0
.end method

.method public getPreferences()Lcom/txdriver/preferences/Preferences;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/txdriver/App;->preferences:Lcom/txdriver/preferences/Preferences;

    return-object v0
.end method

.method public getRequestManager()Lcom/txdriver/http/RequestManager;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/txdriver/App;->requestManager:Lcom/txdriver/http/RequestManager;

    return-object v0
.end method

.method public getSoundManager()Lcom/txdriver/notification/SoundManager;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/txdriver/App;->soundManager:Lcom/txdriver/notification/SoundManager;

    return-object v0
.end method

.method public getTaximeter()Lcom/txdriver/taximeter/Taximeter;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/txdriver/App;->taximeter:Lcom/txdriver/taximeter/Taximeter;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 54
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "java.net.preferIPv4Stack"

    const-string v1, "true"

    .line 55
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.net.preferIPv6Addresses"

    const-string v1, "false"

    .line 56
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    invoke-static {p0}, Lcom/activeandroid/ActiveAndroid;->initialize(Landroid/app/Application;)V

    .line 58
    invoke-direct {p0}, Lcom/txdriver/App;->createPrefecences()V

    .line 59
    invoke-direct {p0}, Lcom/txdriver/App;->createEventBus()V

    .line 60
    invoke-direct {p0}, Lcom/txdriver/App;->createSocketClient()V

    .line 61
    invoke-direct {p0}, Lcom/txdriver/App;->createLocationManager()V

    .line 62
    invoke-direct {p0}, Lcom/txdriver/App;->createTaximeter()V

    .line 63
    invoke-direct {p0}, Lcom/txdriver/App;->createOrderReminder()V

    .line 64
    invoke-direct {p0}, Lcom/txdriver/App;->createSoundManager()V

    .line 65
    invoke-direct {p0}, Lcom/txdriver/App;->createNewsletterManager()V

    .line 66
    invoke-direct {p0}, Lcom/txdriver/App;->createPCTasksNotificationManager()V

    .line 67
    invoke-direct {p0}, Lcom/txdriver/App;->createRequestManager()V

    .line 68
    invoke-direct {p0}, Lcom/txdriver/App;->createActivityLifecycleObserver()V

    .line 69
    invoke-direct {p0}, Lcom/txdriver/App;->createOrderAcceptManager()V

    .line 71
    invoke-static {p0}, Lcom/txdriver/utils/EventLogger;->create(Lcom/txdriver/App;)V

    return-void
.end method

.method public restoreFlagOnExit()V
    .locals 2

    .line 177
    invoke-virtual {p0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/txdriver/preferences/Preferences;->setAskForEmployments(Z)V

    return-void
.end method
