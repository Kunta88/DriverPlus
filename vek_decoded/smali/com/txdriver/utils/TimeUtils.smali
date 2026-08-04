.class public Lcom/txdriver/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertTimeZone(Lcom/txdriver/App;Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    .line 93
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p0}, Lcom/txdriver/utils/TimeUtils;->getTimeZone(Lcom/txdriver/App;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/txdriver/utils/TimeUtils;->convertTimeZone(Ljava/util/Date;Ljava/util/TimeZone;Ljava/util/TimeZone;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static convertTimeZone(Ljava/util/Date;Ljava/util/TimeZone;Ljava/util/TimeZone;)Ljava/util/Date;
    .locals 7

    .line 98
    invoke-virtual {p1, p0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    int-to-long v3, v0

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 102
    :goto_0
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    int-to-long v5, p1

    add-long/2addr v5, v3

    .line 105
    invoke-virtual {p2, p0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result p1

    int-to-long v1, p1

    .line 108
    :cond_1
    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    int-to-long p1, p1

    add-long/2addr p1, v1

    .line 110
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sub-long/2addr p1, v5

    add-long/2addr v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static dateToString(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 127
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatSecconds(I)Ljava/lang/String;
    .locals 4

    .line 34
    div-int/lit8 v0, p0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    .line 35
    div-int/lit16 v1, p0, 0xe10

    rem-int/lit8 v1, v1, 0x18

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    rem-int/lit8 p0, p0, 0x3c

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    const-string p0, "%02d:%02d:%02d"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateFormat()Ljava/text/DateFormat;
    .locals 3

    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd.MM.yy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static getDateTimeFormat()Ljava/text/DateFormat;
    .locals 3

    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "HH:mm dd.MM"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static getTimeFormat()Ljava/text/DateFormat;
    .locals 3

    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "HH:mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static getTimeZone(Lcom/txdriver/App;)Ljava/util/TimeZone;
    .locals 0

    .line 114
    invoke-virtual {p0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/txdriver/preferences/Preferences;->getTimeZone()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public static getWeekDay()I
    .locals 2

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    .line 88
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isFirstDateAfter(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/Boolean;
    .locals 2

    .line 131
    invoke-static {}, Lcom/txdriver/utils/TimeUtils;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    const/4 v1, 0x0

    .line 135
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object p0, v1

    .line 138
    :goto_0
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :goto_1
    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 142
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static millisecondsToMinutes(J)D
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lcom/txdriver/utils/TimeUtils;->millisecondsToSecconds(J)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-static {p0}, Lcom/txdriver/utils/TimeUtils;->secondsToMinutes(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public static millisecondsToSecconds(J)D
    .locals 0

    long-to-float p0, p0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    return-wide p0
.end method

.method public static minutesFromMidnight()I
    .locals 1

    .line 70
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/txdriver/utils/TimeUtils;->minutesFromMidnight(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public static minutesFromMidnight(Ljava/util/Date;)I
    .locals 5

    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 76
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 p0, 0xb

    const/4 v3, 0x0

    .line 77
    invoke-virtual {v0, p0, v3}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 78
    invoke-virtual {v0, p0, v3}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 79
    invoke-virtual {v0, p0, v3}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 80
    invoke-virtual {v0, p0, v3}, Ljava/util/Calendar;->set(II)V

    .line 81
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 83
    invoke-static {v1, v2}, Lcom/txdriver/utils/TimeUtils;->millisecondsToSecconds(J)D

    move-result-wide v0

    double-to-int p0, v0

    invoke-static {p0}, Lcom/txdriver/utils/TimeUtils;->secondsToMinutes(I)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public static minutesToMilliseconds(I)I
    .locals 2

    int-to-double v0, p0

    .line 22
    invoke-static {v0, v1}, Lcom/txdriver/utils/TimeUtils;->minutesToSeconds(D)I

    move-result p0

    invoke-static {p0}, Lcom/txdriver/utils/TimeUtils;->secondsToMilliseconds(I)I

    move-result p0

    return p0
.end method

.method public static minutesToSeconds(D)I
    .locals 2

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    mul-double p0, p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public static secondsToMilliseconds(I)I
    .locals 0

    mul-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static secondsToMinutes(I)D
    .locals 2

    int-to-float p0, p0

    const/high16 v0, 0x42700000    # 60.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    return-wide v0
.end method

.method public static stringToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .line 119
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 121
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    .line 122
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    return-object p0
.end method
