.class public Lru/yandex/core/InternalSignalStrengthListenerNew;
.super Lru/yandex/core/InternalSignalStrengthListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lru/yandex/core/InternalSignalStrengthListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    invoke-super {p0, p1}, Lru/yandex/core/InternalSignalStrengthListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    if-ltz p1, :cond_1

    const/16 v0, 0x63

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    sput-boolean v2, Lru/yandex/core/SignalStrengthRequest;->lastSignalStrengthKnown:Z

    shl-int/2addr p1, v2

    add-int/lit8 p1, p1, -0x71

    :goto_0
    sput p1, Lru/yandex/core/SignalStrengthRequest;->lastSignalStrength:I

    return-void

    :cond_1
    :goto_1
    sput-boolean v1, Lru/yandex/core/SignalStrengthRequest;->lastSignalStrengthKnown:Z

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    if-gez v0, :cond_3

    sput-boolean v2, Lru/yandex/core/SignalStrengthRequest;->lastSignalStrengthKnown:Z

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    if-gez v0, :cond_4

    sput-boolean v2, Lru/yandex/core/SignalStrengthRequest;->lastSignalStrengthKnown:Z

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result p1

    goto :goto_0

    :cond_4
    sput-boolean v1, Lru/yandex/core/SignalStrengthRequest;->lastSignalStrengthKnown:Z

    return-void
.end method

.method register(Landroid/content/Context;)V
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    const/16 v0, 0x100

    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method unregister(Landroid/content/Context;)V
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
