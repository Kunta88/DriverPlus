.class public Lru/yandex/core/CoreApplication;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final BUILD_BRANCH:I = 0x0

.field public static final BUILD_VER:I = 0x1

.field private static final DEFAULT_ACCURACY_METERS:I = 0x19

.field public static final ID_BUILD:I = 0x1

.field public static final ID_DATE:I = 0x3

.field public static final ID_VCS:I = 0x2

.field public static final ID_VERSION:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CoreApplication"

.field private static final RFS_DATA:I = 0x2

.field private static final RFS_INVALID:I = 0x0

.field private static final RFS_NATIVE:I = 0x5

.field private static final RFS_REMOVABLE:I = 0x4

.field private static final RFS_RES:I = 0x1

.field private static final RFS_SHARED:I = 0x6

.field private static final RFS_TMP:I = 0x3

.field public static SDK_INT:I = 0x3

.field private static final SHARED_FS_MOUNT_POINT_KEY:Ljava/lang/String; = "yandex_mapkit_shared_fs_mount_point"

.field static applicationContext:Landroid/content/Context; = null

.field private static coreApplication:Lru/yandex/core/CoreApplication; = null

.field private static final coreApplicationPrefs:Ljava/lang/String; = "ru.yandex.core.CoreApplication"

.field private static currentActivity:Lru/yandex/core/KDActivity; = null

.field private static currentView:Lru/yandex/core/KDView; = null

.field private static deliver:Ljava/lang/Runnable; = null

.field private static deviceDpi:I = 0x0

.field private static internalSignalStrengthListener:Lru/yandex/core/InternalSignalStrengthListener; = null

.field private static isActive:Z = false

.field private static isAuthSupported:Z = false

.field private static isDeviceIdSupported:Z = false

.field private static isPaused:Z = true

.field private static mainThreadHandler:Landroid/os/Handler; = null

.field private static final otherFsRootKey:Ljava/lang/String; = "ru.yandex.core.CoreApplication.otherFsRoot"

.field private static runningActivityCount:I

.field private static final runningJobs:Ljava/util/HashMap;

.field private static signalStrengthListener:Lru/yandex/core/SignalStrengthListener;

.field private static telephonyListener:Lru/yandex/core/TelephonyListener;


# instance fields
.field private assetsCache:Ljava/util/Map;

.field private currStatus:Z

.field private otherFsRoot:Ljava/lang/String;

.field private params:Lru/yandex/core/CoreApplicationParams;

.field private final pauseResumeListeners:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    sput v0, Lru/yandex/core/CoreApplication;->SDK_INT:I

    goto :goto_1

    :cond_0
    const-class v0, Landroid/os/Build$VERSION;

    const-string v1, "SDK_INT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    :goto_1
    new-instance v0, Lru/yandex/b;

    invoke-direct {v0}, Lru/yandex/b;-><init>()V

    sput-object v0, Lru/yandex/core/CoreApplication;->deliver:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lru/yandex/core/CoreApplication;->runningJobs:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lru/yandex/core/CoreApplication;->pauseResumeListeners:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lru/yandex/core/CoreApplication;->otherFsRoot:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/yandex/core/CoreApplication;->assetsCache:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/core/CoreApplication;->currStatus:Z

    return-void
.end method

.method public static synthetic access$000()V
    .locals 0

    invoke-static {}, Lru/yandex/core/CoreApplication;->deliverEvents()V

    return-void
.end method

.method static synthetic access$100(J)V
    .locals 0

    invoke-static {p0, p1}, Lru/yandex/core/CoreApplication;->signalTimerFired(J)V

    return-void
.end method

.method public static addAccelerometerListener(JI)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    new-instance v2, Lru/yandex/core/AccelerometerListener;

    invoke-direct {v2, p0, p1}, Lru/yandex/core/AccelerometerListener;-><init>(J)V

    invoke-virtual {v0, v2, v1, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-object v2
.end method

.method public static createCompass(J)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lru/yandex/core/Compass;

    invoke-direct {v0, p0, p1}, Lru/yandex/core/Compass;-><init>(J)V

    return-object v0
.end method

.method public static createHandlerForCurrentThread()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method public static createNetworkReachabilityListener(J)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lru/yandex/core/NetworkReachabilityListener;

    sget-object v1, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1, v1}, Lru/yandex/core/NetworkReachabilityListener;-><init>(JLandroid/content/Context;)V

    return-object v0
