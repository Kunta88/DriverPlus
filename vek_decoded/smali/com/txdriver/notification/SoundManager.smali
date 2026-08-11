.class public Lcom/txdriver/notification/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private final app:Lcom/txdriver/App;

.field private currentPlay:I

.field private delay:I

.field private mContext:Landroid/content/Context;

.field private mRingtone:Landroid/media/Ringtone;

.field private final mVibrator:Landroid/os/Vibrator;

.field private maxRepeat:I

.field private plaingQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private playAsyncIsRunning:Z

.field private playAsyncQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/notification/SoundManager;->plaingQueue:Ljava/util/LinkedList;

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lcom/txdriver/notification/SoundManager;->currentPlay:I

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/txdriver/notification/SoundManager;->maxRepeat:I

    .line 38
    iput v0, p0, Lcom/txdriver/notification/SoundManager;->delay:I

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/notification/SoundManager;->playAsyncQueue:Ljava/util/LinkedList;

    .line 44
    iput-object p1, p0, Lcom/txdriver/notification/SoundManager;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/txdriver/notification/SoundManager;->mVibrator:Landroid/os/Vibrator;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/txdriver/App;

    iput-object p1, p0, Lcom/txdriver/notification/SoundManager;->app:Lcom/txdriver/App;

    return-void
.end method

