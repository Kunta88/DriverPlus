.class final Lru/yandex/core/SignalStrengthListener;
.super Landroid/telephony/PhoneStateListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method private static native signal(I)V
.end method


# virtual methods
.method public onSignalStrengthChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthChanged(I)V

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, -0x71

    invoke-static {p1}, Lru/yandex/core/SignalStrengthListener;->signal(I)V

    return-void
.end method