.end method

.method public static createSignalStrengthRequest(J)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lru/yandex/core/SignalStrengthRequest;

    invoke-direct {v0, p0, p1}, Lru/yandex/core/SignalStrengthRequest;-><init>(J)V

    return-object v0
.end method

.method public static createTelephonyNetworkInfoRequest(J)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lru/yandex/core/TelephonyNetworkInfoRequest;

    invoke-direct {v0, p0, p1}, Lru/yandex/core/TelephonyNetworkInfoRequest;-><init>(J)V

    return-object v0
.end method

.method public static createWifiScanRequest(J)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lru/yandex/core/WifiScanRequest;

    invoke-direct {v0, p0, p1}, Lru/yandex/core/WifiScanRequest;-><init>(J)V

    return-object v0
.end method

.method private static native deliverEvents()V
.end method

.method private static native doRedraw()V
.end method

.method private static native doStartJob(I)V
.end method

.method private static native doStopJob(I)V
.end method

.method public static forceStopJob(I)V
    .locals 2

    sget-object v0, Lru/yandex/core/CoreApplication;->runningJobs:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lru/yandex/core/KDActivity;

    invoke-virtual {p0}, Lru/yandex/core/KDActivity;->onStopRequired()V

    return-void
.end method

.method public static getActivity()Lru/yandex/core/KDActivity;
    .locals 1

    sget-object v0, Lru/yandex/core/CoreApplication;->currentActivity:Lru/yandex/core/KDActivity;

    return-object v0
.end method

.method private static getApkPath()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lru/yandex/core/CoreApplication;->getCoreApplication()Lru/yandex/core/CoreApplication;

    move-result-object v0

    invoke-direct {v0}, Lru/yandex/core/CoreApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppBuildIdBranch()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lru/yandex/core/CoreApplication;->getAppBuildIdSplited()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static native getAppBuildIdFromNative()Ljava/lang/String;
.end method

