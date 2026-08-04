.class public Lru/yandex/core/InternalSignalStrengthListenerOld;
.super Lru/yandex/core/InternalSignalStrengthListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lru/yandex/core/InternalSignalStrengthListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Lru/yandex/core/InternalSignalStrengthListener;->onSignalStrengthChanged(I)V

    if-ltz p1, :cond_1

    const/16 v0, 0x63

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lru/yandex/core/SignalStrengthRequest;->lastSignalStrengthKnown:Z

    shl-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x71

    sput p1, Lru/yandex/core/SignalStrengthRequest;->lastSignalStrength:I

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    sput-boolean p1, Lru/yandex/core/SignalStrengthRequest;->lastSignalStrengthKnown:Z

    return-void
.end method

.method register(Landroid/content/Context;)V
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x2

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
