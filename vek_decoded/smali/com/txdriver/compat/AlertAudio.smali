.class public final Lcom/txdriver/compat/AlertAudio;
.super Ljava/lang/Object;
.source "AlertAudio.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static maximum(Landroid/content/Context;I)V
    .registers 4

    .line 31
    :try_start_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 32
    if-eqz p0, :cond_12

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_12} :catch_13

    .line 35
    :cond_12
    goto :goto_1b

    .line 33
    :catch_13
    move-exception p0

    .line 34
    const-string p1, "AlertAudio"

    const-string v0, "System restricted alert volume"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    :goto_1b
    return-void
.end method

.method public static prepare(Landroid/content/Context;Landroid/media/MediaPlayer;)V
    .registers 4

    .line 38
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 39
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 40
    invoke-static {p0, v0}, Lcom/txdriver/compat/AlertAudio;->maximum(Landroid/content/Context;I)V

    .line 41
    return-void
.end method

.method public static prepare(Landroid/content/Context;Landroid/media/Ringtone;)V
    .registers 3

    .line 43
    if-nez p1, :cond_3

    return-void

    .line 44
    :cond_3
    invoke-virtual {p1}, Landroid/media/Ringtone;->getStreamType()I

    move-result v0

    invoke-static {p0, v0}, Lcom/txdriver/compat/AlertAudio;->maximum(Landroid/content/Context;I)V

    .line 46
    :try_start_a
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_15

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/media/Ringtone;->setVolume(F)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_15} :catch_16

    .line 47
    :cond_15
    goto :goto_1e

    :catch_16
    move-exception p0

    const-string p1, "AlertAudio"

    const-string v0, "System restricted ringtone gain"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :goto_1e
    return-void
.end method

.method public static vibrateAutoAccept(Landroid/content/Context;)V
    .registers 5

    .line 14
    :try_start_0
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 15
    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_3a

    .line 16
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-wide/16 v2, 0x1770

    if-lt v0, v1, :cond_36

    .line 17
    const/4 v0, -0x1

    invoke-static {v2, v3, v0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 20
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 21
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 17
    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    goto :goto_39

    .line 23
    :cond_36
    invoke-virtual {p0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_39
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_39} :catch_3b

    .line 27
    :goto_39
    goto :goto_43

    .line 15
    :cond_3a
    :goto_3a
    return-void

    .line 25
    :catch_3b
    move-exception p0

    .line 26
    const-string v0, "AlertAudio"

    const-string v1, "System restricted auto-accept vibration"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    :goto_43
    return-void
.end method
