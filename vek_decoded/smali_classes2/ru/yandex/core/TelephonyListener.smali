.class final Lru/yandex/core/TelephonyListener;
.super Landroid/telephony/PhoneStateListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method private static native signal(IILjava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    sget-object p1, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Lru/yandex/n;->a(Landroid/content/Context;)Lru/yandex/n;

    move-result-object p1

    iget v0, p1, Lru/yandex/n;->a:I

    iget v1, p1, Lru/yandex/n;->b:I

    iget-object v2, p1, Lru/yandex/n;->c:Ljava/lang/String;

    iget-object p1, p1, Lru/yandex/n;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lru/yandex/core/TelephonyListener;->signal(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    sget-object p1, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Lru/yandex/n;->a(Landroid/content/Context;)Lru/yandex/n;

    move-result-object p1

    iget v0, p1, Lru/yandex/n;->a:I

    iget v1, p1, Lru/yandex/n;->b:I

    iget-object v2, p1, Lru/yandex/n;->c:Ljava/lang/String;

    iget-object p1, p1, Lru/yandex/n;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lru/yandex/core/TelephonyListener;->signal(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
