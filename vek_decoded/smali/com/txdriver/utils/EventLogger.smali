.class public Lcom/txdriver/utils/EventLogger;
.super Ljava/lang/Object;
.source "EventLogger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/File;)V
    .locals 0

    .line 8
    invoke-static {p0}, Lcom/txdriver/utils/EventLogger;->deleteOldFiles(Ljava/io/File;)V

    return-void
.end method

.method public static create(Lcom/txdriver/App;)V
    .locals 3

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/txdriver/App;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/DriverLog"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    array-length v2, v0

    if-lez v2, :cond_1

    const/4 v1, 0x0

    .line 19
    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lcom/txdriver/utils/EventLogger;->pushLogsOnServer(Lcom/txdriver/App;Ljava/io/File;)V

    goto :goto_0

    .line 21
    :cond_1
    invoke-static {v1}, Lcom/txdriver/utils/EventLogger;->createNewLog(Ljava/io/File;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static createNewLog(Ljava/io/File;)V
    .locals 3

    .line 28
    new-instance v0, Ljava/io/File;

    const-string v1, "Log.txt"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const-string v1, "logcat -c"

    invoke-virtual {p0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 31
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logcat -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static deleteOldFiles(Ljava/io/File;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 39
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private static pushLogsOnServer(Lcom/txdriver/App;Ljava/io/File;)V
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txdriver/preferences/Preferences;->isLogPushAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    new-instance v0, Lcom/txdriver/http/request/PushLogRequest;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/http/request/PushLogRequest;-><init>(Lcom/txdriver/App;Ljava/io/File;)V

    .line 47
    new-instance p0, Lcom/txdriver/utils/EventLogger$1;

    invoke-direct {p0, p1}, Lcom/txdriver/utils/EventLogger$1;-><init>(Ljava/io/File;)V

    iput-object p0, v0, Lcom/txdriver/http/request/PushLogRequest;->listener:Lcom/txdriver/http/request/PushLogRequest$UploadResponseListener;

    .line 55
    invoke-virtual {v0}, Lcom/txdriver/http/request/PushLogRequest;->execute()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 59
    invoke-static {p1}, Lcom/txdriver/utils/EventLogger;->deleteOldFiles(Ljava/io/File;)V

    :cond_1
    :goto_0
    return-void
.end method
