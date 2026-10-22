.class public final Lcom/txdriver/compat/AutoAcceptAlert;
.super Ljava/lang/Object;
.source "AutoAcceptAlert.java"


# static fields
.field private static final MAIN:Landroid/os/Handler;

.field private static volatile active:Z

.field private static cleanup:Ljava/lang/Runnable;

.field private static player:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/txdriver/compat/AutoAcceptAlert;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .registers 1

    .line 11
    invoke-static {p0}, Lcom/txdriver/compat/AutoAcceptAlert;->begin(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Landroid/media/MediaPlayer;)V
    .registers 1

    .line 11
    invoke-static {p0}, Lcom/txdriver/compat/AutoAcceptAlert;->finish(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$200()Landroid/media/MediaPlayer;
    .registers 1

    .line 11
    sget-object v0, Lcom/txdriver/compat/AutoAcceptAlert;->player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaPlayer;J)V
    .registers 3

    .line 11
    invoke-static {p0, p1, p2}, Lcom/txdriver/compat/AutoAcceptAlert;->deadline(Landroid/media/MediaPlayer;J)V

    return-void
.end method

.method private static begin(Landroid/content/Context;)V
    .registers 10

    .line 43
    sget-object v0, Lcom/txdriver/compat/AutoAcceptAlert;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_5

    return-void

    .line 44
    :cond_5
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 45
    sput-object v0, Lcom/txdriver/compat/AutoAcceptAlert;->player:Landroid/media/MediaPlayer;

    .line 46
    const/4 v7, 0x1

    sput-boolean v7, Lcom/txdriver/compat/AutoAcceptAlert;->active:Z

    .line 48
    :try_start_f
    invoke-static {p0, v0}, Lcom/txdriver/compat/AlertAudio;->prepare(Landroid/content/Context;Landroid/media/MediaPlayer;)V

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "audio/new_order_notification_v2.mp3"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1c} :catch_59

    .line 50
    :try_start_1c
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_4d

    .line 51
    if-eqz v8, :cond_31

    :try_start_2e
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 52
    :cond_31
    invoke-virtual {v0, v7}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 53
    new-instance v1, Lcom/txdriver/compat/AutoAcceptAlert$3;

    invoke-direct {v1, p0}, Lcom/txdriver/compat/AutoAcceptAlert$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 66
    new-instance p0, Lcom/txdriver/compat/AutoAcceptAlert$4;

    invoke-direct {p0}, Lcom/txdriver/compat/AutoAcceptAlert$4;-><init>()V

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 73
    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lcom/txdriver/compat/AutoAcceptAlert;->deadline(Landroid/media/MediaPlayer;J)V

    .line 74
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4c} :catch_59

    .line 78
    goto :goto_64

    .line 49
    :catchall_4d
    move-exception p0

    if-eqz v8, :cond_58

    :try_start_50
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception v1

    :try_start_55
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_58
    :goto_58
    throw p0
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_59} :catch_59

    .line 75
    :catch_59
    move-exception p0

    .line 76
    const-string v1, "AutoAcceptAlert"

    const-string v2, "Cannot prepare auto-accept alert"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    invoke-static {v0}, Lcom/txdriver/compat/AutoAcceptAlert;->finish(Landroid/media/MediaPlayer;)V

    .line 79
    :goto_64
    return-void
.end method

.method private static deadline(Landroid/media/MediaPlayer;J)V
    .registers 5

    .line 36
    sget-object v0, Lcom/txdriver/compat/AutoAcceptAlert;->cleanup:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/txdriver/compat/AutoAcceptAlert;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/txdriver/compat/AutoAcceptAlert;->cleanup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    :cond_b
    new-instance v0, Lcom/txdriver/compat/AutoAcceptAlert$2;

    invoke-direct {v0, p0}, Lcom/txdriver/compat/AutoAcceptAlert$2;-><init>(Landroid/media/MediaPlayer;)V

    sput-object v0, Lcom/txdriver/compat/AutoAcceptAlert;->cleanup:Ljava/lang/Runnable;

    .line 38
    sget-object p0, Lcom/txdriver/compat/AutoAcceptAlert;->MAIN:Landroid/os/Handler;

    sget-object v0, Lcom/txdriver/compat/AutoAcceptAlert;->cleanup:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    return-void
.end method

.method private static finish(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 26
    sget-object v0, Lcom/txdriver/compat/AutoAcceptAlert;->player:Landroid/media/MediaPlayer;

    if-eq v0, p0, :cond_5

    return-void

    .line 27
    :cond_5
    const/4 v0, 0x0

    sput-object v0, Lcom/txdriver/compat/AutoAcceptAlert;->player:Landroid/media/MediaPlayer;

    .line 28
    const/4 v1, 0x0

    sput-boolean v1, Lcom/txdriver/compat/AutoAcceptAlert;->active:Z

    .line 29
    sget-object v1, Lcom/txdriver/compat/AutoAcceptAlert;->cleanup:Ljava/lang/Runnable;

    if-eqz v1, :cond_16

    sget-object v1, Lcom/txdriver/compat/AutoAcceptAlert;->MAIN:Landroid/os/Handler;

    sget-object v2, Lcom/txdriver/compat/AutoAcceptAlert;->cleanup:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    :cond_16
    sput-object v0, Lcom/txdriver/compat/AutoAcceptAlert;->cleanup:Ljava/lang/Runnable;

    .line 32
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    .line 33
    return-void
.end method

.method public static isActive()Z
    .registers 1

    .line 18
    sget-boolean v0, Lcom/txdriver/compat/AutoAcceptAlert;->active:Z

    return v0
.end method

.method public static play(Landroid/content/Context;)V
    .registers 3

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 22
    sget-object v0, Lcom/txdriver/compat/AutoAcceptAlert;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/txdriver/compat/AutoAcceptAlert$1;

    invoke-direct {v1, p0}, Lcom/txdriver/compat/AutoAcceptAlert$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    return-void
.end method
