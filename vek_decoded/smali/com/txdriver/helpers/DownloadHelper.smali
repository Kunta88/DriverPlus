.class public Lcom/txdriver/helpers/DownloadHelper;
.super Ljava/lang/Object;
.source "DownloadHelper.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private app:Lcom/txdriver/App;

.field private runnedTaskId:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/txdriver/helpers/DownloadHelper;->runnedTaskId:Ljava/util/LinkedList;

    .line 20
    iput-object p1, p0, Lcom/txdriver/helpers/DownloadHelper;->app:Lcom/txdriver/App;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/txdriver/helpers/DownloadHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/helpers/DownloadHelper;)Lcom/txdriver/App;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/txdriver/helpers/DownloadHelper;->app:Lcom/txdriver/App;

    return-object p0
.end method

.method static synthetic access$100(Lcom/txdriver/helpers/DownloadHelper;)Ljava/util/LinkedList;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/txdriver/helpers/DownloadHelper;->runnedTaskId:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/txdriver/helpers/DownloadHelper;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/txdriver/helpers/DownloadHelper;->runNewTasks()V

    return-void
.end method

.method static synthetic access$300(Lcom/txdriver/helpers/DownloadHelper;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/txdriver/helpers/DownloadHelper;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private runNewTasks()V
    .locals 5

    .line 25
    invoke-static {}, Lcom/txdriver/db/AudioFile;->getAudioWithEmptyPath()Ljava/util/List;

    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/db/AudioFile;

    .line 30
    iget-object v2, p0, Lcom/txdriver/helpers/DownloadHelper;->runnedTaskId:Ljava/util/LinkedList;

    iget v3, v1, Lcom/txdriver/db/AudioFile;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 31
    iget-object v2, p0, Lcom/txdriver/helpers/DownloadHelper;->runnedTaskId:Ljava/util/LinkedList;

    iget v3, v1, Lcom/txdriver/db/AudioFile;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 33
    new-instance v2, Lcom/txdriver/helpers/DownloadHelper$1;

    invoke-direct {v2, p0, v1}, Lcom/txdriver/helpers/DownloadHelper$1;-><init>(Lcom/txdriver/helpers/DownloadHelper;Lcom/txdriver/db/AudioFile;)V

    .line 41
    new-instance v3, Lcom/txdriver/helpers/DownloadHelperAsyncTask;

    iget-object v4, p0, Lcom/txdriver/helpers/DownloadHelper;->app:Lcom/txdriver/App;

    invoke-virtual {v1, v4}, Lcom/txdriver/db/AudioFile;->getFile(Lcom/txdriver/App;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/txdriver/helpers/DownloadHelperAsyncTask;-><init>(Lcom/txdriver/helpers/AsyncTaskResponse;Ljava/io/File;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 42
    iget-object v1, v1, Lcom/txdriver/db/AudioFile;->source:Ljava/lang/String;

    aput-object v1, v2, v4

    invoke-virtual {v3, v2}, Lcom/txdriver/helpers/DownloadHelperAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 49
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/txdriver/helpers/DownloadHelper$2;

    invoke-direct {v1, p0}, Lcom/txdriver/helpers/DownloadHelper$2;-><init>(Lcom/txdriver/helpers/DownloadHelper;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xbb8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method