.method public static getAppBuildIdSplited()[Ljava/lang/String;
    .locals 2

    invoke-static {}, Lru/yandex/core/CoreApplication;->getAppBuildIdFromNative()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppBuildIdVer()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lru/yandex/core/CoreApplication;->getAppBuildIdSplited()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static native getAppFileSystemRootFromNative()Ljava/lang/String;
.end method

.method public static native getAppNameFromNative()Ljava/lang/String;
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 3

    sget-object v0, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    sget-object v1, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getAssetOffsetAndLength(Ljava/lang/String;)[I
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lru/yandex/core/CoreApplication;->getAppNameFromNative()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    new-array p0, v1, [I

    fill-array-data p0, :array_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".mp3"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lru/yandex/core/CoreApplication;->coreApplication:Lru/yandex/core/CoreApplication;

    iget-object v0, v0, Lru/yandex/core/CoreApplication;->assetsCache:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lru/yandex/core/CoreApplication;->coreApplication:Lru/yandex/core/CoreApplication;

    iget-object v2, v2, Lru/yandex/core/CoreApplication;->assetsCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lru/yandex/core/CoreApplication;->coreApplication:Lru/yandex/core/CoreApplication;

    iget-object v1, v1, Lru/yandex/core/CoreApplication;->assetsCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    monitor-exit v0

    return-object p0

    :cond_1
    new-array v1, v1, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v4, 0x1

    aput v2, v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    long-to-int v6, v5

    aput v6, v1, v3

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    long-to-int v3, v5

    aput v3, v1, v4

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    :try_start_4
    sget-object v2, Lru/yandex/core/CoreApplication;->coreApplication:Lru/yandex/core/CoreApplication;

    iget-object v2, v2, Lru/yandex/core/CoreApplication;->assetsCache:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public static getAuthPair()[Ljava/lang/String;
    .locals 7

    sget-boolean v0, Lru/yandex/core/CoreApplication;->isAuthSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lru/yandex/core/CoreApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "content://mail/accounts"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v4}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ProviderInfo;

    invoke-static {v2, v3}, Lru/yandex/s;->a(Landroid/content/ContentResolver;Landroid/content/pm/ProviderInfo;)Lru/yandex/r;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ProviderInfo;

    iget-boolean v5, v3, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v5, :cond_2

    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v6, "ru.yandex.auth."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v2, v3}, Lru/yandex/s;->a(Landroid/content/ContentResolver;Landroid/content/pm/ProviderInfo;)Lru/yandex/r;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_6

    iget-object v0, v3, Lru/yandex/r;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v3, Lru/yandex/r;->b:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, v3, Lru/yandex/r;->a:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_5

    iget-object v1, v3, Lru/yandex/r;->a:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, v3, Lru/yandex/r;->a:Ljava/lang/String;

    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v4

    const/4 v0, 0x1

    iget-object v2, v3, Lru/yandex/r;->b:Ljava/lang/String;

    aput-object v2, v1, v0

    :cond_6
    :goto_2
    return-object v1
.end method

.method public static getCoreApplication()Lru/yandex/core/CoreApplication;
    .locals 2

    sget-object v0, Lru/yandex/core/CoreApplication;->coreApplication:Lru/yandex/core/CoreApplication;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here CoreApplication must exists!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCoreApplicationParams()Lru/yandex/core/CoreApplicationParams;
    .locals 1

    sget-object v0, Lru/yandex/core/CoreApplication;->coreApplication:Lru/yandex/core/CoreApplication;

    iget-object v0, v0, Lru/yandex/core/CoreApplication;->params:Lru/yandex/core/CoreApplicationParams;

    return-object v0
.end method

.method public static getDPI()I
    .locals 3

    sget v0, Lru/yandex/core/CoreApplication;->deviceDpi:I

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sget-object v1, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :try_start_0
    const-class v1, Landroid/util/DisplayMetrics;

    const-string v2, "densityDpi"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lru/yandex/core/CoreApplication;->deviceDpi:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/high16 v1, 0x43200000    # 160.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lru/yandex/core/CoreApplication;->deviceDpi:I

    :cond_0
    :goto_0
    sget v0, Lru/yandex/core/CoreApplication;->deviceDpi:I

    return v0
.end method

.method private static getDataPath()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lru/yandex/core/CoreApplication;->getCoreApplication()Lru/yandex/core/CoreApplication;

    move-result-object v0

    invoke-direct {v0}, Lru/yandex/core/CoreApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    return-object v0
.end method

.method private getDefaultRootForShared()Ljava/lang/String;
    .locals 1

    const-string v0, "/mnt/sdcard/external_sd/yandexmaps"

    invoke-static {v0}, Lru/yandex/core/CoreApplication;->isDirExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/mnt/sdcard/external_sd"

    return-object v0

    :cond_0
    const-string v0, "/mnt/sdcard/yandexmaps"

    invoke-static {v0}, Lru/yandex/core/CoreApplication;->isDirExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/mnt/sdcard"

    return-object v0

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 6

    sget-object v0, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lru/yandex/v;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ProviderInfo;

    iget-boolean v4, v3, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v5, "ru.yandex.device.id."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v1, v3}, Lru/yandex/v;->a(Landroid/content/ContentResolver;Landroid/content/pm/ProviderInfo;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lru/yandex/v;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private getExternalStorageDirectory()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lru/yandex/core/CoreApplication;->getAppNameFromNative()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIsDeviceIdSupported()Z
    .locals 1

    sget-boolean v0, Lru/yandex/core/CoreApplication;->isDeviceIdSupported:Z

    return v0
.end method

.method private getLocalStorageDirectory()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lru/yandex/core/CoreApplication;->getAppNameFromNative()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getMainThreadHandler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lru/yandex/core/CoreApplication;->mainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getNetworkReachabilityStatus()I
    .locals 1

    sget-object v0, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lru/yandex/core/NetworkReachabilityListener;->getNetworkReachabilityStatus(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static getRootForFileSystem(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lru/yandex/core/CoreApplication;->getCoreApplication()Lru/yandex/core/CoreApplication;

    move-result-object v0

    invoke-direct {v0, p0}, Lru/yandex/core/CoreApplication;->getRootForFileSystemImpl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRootForFileSystemImpl(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lru/yandex/core/CoreApplication;->otherFsRoot:Ljava/lang/String;

    if-nez p1, :cond_1

    invoke-static {}, Lru/yandex/core/CoreApplication;->isSdcardAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lru/yandex/core/CoreApplication;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lru/yandex/core/CoreApplication;->getLocalStorageDirectory()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lru/yandex/core/CoreApplication;->otherFsRoot:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lru/yandex/core/CoreApplication;->otherFsRoot:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lru/yandex/core/CoreApplication;->getRootForShared()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-static {}, Lru/yandex/core/CoreApplication;->getDataPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    invoke-static {}, Lru/yandex/core/CoreApplication;->getApkPath()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private getRootForShared()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lru/yandex/core/CoreApplication;->readRootForSharedFromGlobalSettings()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lru/yandex/core/CoreApplication;->getDefaultRootForShared()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/yandex/core/CoreApplication;->writeRootForSharedToGlobalSettings(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {v0}, Lru/yandex/core/CoreApplication;->isDirExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method

.method public static getView()Lru/yandex/core/KDView;
    .locals 1

    sget-object v0, Lru/yandex/core/CoreApplication;->currentView:Lru/yandex/core/KDView;

    return-object v0
.end method

.method private static native init()I
.end method

.method public static initOnce(Landroid/content/Context;Lru/yandex/core/CoreApplicationParams;)V
    .locals 1

    sget-object v0, Lru/yandex/core/CoreApplication;->coreApplication:Lru/yandex/core/CoreApplication;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    new-instance p0, Lru/yandex/core/CoreApplication;

    invoke-direct {p0}, Lru/yandex/core/CoreApplication;-><init>()V

    sput-object p0, Lru/yandex/core/CoreApplication;->coreApplication:Lru/yandex/core/CoreApplication;

    invoke-direct {p0, p1}, Lru/yandex/core/CoreApplication;->initialize(Lru/yandex/core/CoreApplicationParams;)V

    :cond_0
    return-void
.end method

.method private initialize(Lru/yandex/core/CoreApplicationParams;)V
    .locals 2

    iput-object p1, p0, Lru/yandex/core/CoreApplication;->params:Lru/yandex/core/CoreApplicationParams;

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lru/yandex/core/CoreApplication;->mainThreadHandler:Landroid/os/Handler;

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lru/yandex/core/CoreApplicationParams;->getNativeLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_local"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p1}, Lru/yandex/core/CoreApplicationParams;->getNativeLibraryName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private static isDirExists(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method static isSdcardAvailable()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static kdCancelTimer(Lru/yandex/core/CoreApplication$KDTimer;)I
    .locals 2

    iget-object v0, p0, Lru/yandex/core/CoreApplication$KDTimer;->callerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lru/yandex/core/CoreApplication$KDTimer;->cancel()V

    const/4 p0, 0x0

    return p0
.end method

.method private static kdGFXChangeLoaderYAN(Z)V
    .locals 1

    sget-object v0, Lru/yandex/core/CoreApplication;->currentView:Lru/yandex/core/KDView;

    invoke-virtual {v0}, Lru/yandex/core/KDView;->getSurfaceView()Lru/yandex/core/KDSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lru/yandex/core/KDSurfaceView;->kdGFXChangeLoaderYAN(Z)V

    return-void
.end method

.method private static kdGFXEnterLoaderYAN()V
    .locals 1

    sget-object v0, Lru/yandex/core/CoreApplication;->currentView:Lru/yandex/core/KDView;

    invoke-virtual {v0}, Lru/yandex/core/KDView;->getSurfaceView()Lru/yandex/core/KDSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/core/KDSurfaceView;->kdGFXEnterLoaderYAN()V

    return-void
.end method

.method private static kdGFXInitLoaderYAN()V
    .locals 1

    sget-object v0, Lru/yandex/core/CoreApplication;->currentView:Lru/yandex/core/KDView;

    invoke-virtual {v0}, Lru/yandex/core/KDView;->getSurfaceView()Lru/yandex/core/KDSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/core/KDSurfaceView;->kdGFXInitLoaderYAN()V

    return-void
.end method

.method private static kdGFXLeaveLoaderYAN()V
    .locals 1

    sget-object v0, Lru/yandex/core/CoreApplication;->currentView:Lru/yandex/core/KDView;

    invoke-virtual {v0}, Lru/yandex/core/KDView;->getSurfaceView()Lru/yandex/core/KDSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/core/KDSurfaceView;->kdGFXLeaveLoaderYAN()V

    return-void
.end method

.method private static kdGFXQueryMainContextYAN(I)I
    .locals 1

    sget-object v0, Lru/yandex/core/CoreApplication;->currentView:Lru/yandex/core/KDView;

    invoke-virtual {v0}, Lru/yandex/core/KDView;->getSurfaceView()Lru/yandex/core/KDSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lru/yandex/core/KDSurfaceView;->kdGFXQueryMainContextYAN(I)I

    move-result p0

    return p0
.end method

.method private static kdGFXRequestRedraw()V
    .locals 1

    sget-object v0, Lru/yandex/core/CoreApplication;->currentView:Lru/yandex/core/KDView;

    invoke-virtual {v0}, Lru/yandex/core/KDView;->getSurfaceView()Lru/yandex/core/KDSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/core/KDSurfaceView;->kdGFXRequestRedraw()V

    return-void
.end method

.method private static kdGFXShutdownLoaderYAN()V
    .locals 1

    sget-object v0, Lru/yandex/core/CoreApplication;->currentView:Lru/yandex/core/KDView;

    invoke-virtual {v0}, Lru/yandex/core/KDView;->getSurfaceView()Lru/yandex/core/KDSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/core/KDSurfaceView;->kdGFXShutdownLoaderYAN()V

    return-void
.end method

.method public static kdSetTimer(JIJJ)Lru/yandex/core/CoreApplication$KDTimer;
    .locals 9

    new-instance v8, Lru/yandex/core/CoreApplication$KDTimer;

    const/16 v0, 0x3d

    if-eq p2, v0, :cond_0

    const/4 p2, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v8

    move-wide v2, p0

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lru/yandex/core/CoreApplication$KDTimer;-><init>(ZJJJ)V

    return-object v8
.end method

.method public static native mountSharedFileSystem()V
.end method

.method public static onActivityPause(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lru/yandex/core/CoreApplication;->currentActivity:Lru/yandex/core/KDActivity;

    if-ne p0, v0, :cond_1

    sget-boolean p0, Lru/yandex/core/CoreApplication;->isActive:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lru/yandex/core/CoreApplication;->setActive(Z)V

    :cond_1
    return-void
.end method

.method public static onActivityResume(Landroid/app/Activity;)V
    .locals 2

    sget v0, Lru/yandex/core/CoreApplication;->runningActivityCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lru/yandex/core/CoreApplication;->isPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lru/yandex/core/CoreApplication;->isPaused:Z

    invoke-static {}, Lru/yandex/core/CoreApplication;->mountSharedFileSystem()V

    sget-object v0, Lru/yandex/core/CoreApplication;->coreApplication:Lru/yandex/core/CoreApplication;

    invoke-direct {v0}, Lru/yandex/core/CoreApplication;->signalApplicationResumed()V

    :cond_0
    sget-object v0, Lru/yandex/core/CoreApplication;->currentActivity:Lru/yandex/core/KDActivity;

    if-ne p0, v0, :cond_3

    sget-boolean p0, Lru/yandex/core/CoreApplication;->isActive:Z

    if-eqz p0, :cond_1

    return-void

    :cond_1
    iget-boolean p0, v0, Lru/yandex/core/KDActivity;->isStarted:Z

    if-nez p0, :cond_2

    sget-object p0, Lru/yandex/core/CoreApplication;->currentActivity:Lru/yandex/core/KDActivity;

    invoke-virtual {p0}, Lru/yandex/core/KDActivity;->startJob()V

    :cond_2
    invoke-static {v1}, Lru/yandex/core/CoreApplication;->setActive(Z)V

    :cond_3
    return-void
.end method

.method public static onActivityStart(Landroid/app/Activity;)V
    .locals 0

    sget p0, Lru/yandex/core/CoreApplication;->runningActivityCount:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lru/yandex/core/CoreApplication;->runningActivityCount:I

    return-void
.end method

.method public static onActivityStop(Landroid/app/Activity;)V
    .locals 1

    sget p0, Lru/yandex/core/CoreApplication;->runningActivityCount:I

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    sput p0, Lru/yandex/core/CoreApplication;->runningActivityCount:I

    if-nez p0, :cond_0

    sget-boolean p0, Lru/yandex/core/CoreApplication;->isPaused:Z

    if-nez p0, :cond_0

    sput-boolean v0, Lru/yandex/core/CoreApplication;->isPaused:Z

    invoke-static {}, Lru/yandex/core/CoreApplication;->unmountSharedFileSystem()V

    sget-object p0, Lru/yandex/core/CoreApplication;->coreApplication:Lru/yandex/core/CoreApplication;

    invoke-direct {p0}, Lru/yandex/core/CoreApplication;->signalApplicationPaused()V

    :cond_0
    return-void
.end method

.method private static onNativeAssertionFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    const-class v2, Lru/yandex/core/AssertHandler;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "condition"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "file"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "line"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object p0, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static onNativeCrashed()V
    .locals 4

    invoke-static {}, Lru/yandex/core/CoreApplication;->getAppBuildIdFromNative()Ljava/lang/String;

    move-result-object v0

    const-string v1, "master_market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "crashed here (native trace should follow after the Java trace)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lru/yandex/core/CoreApplication;->getAppNameFromNative()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Build ID is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lru/yandex/core/CoreApplication;->getAppBuildIdFromNative()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    const-class v3, Lru/yandex/core/CrashHandler;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private static onStopJobRequired()V
    .locals 1

    sget-object v0, Lru/yandex/core/CoreApplication;->currentActivity:Lru/yandex/core/KDActivity;

    invoke-virtual {v0}, Lru/yandex/core/KDActivity;->onStopRequired()V

    return-void
.end method

.method private static native postEvent([I)V
.end method

.method public static quitEventLoop()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public static readRootForSharedFromGlobalSettings()Ljava/lang/String;
    .locals 2

    sget-object v0, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "yandex_mapkit_shared_fs_mount_point"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static redraw()V
    .locals 0

    invoke-static {}, Lru/yandex/core/CoreApplication;->doRedraw()V

    return-void
.end method

.method public static native registerCurrentThread()I
.end method

.method public static native registerCurrentThreadAsMain()V
.end method

.method private static native remountSharedFileSystem()V
.end method

.method public static removeAccelerometerListener(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    check-cast p0, Lru/yandex/core/AccelerometerListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method private restoreFsRoot()V
    .locals 3

    sget-object v0, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    const-string v1, "ru.yandex.core.CoreApplication"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ru.yandex.core.CoreApplication.otherFsRoot"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/yandex/core/CoreApplication;->otherFsRoot:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    invoke-static {v2}, Lru/yandex/core/CoreApplication;->getRootForFileSystem(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lru/yandex/core/CoreApplication;->otherFsRoot:Ljava/lang/String;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lru/yandex/core/CoreApplication;->otherFsRoot:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lru/yandex/core/CoreApplication;->otherFsRoot:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void
.end method

.method public static runEventLoop()V
    .locals 0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public static sendEvent([I)V
    .locals 0

    invoke-static {p0}, Lru/yandex/core/CoreApplication;->postEvent([I)V

    return-void
.end method

.method private static setActive(Z)V
    .locals 3

    sget-object v0, Lru/yandex/core/CoreApplication;->internalSignalStrengthListener:Lru/yandex/core/InternalSignalStrengthListener;

    if-nez v0, :cond_1

    sget v0, Lru/yandex/core/CoreApplication;->SDK_INT:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    new-instance v0, Lru/yandex/core/InternalSignalStrengthListenerOld;

    invoke-direct {v0}, Lru/yandex/core/InternalSignalStrengthListenerOld;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lru/yandex/core/InternalSignalStrengthListenerNew;

    invoke-direct {v0}, Lru/yandex/core/InternalSignalStrengthListenerNew;-><init>()V

    :goto_0
    sput-object v0, Lru/yandex/core/CoreApplication;->internalSignalStrengthListener:Lru/yandex/core/InternalSignalStrengthListener;

    :cond_1
    sget-boolean v0, Lru/yandex/core/CoreApplication;->isActive:Z

    if-eq v0, p0, :cond_3

    sput-boolean p0, Lru/yandex/core/CoreApplication;->isActive:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    sget-object p0, Lru/yandex/core/CoreApplication;->internalSignalStrengthListener:Lru/yandex/core/InternalSignalStrengthListener;

    sget-object v2, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lru/yandex/core/InternalSignalStrengthListener;->register(Landroid/content/Context;)V

    new-array p0, v0, [I

    const/16 v0, 0x76

    aput v0, p0, v1

    invoke-static {p0}, Lru/yandex/core/CoreApplication;->postEvent([I)V

    return-void

    :cond_2
    sput-boolean v1, Lru/yandex/core/SignalStrengthRequest;->lastSignalStrengthKnown:Z

    sget-object p0, Lru/yandex/core/CoreApplication;->internalSignalStrengthListener:Lru/yandex/core/InternalSignalStrengthListener;

    sget-object v2, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lru/yandex/core/InternalSignalStrengthListener;->unregister(Landroid/content/Context;)V

    new-array p0, v0, [I

    const/16 v0, 0x75

    aput v0, p0, v1

    invoke-static {p0}, Lru/yandex/core/CoreApplication;->postEvent([I)V

    :cond_3
    return-void
.end method

.method public static setCurrent(Lru/yandex/core/KDActivity;Lru/yandex/core/KDView;)V
    .locals 0

    sput-object p0, Lru/yandex/core/CoreApplication;->currentActivity:Lru/yandex/core/KDActivity;

    sput-object p1, Lru/yandex/core/CoreApplication;->currentView:Lru/yandex/core/KDView;

    return-void
.end method

.method public static setDeviceId(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lru/yandex/v;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setRootForShared(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lru/yandex/core/CoreApplication;->isDirExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Lru/yandex/core/CoreApplication;->writeRootForSharedToGlobalSettings(Ljava/lang/String;)V

    invoke-static {}, Lru/yandex/core/CoreApplication;->remountSharedFileSystem()V

    const/4 p0, 0x1

    return p0
.end method

.method private static native shutdown()I
.end method

.method private signalApplicationPaused()V
    .locals 3

    new-instance v0, Ljava/util/WeakHashMap;

    iget-object v1, p0, Lru/yandex/core/CoreApplication;->pauseResumeListeners:Ljava/util/WeakHashMap;

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/core/PauseResumeListener;

    :try_start_0
    invoke-interface {v1}, Lru/yandex/core/PauseResumeListener;->onPaused()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2d

    aput v2, v0, v1

    invoke-static {v0}, Lru/yandex/core/CoreApplication;->sendEvent([I)V

    return-void
.end method

.method private signalApplicationResumed()V
    .locals 3

    new-instance v0, Ljava/util/WeakHashMap;

    iget-object v1, p0, Lru/yandex/core/CoreApplication;->pauseResumeListeners:Ljava/util/WeakHashMap;

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/yandex/core/PauseResumeListener;

    :try_start_0
    invoke-interface {v1}, Lru/yandex/core/PauseResumeListener;->onResumed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2e

    aput v2, v0, v1

    invoke-static {v0}, Lru/yandex/core/CoreApplication;->sendEvent([I)V

    return-void
.end method

.method public static signalThreadWithNativeEventLoop(Landroid/os/Handler;)V
    .locals 1

    sget-object v0, Lru/yandex/core/CoreApplication;->deliver:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static native signalTimerFired(J)V
.end method

.method public static startGPS()V
    .locals 7

    sget-object v0, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "gps"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    sget-object v6, Lru/yandex/core/CoreApplication;->coreApplication:Lru/yandex/core/CoreApplication;

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static startJob(ILru/yandex/core/KDActivity;)V
    .locals 2

    sget-object v0, Lru/yandex/core/CoreApplication;->runningJobs:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lru/yandex/core/CoreApplication;->doStartJob(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Here runningJobs can\'t contain this jobID! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static startListeningCurrentTelephonyNetwork()V
    .locals 3

    sget-object v0, Lru/yandex/core/CoreApplication;->telephonyListener:Lru/yandex/core/TelephonyListener;

    if-nez v0, :cond_0

    new-instance v0, Lru/yandex/core/TelephonyListener;

    invoke-direct {v0}, Lru/yandex/core/TelephonyListener;-><init>()V

    sput-object v0, Lru/yandex/core/CoreApplication;->telephonyListener:Lru/yandex/core/TelephonyListener;

    :cond_0
    sget-object v0, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v1, Lru/yandex/core/CoreApplication;->telephonyListener:Lru/yandex/core/TelephonyListener;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static startListeningTelephonySignalStrength()V
    .locals 3

    sget-object v0, Lru/yandex/core/CoreApplication;->signalStrengthListener:Lru/yandex/core/SignalStrengthListener;

    if-nez v0, :cond_0

    new-instance v0, Lru/yandex/core/SignalStrengthListener;

    invoke-direct {v0}, Lru/yandex/core/SignalStrengthListener;-><init>()V

    sput-object v0, Lru/yandex/core/CoreApplication;->signalStrengthListener:Lru/yandex/core/SignalStrengthListener;

    :cond_0
    sget-object v0, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v1, Lru/yandex/core/CoreApplication;->signalStrengthListener:Lru/yandex/core/SignalStrengthListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static stopGPS()V
    .locals 2

    sget-object v0, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    sget-object v1, Lru/yandex/core/CoreApplication;->coreApplication:Lru/yandex/core/CoreApplication;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method public static stopJob(I)V
    .locals 3

    sget-object v0, Lru/yandex/core/CoreApplication;->runningJobs:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lru/yandex/core/CoreApplication;->doStopJob(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Here runningJobs MUST contain this jobID! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stopListeningCurrentTelephonyNetwork()V
    .locals 3

    sget-object v0, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v1, Lru/yandex/core/CoreApplication;->telephonyListener:Lru/yandex/core/TelephonyListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static stopListeningTelephonySignalStrength()V
    .locals 3

    sget-object v0, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v1, Lru/yandex/core/CoreApplication;->signalStrengthListener:Lru/yandex/core/SignalStrengthListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static native unmountSharedFileSystem()V
.end method

.method public static native unregisterCurrentThread()I
.end method

.method public static native unregisterCurrentThreadAsMain()V
.end method

.method private static writeRootForSharedToGlobalSettings(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lru/yandex/core/CoreApplication;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "yandex_mapkit_shared_fs_mount_point"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public addPauseResumeListener(Lru/yandex/core/PauseResumeListener;)V
    .locals 2

    iget-object v0, p0, Lru/yandex/core/CoreApplication;->pauseResumeListeners:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lru/yandex/core/CoreApplication;->sendLocation(Landroid/location/Location;I)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    const/4 p1, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lru/yandex/core/CoreApplication;->currStatus:Z

    if-eq v1, v2, :cond_1

    new-array v0, v0, [I

    const/16 v2, 0x66

    aput v2, v0, p3

    aput p2, v0, p1

    invoke-static {v0}, Lru/yandex/core/CoreApplication;->postEvent([I)V

    :cond_1
    iput-boolean v1, p0, Lru/yandex/core/CoreApplication;->currStatus:Z

    return-void
.end method

.method public removePauseResumeListener(Lru/yandex/core/PauseResumeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lru/yandex/core/CoreApplication;->pauseResumeListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method sendLocation(Landroid/location/Location;I)V
    .locals 8

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x65

    aput v2, v0, v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    mul-double v1, v1, v3

    double-to-int v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    mul-double v1, v1, v3

    double-to-int v1, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    goto :goto_0

    :cond_0
    move-wide v6, v2

    :goto_0
    double-to-int v1, v6

    const/4 v6, 0x3

    aput v1, v0, v6

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    goto :goto_1

    :cond_1
    move-wide v6, v2

    :goto_1
    double-to-int v6, v6

    aput v6, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    goto :goto_2

    :cond_2
    const-wide v6, 0x406f400000000000L    # 250.0

    :goto_2
    double-to-int v6, v6

    aput v6, v0, v1

    const/4 v1, 0x6

    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    mul-double v2, v2, v4

    :cond_3
    double-to-int p1, v2

    aput p1, v0, v1

    const/4 p1, 0x7

    aput p2, v0, p1

    invoke-static {v0}, Lru/yandex/core/CoreApplication;->postEvent([I)V

    return-void
.end method
