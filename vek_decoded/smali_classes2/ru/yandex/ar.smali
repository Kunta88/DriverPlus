.class public final Lru/yandex/ar;
.super Landroid/telephony/PhoneStateListener;


# static fields
.field public static volatile a:J


# instance fields
.field private b:Landroid/telephony/TelephonyManager;

.field private c:Landroid/net/wifi/WifiManager;

.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private volatile j:Z

.field private final k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/ar;->e:Z

    iput-boolean v0, p0, Lru/yandex/ar;->j:Z

    const-wide/16 v1, 0x0

    sput-wide v1, Lru/yandex/ar;->a:J

    iput-boolean p2, p0, Lru/yandex/ar;->k:Z

    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lru/yandex/ar;->b:Landroid/telephony/TelephonyManager;

    const/16 v2, 0x12

    invoke-virtual {v1, p0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v1, p0, Lru/yandex/ar;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/yandex/ar;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/yandex/ar;->i:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lru/yandex/ar;->i:Ljava/lang/String;

    iput-object v1, p0, Lru/yandex/ar;->h:Ljava/lang/String;

    iget-object v1, p0, Lru/yandex/ar;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :goto_0
    if-eqz p2, :cond_1

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lru/yandex/ar;->c:Landroid/net/wifi/WifiManager;

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lru/yandex/ar;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public a(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lru/yandex/ar;->d:I

    return p1

    :cond_0
    iget p1, p0, Lru/yandex/ar;->d:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x71

    return p1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lru/yandex/ar;->b:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lru/yandex/ar;->b:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public b()Lru/yandex/ao;
    .locals 13

    iget-boolean v0, p0, Lru/yandex/ar;->j:Z

    const-wide/16 v1, 0x12c

    const/4 v3, 0x0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-boolean v0, p0, Lru/yandex/ar;->j:Z

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    :try_start_1
    iget-object v0, p0, Lru/yandex/ar;->h:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/yandex/ar;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Lru/yandex/ao;

    invoke-direct {v0}, Lru/yandex/ao;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget v5, p0, Lru/yandex/ar;->g:I

    iput v5, v0, Lru/yandex/ao;->d:I

    iget v5, p0, Lru/yandex/ar;->f:I

    iput v5, v0, Lru/yandex/ao;->e:I

    iget-object v5, p0, Lru/yandex/ar;->h:Ljava/lang/String;

    iput-object v5, v0, Lru/yandex/ao;->b:Ljava/lang/String;

    iget-object v5, p0, Lru/yandex/ar;->i:Ljava/lang/String;

    iput-object v5, v0, Lru/yandex/ao;->c:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lru/yandex/ar;->a(Z)I

    move-result v5

    iput v5, v0, Lru/yandex/ao;->f:I

    iget-boolean v5, p0, Lru/yandex/ar;->e:Z

    iput-boolean v5, v0, Lru/yandex/ao;->g:Z

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    iget-object v5, p0, Lru/yandex/ar;->c:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lru/yandex/ar;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    if-nez v0, :cond_2

    new-instance v6, Lru/yandex/ao;

    invoke-direct {v6}, Lru/yandex/ao;-><init>()V

    move-object v0, v6

    :cond_2
    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0xc8

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_6

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    iget-object v9, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    const/4 v10, 0x0

    :goto_3
    array-length v11, v9

    const/16 v12, 0x3a

    if-ge v10, v11, :cond_4

    aget-char v11, v9, v10

    if-eq v11, v12, :cond_3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v8, v8, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v6, -0x1

    if-ge v7, v8, :cond_5

    const/16 v8, 0x2c

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_7
    iput-object v3, v0, Lru/yandex/ao;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lru/yandex/ar;->a:J

    cmp-long v7, v5, v3

    if-lez v7, :cond_8

    sput-wide v3, Lru/yandex/ar;->a:J

    goto :goto_4

    :cond_8
    sget-wide v5, Lru/yandex/ar;->a:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sub-long v5, v3, v5

    const-wide/16 v7, 0x7530

    cmp-long v9, v5, v7

    if-lez v9, :cond_9

    :try_start_3
    sput-wide v3, Lru/yandex/ar;->a:J

    iget-object v3, p0, Lru/yandex/ar;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->startScan()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    :try_start_4
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-object v3, v0

    :catchall_2
    move-object v0, v3

    :catch_1
    :cond_9
    :goto_4
    return-object v0
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, p0, Lru/yandex/ar;->f:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p1

    iput p1, p0, Lru/yandex/ar;->g:I

    :cond_0
    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/ar;->e:Z

    iput p1, p0, Lru/yandex/ar;->d:I

    return-void
.end method
