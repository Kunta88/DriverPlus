.class public final Lcom/txdriver/compat/SafeHttp;
.super Ljava/lang/Object;
.source "SafeHttp.java"


# static fields
.field private static final health:Lcom/txdriver/compat/WebRequestHealth;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    new-instance v0, Lcom/txdriver/compat/WebRequestHealth;

    invoke-direct {v0}, Lcom/txdriver/compat/WebRequestHealth;-><init>()V

    sput-object v0, Lcom/txdriver/compat/SafeHttp;->health:Lcom/txdriver/compat/WebRequestHealth;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/txdriver/compat/SafeHttp;->request(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/txdriver/compat/SafeHttp;->request(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIndicatorNote()Ljava/lang/String;
    .registers 3

    .line 11
    sget-object v0, Lcom/txdriver/compat/SafeHttp;->health:Lcom/txdriver/compat/WebRequestHealth;

    invoke-static {}, Lcom/txdriver/compat/SafeHttp;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/txdriver/compat/WebRequestHealth;->note(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastFailure()Ljava/lang/String;
    .registers 1

    .line 10
    sget-object v0, Lcom/txdriver/compat/SafeHttp;->health:Lcom/txdriver/compat/WebRequestHealth;

    invoke-virtual {v0}, Lcom/txdriver/compat/WebRequestHealth;->failure()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static now()J
    .registers 4

    .line 9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static perform(Ljava/lang/String;Ljava/lang/String;[BLcom/txdriver/compat/WebDiagnostics$Trace;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_17d

    .line 34
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_175

    invoke-virtual {v0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_175

    .line 35
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 36
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1b
    const/4 v3, 0x4

    if-ge v2, v3, :cond_16d

    .line 37
    invoke-virtual {p3, v0}, Lcom/txdriver/compat/WebDiagnostics$Trace;->endpoint(Ljava/net/URL;)V

    iput v2, p3, Lcom/txdriver/compat/WebDiagnostics$Trace;->redirects:I

    const-string v3, "redirect_check"

    iput-object v3, p3, Lcom/txdriver/compat/WebDiagnostics$Trace;->phase:Ljava/lang/String;

    .line 38
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_165

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    const-string v3, "http"

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_165

    .line 40
    :cond_49
    const-string v3, "open"

    iput-object v3, p3, Lcom/txdriver/compat/WebDiagnostics$Trace;->phase:Ljava/lang/String;

    .line 41
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 42
    const/16 v5, 0x2710

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 43
    const-string v5, "Accept"

    const-string v6, "application/json"

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    if-eqz p1, :cond_6c

    const-string v5, "uuid"

    invoke-virtual {v3, v5, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_6c
    if-eqz p2, :cond_96

    .line 47
    :try_start_6e
    const-string v5, "upload"

    iput-object v5, p3, Lcom/txdriver/compat/WebDiagnostics$Trace;->phase:Ljava/lang/String;

    .line 48
    const-string v5, "POST"

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v5, "Content-Type"

    const-string v6, "application/json; charset=UTF-8"

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    array-length v5, p2

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 50
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_8a
    .catchall {:try_start_6e .. :try_end_8a} :catchall_160

    :try_start_8a
    invoke-virtual {v5, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_91

    :try_start_8d
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    goto :goto_96

    :catchall_91
    move-exception p0

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    throw p0

    .line 52
    :cond_96
    :goto_96
    const-string v5, "response_headers"

    iput-object v5, p3, Lcom/txdriver/compat/WebDiagnostics$Trace;->phase:Ljava/lang/String;

    .line 53
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    iput v5, p3, Lcom/txdriver/compat/WebDiagnostics$Trace;->status:I

    .line 54
    const/16 v6, 0x12d

    if-eq v5, v6, :cond_11a

    const/16 v6, 0x12e

    if-eq v5, v6, :cond_11a

    const/16 v6, 0x12f

    if-eq v5, v6, :cond_11a

    const/16 v6, 0x133

    if-eq v5, v6, :cond_11a

    const/16 v6, 0x134

    if-ne v5, v6, :cond_b5

    goto :goto_11a

    .line 62
    :cond_b5
    const/16 p0, 0xc8

    if-lt v5, p0, :cond_101

    const/16 p0, 0x12c

    if-ge v5, p0, :cond_101

    .line 63
    const-string p0, "response_body"

    iput-object p0, p3, Lcom/txdriver/compat/WebDiagnostics$Trace;->phase:Ljava/lang/String;

    .line 64
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-direct {p0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_8d .. :try_end_cc} :catchall_160

    .line 66
    :try_start_cc
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p2, 0x1000

    new-array p2, p2, [C

    .line 67
    :goto_d5
    invoke-virtual {p0, p2}, Ljava/io/InputStreamReader;->read([C)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_f1

    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/2addr v0, p3

    const/high16 v2, 0x400000

    if-gt v0, v2, :cond_e9

    .line 69
    invoke-virtual {p1, p2, v1, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_d5

    .line 68
    :cond_e9
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Response exceeds limit"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_f1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_f5
    .catchall {:try_start_cc .. :try_end_f5} :catchall_fc

    .line 72
    :try_start_f5
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_160

    .line 73
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 71
    return-object p1

    .line 72
    :catchall_fc
    move-exception p1

    :try_start_fd
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V

    throw p1

    .line 62
    :cond_101
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "HTTP "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_11a
    :goto_11a
    if-nez p2, :cond_158

    .line 56
    const-string v5, "Location"

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 57
    if-eqz v5, :cond_150

    .line 58
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_146

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13e

    goto :goto_146

    :cond_13e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "TLS downgrade"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_146
    .catchall {:try_start_fd .. :try_end_146} :catchall_160

    .line 60
    :cond_146
    :goto_146
    nop

    .line 73
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 60
    nop

    .line 36
    add-int/lit8 v2, v2, 0x1

    move-object v0, v6

    goto/16 :goto_1b

    .line 57
    :cond_150
    :try_start_150
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Empty redirect"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_158
    new-instance p0, Ljava/io/IOException;

    const-string p1, "POST redirect requires explicit retry"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_160
    .catchall {:try_start_150 .. :try_end_160} :catchall_160

    .line 73
    :catchall_160
    move-exception p0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p0

    .line 39
    :cond_165
    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u041d\u0435\u0434\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u043e\u0435 \u043f\u0435\u0440\u0435\u043d\u0430\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_16d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Too many redirects"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_175
    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u041d\u0435\u043a\u043e\u0440\u0440\u0435\u043a\u0442\u043d\u044b\u0439 \u0432\u0435\u0431-\u0441\u0435\u0440\u0432\u0435\u0440"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :catch_17d
    move-exception p0

    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u041d\u0435 \u0437\u0430\u0434\u0430\u043d \u0432\u0435\u0431-\u0441\u0435\u0440\u0432\u0435\u0440 \u0442\u0430\u043a\u0441\u043e\u043f\u0430\u0440\u043a\u0430"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_187

    :goto_186
    throw p0

    :goto_187
    goto :goto_186
.end method

.method public static request(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-static {}, Lcom/txdriver/compat/WebDiagnostics;->suppressed()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, ""

    return-object p0

    .line 17
    :cond_9
    new-instance v0, Lcom/txdriver/compat/WebDiagnostics$Trace;

    if-eqz p2, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-direct {v0, v1}, Lcom/txdriver/compat/WebDiagnostics$Trace;-><init>(Z)V

    .line 18
    :try_start_13
    invoke-static {p0, p1, p2, v0}, Lcom/txdriver/compat/SafeHttp;->perform(Ljava/lang/String;Ljava/lang/String;[BLcom/txdriver/compat/WebDiagnostics$Trace;)Ljava/lang/String;

    move-result-object p0

    iget-boolean p1, v0, Lcom/txdriver/compat/WebDiagnostics$Trace;->enabled:Z

    if-eqz p1, :cond_20

    sget-object p1, Lcom/txdriver/compat/SafeHttp;->health:Lcom/txdriver/compat/WebRequestHealth;

    invoke-virtual {p1}, Lcom/txdriver/compat/WebRequestHealth;->succeeded()V

    :cond_20
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/txdriver/compat/WebDiagnostics$Trace;->finish(Ljava/lang/Throwable;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_24} :catch_25

    return-object p0

    .line 19
    :catch_25
    move-exception p0

    .line 20
    instance-of p1, p0, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_2d

    const-string p1, "\u043e\u0448\u0438\u0431\u043a\u0430 DNS"

    goto :goto_44

    .line 21
    :cond_2d
    instance-of p1, p0, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_34

    const-string p1, "\u0442\u0430\u0439\u043c-\u0430\u0443\u0442"

    goto :goto_44

    .line 22
    :cond_34
    instance-of p1, p0, Ljavax/net/ssl/SSLException;

    if-eqz p1, :cond_3b

    const-string p1, "\u043e\u0448\u0438\u0431\u043a\u0430 \u0437\u0430\u0449\u0438\u0449\u0451\u043d\u043d\u043e\u0433\u043e \u0441\u043e\u0435\u0434\u0438\u043d\u0435\u043d\u0438\u044f"

    goto :goto_44

    .line 23
    :cond_3b
    instance-of p1, p0, Ljava/net/ConnectException;

    if-eqz p1, :cond_42

    const-string p1, "\u043d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0441\u043e\u0435\u0434\u0438\u043d\u0438\u0442\u044c\u0441\u044f"

    goto :goto_44

    :cond_42
    const-string p1, "\u0441\u0431\u043e\u0439 \u0437\u0430\u043f\u0440\u043e\u0441\u0430"

    .line 25
    :goto_44
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5a

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "HTTP [0-9]{3}"

    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5a

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 26
    :cond_5a
    iget-boolean p2, v0, Lcom/txdriver/compat/WebDiagnostics$Trace;->enabled:Z

    if-eqz p2, :cond_67

    sget-object p2, Lcom/txdriver/compat/SafeHttp;->health:Lcom/txdriver/compat/WebRequestHealth;

    invoke-static {}, Lcom/txdriver/compat/SafeHttp;->now()J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Lcom/txdriver/compat/WebRequestHealth;->failed(Ljava/lang/String;J)V

    .line 27
    :cond_67
    invoke-virtual {v0, p0}, Lcom/txdriver/compat/WebDiagnostics$Trace;->finish(Ljava/lang/Throwable;)V

    .line 28
    throw p0
.end method
