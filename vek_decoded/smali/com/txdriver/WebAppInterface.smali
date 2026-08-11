.class public Lcom/txdriver/WebAppInterface;
.super Ljava/lang/Object;
.source "WebAppInterface.java"


# instance fields
.field private final app:Lcom/txdriver/App;

.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/txdriver/WebAppInterface;->context:Landroid/content/Context;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/txdriver/App;

    iput-object p1, p0, Lcom/txdriver/WebAppInterface;->app:Lcom/txdriver/App;

    return-void
.end method


# virtual methods
.method public finishActivity()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/txdriver/WebAppInterface;->context:Landroid/content/Context;

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    .line 33
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method public getLocation()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/txdriver/WebAppInterface;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getLocationManager()Lcom/txdriver/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 54
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "lat"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 55
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "lng"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 56
    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "speed"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 57
    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "bearing"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 58
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public playBroadcastSound()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/txdriver/WebAppInterface;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getSoundManager()Lcom/txdriver/notification/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/notification/SoundManager;->playBroadcastSound()V

    return-void
.end method

.method public playPersonalOrderSound()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/txdriver/WebAppInterface;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getSoundManager()Lcom/txdriver/notification/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/notification/SoundManager;->playPersonalOrderSound()V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/txdriver/WebAppInterface;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/txdriver/utils/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