.method private getVibratorPattern()[J
    .locals 6

    const/16 v0, 0x13

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/16 v1, 0xc8

    int-to-long v1, v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    const/4 v3, 0x4

    aput-wide v1, v0, v3

    const/4 v3, 0x5

    aput-wide v1, v0, v3

    const/16 v3, 0x1f4

    int-to-long v3, v3

    const/4 v5, 0x6

    aput-wide v3, v0, v5

    const/4 v5, 0x7

    aput-wide v3, v0, v5

    const/16 v5, 0x8

    aput-wide v1, v0, v5

    const/16 v5, 0x9

    aput-wide v3, v0, v5

    const/16 v5, 0xa

    aput-wide v1, v0, v5

    const/16 v5, 0xb

    aput-wide v3, v0, v5

    const/16 v5, 0xc

    aput-wide v3, v0, v5

    const/16 v3, 0xd

    aput-wide v1, v0, v3

    const/16 v3, 0xe

    aput-wide v1, v0, v3

    const/16 v3, 0xf

    aput-wide v1, v0, v3

    const/16 v3, 0x10

    aput-wide v1, v0, v3

    const/16 v3, 0x11

    aput-wide v1, v0, v3

    const/16 v1, 0x3e8

    int-to-long v1, v1

    const/16 v3, 0x12

    aput-wide v1, v0, v3

    return-object v0
.end method

.method private initRingtone(Landroid/net/Uri;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/txdriver/notification/SoundManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/notification/SoundManager;->mRingtone:Landroid/media/Ringtone;

    return-void
.end method

.method private declared-synchronized play(Landroid/net/Uri;)V
    .locals 1

    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/txdriver/notification/SoundManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/txdriver/notification/SoundManager;->plaingQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 135
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/txdriver/notification/SoundManager;->initRingtone(Landroid/net/Uri;)V

    .line 136
    iget-object p1, p0, Lcom/txdriver/notification/SoundManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    .line 137
    iget-object p1, p0, Lcom/txdriver/notification/SoundManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p1}, Landroid/media/Ringtone;->play()V

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/txdriver/notification/SoundManager;->app:Lcom/txdriver/App;

    invoke-virtual {p1}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/txdriver/preferences/Preferences;->isVibrate()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 140
    invoke-direct {p0}, Lcom/txdriver/notification/SoundManager;->vibrate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private playFile(Ljava/lang/String;F)V
    .locals 7

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/txdriver/notification/SoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 56
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 58
    invoke-virtual {v6, p2, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 59
    invoke-virtual {v6, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 60
    invoke-virtual {v6, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 61
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private runToPlayAsyncQueue()V
    .locals 4

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/txdriver/notification/SoundManager;->playAsyncQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/txdriver/notification/SoundManager;->playAsyncIsRunning:Z

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/txdriver/notification/SoundManager;->playAsyncQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    .line 89
    iput-boolean v1, p0, Lcom/txdriver/notification/SoundManager;->playAsyncIsRunning:Z

    .line 91
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 92
    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    .line 94
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 95
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xa

    .line 96
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 97
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 94
    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    :cond_0
    const v0, 0x3f666666    # 0.9f

    .line 100
    invoke-virtual {v2, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 101
    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 102
    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 103
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized vibrate()V
    .locals 3

    monitor-enter p0

    .line 149
    :try_start_0
    invoke-direct {p0}, Lcom/txdriver/notification/SoundManager;->getVibratorPattern()[J

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/txdriver/notification/SoundManager;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 151
    invoke-virtual {v1, v0, v2}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addToPlayAsyncQueue(Ljava/lang/String;II)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/txdriver/notification/SoundManager;->playAsyncQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 80
    iput p2, p0, Lcom/txdriver/notification/SoundManager;->maxRepeat:I

    .line 81
    iput p3, p0, Lcom/txdriver/notification/SoundManager;->delay:I

    .line 82
    invoke-direct {p0}, Lcom/txdriver/notification/SoundManager;->runToPlayAsyncQueue()V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 217
    iget v0, p0, Lcom/txdriver/notification/SoundManager;->currentPlay:I

    iget v1, p0, Lcom/txdriver/notification/SoundManager;->maxRepeat:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 218
    iput v0, p0, Lcom/txdriver/notification/SoundManager;->currentPlay:I

    .line 219
    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 220
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 221
    new-instance v1, Lcom/txdriver/notification/SoundManager$3;

    invoke-direct {v1, p0, p1}, Lcom/txdriver/notification/SoundManager$3;-><init>(Lcom/txdriver/notification/SoundManager;Landroid/media/MediaPlayer;)V

    iget p1, p0, Lcom/txdriver/notification/SoundManager;->delay:I

    .line 226
    invoke-static {p1}, Lcom/txdriver/utils/TimeUtils;->secondsToMilliseconds(I)I

    move-result p1

    int-to-long v2, p1

    .line 221
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 229
    iput-boolean v2, p0, Lcom/txdriver/notification/SoundManager;->playAsyncIsRunning:Z

    .line 230
    invoke-direct {p0}, Lcom/txdriver/notification/SoundManager;->runToPlayAsyncQueue()V

    :goto_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 236
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 237
    new-instance v1, Lcom/txdriver/notification/SoundManager$4;

    invoke-direct {v1, p0, p1}, Lcom/txdriver/notification/SoundManager$4;-><init>(Lcom/txdriver/notification/SoundManager;Landroid/media/MediaPlayer;)V

    iget p1, p0, Lcom/txdriver/notification/SoundManager;->delay:I

    .line 242
    invoke-static {p1}, Lcom/txdriver/utils/TimeUtils;->secondsToMilliseconds(I)I

    move-result p1

    int-to-long v2, p1

    .line 237
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public playBroadcastSound()V
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/txdriver/notification/SoundManager;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getLiveNowSoundUri()Landroid/net/Uri;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-direct {p0, v0}, Lcom/txdriver/notification/SoundManager;->play(Landroid/net/Uri;)V

    .line 178
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 179
    new-instance v1, Lcom/txdriver/notification/SoundManager$1;

    invoke-direct {v1, p0}, Lcom/txdriver/notification/SoundManager$1;-><init>(Lcom/txdriver/notification/SoundManager;)V

    const/4 v2, 0x1

    .line 184
    invoke-static {v2}, Lcom/txdriver/utils/TimeUtils;->secondsToMilliseconds(I)I

    move-result v2

    int-to-long v2, v2

    .line 179
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public playFailedConnectSound()V
    .locals 2

    const-string v0, "audio/CyanAlarm.ogg"

    const/high16 v1, 0x3f800000    # 1.0f

    .line 119
    invoke-direct {p0, v0, v1}, Lcom/txdriver/notification/SoundManager;->playFile(Ljava/lang/String;F)V

    return-void
.end method

.method public playFirstOnParking()V
    .locals 2

    const-string v0, "audio/car_horn.mp3"

    const/high16 v1, 0x3f800000    # 1.0f

    .line 123
    invoke-direct {p0, v0, v1}, Lcom/txdriver/notification/SoundManager;->playFile(Ljava/lang/String;F)V

    return-void
.end method

.method public playIcqSound()V
    .locals 2

    const-string v0, "audio/icq.mp3"

    const/high16 v1, 0x3f800000    # 1.0f

    .line 115
    invoke-direct {p0, v0, v1}, Lcom/txdriver/notification/SoundManager;->playFile(Ljava/lang/String;F)V

    return-void
.end method

.method public playNotificationSound()V
    .locals 1

    .line 212
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/txdriver/notification/SoundManager;->play(Landroid/net/Uri;)V

    return-void
.end method

.method public playNotificationSound(I)V
    .locals 4

    .line 201
    invoke-virtual {p0}, Lcom/txdriver/notification/SoundManager;->playNotificationSound()V

    .line 202
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 203
    new-instance v1, Lcom/txdriver/notification/SoundManager$2;

    invoke-direct {v1, p0}, Lcom/txdriver/notification/SoundManager$2;-><init>(Lcom/txdriver/notification/SoundManager;)V

    .line 208
    invoke-static {p1}, Lcom/txdriver/utils/TimeUtils;->secondsToMilliseconds(I)I

    move-result p1

    int-to-long v2, p1

    .line 203
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public playParkingMovingSound()V
    .locals 2

    const-string v0, "audio/KeypressStandard.ogg"

    const/high16 v1, 0x3f000000    # 0.5f

    .line 50
    invoke-direct {p0, v0, v1}, Lcom/txdriver/notification/SoundManager;->playFile(Ljava/lang/String;F)V

    return-void
.end method

.method public playPersonalOrderSound()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/txdriver/notification/SoundManager;->app:Lcom/txdriver/App;

    invoke-virtual {v0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->getPersonalOrderSoundUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/txdriver/notification/SoundManager;->play(Landroid/net/Uri;)V

    return-void
.end method

.method public playReconnectingSound()V
    .locals 2

    const-string v0, "raw/connect_error"

    const/high16 v1, 0x3f800000    # 1.0f

    .line 111
    invoke-direct {p0, v0, v1}, Lcom/txdriver/notification/SoundManager;->playFile(Ljava/lang/String;F)V

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/txdriver/notification/SoundManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/txdriver/notification/SoundManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/txdriver/notification/SoundManager;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/txdriver/notification/SoundManager;->plaingQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 196
    invoke-direct {p0, v0}, Lcom/txdriver/notification/SoundManager;->play(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
