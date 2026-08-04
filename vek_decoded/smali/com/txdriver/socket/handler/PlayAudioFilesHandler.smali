.class public Lcom/txdriver/socket/handler/PlayAudioFilesHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "PlayAudioFilesHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/PlayAudioFilesData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 22
    const-class v0, Lcom/txdriver/socket/data/PlayAudioFilesData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/PlayAudioFilesData;)V
    .locals 6

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iget-object v1, p1, Lcom/txdriver/socket/data/PlayAudioFilesData;->audioFilesIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 31
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/txdriver/db/AudioFile;->getAudioById(I)Lcom/txdriver/db/AudioFile;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 33
    iget-object v5, p0, Lcom/txdriver/socket/handler/PlayAudioFilesHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v3, v5}, Lcom/txdriver/db/AudioFile;->getFile(Lcom/txdriver/App;)Ljava/io/File;

    move-result-object v5

    .line 34
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 37
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 45
    iget-object v1, p0, Lcom/txdriver/socket/handler/PlayAudioFilesHandler;->app:Lcom/txdriver/App;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/txdriver/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x3

    .line 46
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txdriver/db/AudioFile;

    .line 49
    iget-object v2, p0, Lcom/txdriver/socket/handler/PlayAudioFilesHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v2}, Lcom/txdriver/App;->getSoundManager()Lcom/txdriver/notification/SoundManager;

    move-result-object v2

    iget-object v3, p0, Lcom/txdriver/socket/handler/PlayAudioFilesHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v1, v3}, Lcom/txdriver/db/AudioFile;->getFile(Lcom/txdriver/App;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget v3, p1, Lcom/txdriver/socket/data/PlayAudioFilesData;->repeat:I

    iget v4, p1, Lcom/txdriver/socket/data/PlayAudioFilesData;->delay:I

    invoke-virtual {v2, v1, v3, v4}, Lcom/txdriver/notification/SoundManager;->addToPlayAsyncQueue(Ljava/lang/String;II)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/txdriver/socket/data/PlayAudioFilesData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/PlayAudioFilesHandler;->handle(Lcom/txdriver/socket/data/PlayAudioFilesData;)V

    return-void
.end method
