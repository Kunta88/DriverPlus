.class Lcom/txdriver/helpers/DownloadHelper$1;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/txdriver/helpers/AsyncTaskResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/helpers/DownloadHelper;->runNewTasks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/helpers/DownloadHelper;

.field final synthetic val$audioFile:Lcom/txdriver/db/AudioFile;


# direct methods
.method constructor <init>(Lcom/txdriver/helpers/DownloadHelper;Lcom/txdriver/db/AudioFile;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/txdriver/helpers/DownloadHelper$1;->this$0:Lcom/txdriver/helpers/DownloadHelper;

    iput-object p2, p0, Lcom/txdriver/helpers/DownloadHelper$1;->val$audioFile:Lcom/txdriver/db/AudioFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processFinish(Ljava/lang/Object;)V
    .locals 3

    .line 36
    new-instance p1, Lcom/activeandroid/query/Update;

    const-class v0, Lcom/txdriver/db/AudioFile;

    invoke-direct {p1, v0}, Lcom/activeandroid/query/Update;-><init>(Ljava/lang/Class;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioFilePath = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/helpers/DownloadHelper$1;->val$audioFile:Lcom/txdriver/db/AudioFile;

    iget-object v2, p0, Lcom/txdriver/helpers/DownloadHelper$1;->this$0:Lcom/txdriver/helpers/DownloadHelper;

    invoke-static {v2}, Lcom/txdriver/helpers/DownloadHelper;->access$000(Lcom/txdriver/helpers/DownloadHelper;)Lcom/txdriver/App;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/txdriver/db/AudioFile;->getFile(Lcom/txdriver/App;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/activeandroid/query/Update;->set(Ljava/lang/String;)Lcom/activeandroid/query/Set;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioFileId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/helpers/DownloadHelper$1;->val$audioFile:Lcom/txdriver/db/AudioFile;

    iget v1, v1, Lcom/txdriver/db/AudioFile;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/activeandroid/query/Set;->where(Ljava/lang/String;)Lcom/activeandroid/query/Set;

    move-result-object p1

    invoke-virtual {p1}, Lcom/activeandroid/query/Set;->execute()V

    .line 37
    iget-object p1, p0, Lcom/txdriver/helpers/DownloadHelper$1;->this$0:Lcom/txdriver/helpers/DownloadHelper;

    invoke-static {p1}, Lcom/txdriver/helpers/DownloadHelper;->access$100(Lcom/txdriver/helpers/DownloadHelper;)Ljava/util/LinkedList;

    move-result-object p1

    iget-object v0, p0, Lcom/txdriver/helpers/DownloadHelper$1;->this$0:Lcom/txdriver/helpers/DownloadHelper;

    invoke-static {v0}, Lcom/txdriver/helpers/DownloadHelper;->access$100(Lcom/txdriver/helpers/DownloadHelper;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/helpers/DownloadHelper$1;->val$audioFile:Lcom/txdriver/db/AudioFile;

    iget v1, v1, Lcom/txdriver/db/AudioFile;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    return-void
.end method
