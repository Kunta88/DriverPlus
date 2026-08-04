.class public Lcom/txdriver/socket/handler/DownloadAutoInformFileHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "DownloadAutoInformFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/DownloadAutoInformFilesList;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadAutoInformFileHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 17
    const-class v0, Lcom/txdriver/socket/data/DownloadAutoInformFilesList;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/DownloadAutoInformFilesList;)V
    .locals 8

    .line 24
    :try_start_0
    iget-object p1, p1, Lcom/txdriver/socket/data/DownloadAutoInformFilesList;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/txdriver/socket/data/LoadAudioFileData;

    .line 25
    iget v1, v0, Lcom/txdriver/socket/data/LoadAudioFileData;->id:I

    invoke-static {v1}, Lcom/txdriver/db/AudioFile;->getAudioById(I)Lcom/txdriver/db/AudioFile;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Audio file "

    if-eqz v1, :cond_3

    .line 27
    :try_start_1
    iget-object v3, v0, Lcom/txdriver/socket/data/LoadAudioFileData;->source:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, " was updated"

    const-string v5, "AudioFilePath = \'\'"

    const-string v6, "AudioFileId = "

    if-nez v3, :cond_0

    :try_start_2
    iget-object v3, v0, Lcom/txdriver/socket/data/LoadAudioFileData;->source:Ljava/lang/String;

    iget-object v7, v1, Lcom/txdriver/db/AudioFile;->source:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 28
    new-instance v1, Lcom/activeandroid/query/Update;

    const-class v3, Lcom/txdriver/db/AudioFile;

    invoke-direct {v1, v3}, Lcom/activeandroid/query/Update;-><init>(Ljava/lang/Class;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AudioFileSource = \'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, v0, Lcom/txdriver/socket/data/LoadAudioFileData;->source:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/activeandroid/query/Update;->set(Ljava/lang/String;)Lcom/activeandroid/query/Set;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v0, Lcom/txdriver/socket/data/LoadAudioFileData;->id:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/activeandroid/query/Set;->where(Ljava/lang/String;)Lcom/activeandroid/query/Set;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/Set;->execute()V

    .line 29
    new-instance v1, Lcom/activeandroid/query/Update;

    const-class v3, Lcom/txdriver/db/AudioFile;

    invoke-direct {v1, v3}, Lcom/activeandroid/query/Update;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v5}, Lcom/activeandroid/query/Update;->set(Ljava/lang/String;)Lcom/activeandroid/query/Set;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Lcom/txdriver/socket/data/LoadAudioFileData;->id:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/activeandroid/query/Set;->where(Ljava/lang/String;)Lcom/activeandroid/query/Set;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/Set;->execute()V

    .line 30
    sget-object v1, Lcom/txdriver/socket/handler/DownloadAutoInformFileHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/txdriver/socket/data/LoadAudioFileData;->id:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 31
    :cond_0
    iget-object v3, p0, Lcom/txdriver/socket/handler/DownloadAutoInformFileHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v1, v3}, Lcom/txdriver/db/AudioFile;->getFile(Lcom/txdriver/App;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 32
    new-instance v1, Lcom/activeandroid/query/Update;

    const-class v3, Lcom/txdriver/db/AudioFile;

    invoke-direct {v1, v3}, Lcom/activeandroid/query/Update;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v5}, Lcom/activeandroid/query/Update;->set(Ljava/lang/String;)Lcom/activeandroid/query/Set;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Lcom/txdriver/socket/data/LoadAudioFileData;->id:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/activeandroid/query/Set;->where(Ljava/lang/String;)Lcom/activeandroid/query/Set;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/Set;->execute()V

    .line 33
    sget-object v1, Lcom/txdriver/socket/handler/DownloadAutoInformFileHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/txdriver/socket/data/LoadAudioFileData;->id:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 34
    :cond_1
    iget-object v3, v0, Lcom/txdriver/socket/data/LoadAudioFileData;->fileHash:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/txdriver/socket/data/LoadAudioFileData;->fileHash:Ljava/lang/String;

    iget-object v7, p0, Lcom/txdriver/socket/handler/DownloadAutoInformFileHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v1, v7}, Lcom/txdriver/db/AudioFile;->getFileMd5Hash(Lcom/txdriver/App;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    new-instance v1, Lcom/activeandroid/query/Update;

    const-class v3, Lcom/txdriver/db/AudioFile;

    invoke-direct {v1, v3}, Lcom/activeandroid/query/Update;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v5}, Lcom/activeandroid/query/Update;->set(Ljava/lang/String;)Lcom/activeandroid/query/Set;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Lcom/txdriver/socket/data/LoadAudioFileData;->id:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/activeandroid/query/Set;->where(Ljava/lang/String;)Lcom/activeandroid/query/Set;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/Set;->execute()V

    .line 36
    sget-object v1, Lcom/txdriver/socket/handler/DownloadAutoInformFileHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/txdriver/socket/data/LoadAudioFileData;->id:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 38
    :cond_2
    sget-object v1, Lcom/txdriver/socket/handler/DownloadAutoInformFileHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/txdriver/socket/data/LoadAudioFileData;->id:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has been find in db"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 41
    :cond_3
    new-instance v1, Lcom/txdriver/db/AudioFile;

    iget v3, v0, Lcom/txdriver/socket/data/LoadAudioFileData;->id:I

    iget-object v4, v0, Lcom/txdriver/socket/data/LoadAudioFileData;->source:Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v1, v3, v4, v5}, Lcom/txdriver/db/AudioFile;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/txdriver/db/AudioFile;->save()V

    .line 42
    sget-object v1, Lcom/txdriver/socket/handler/DownloadAutoInformFileHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/txdriver/socket/data/LoadAudioFileData;->id:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " was created"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/txdriver/socket/data/DownloadAutoInformFilesList;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/DownloadAutoInformFileHandler;->handle(Lcom/txdriver/socket/data/DownloadAutoInformFilesList;)V

    return-void
.end method
