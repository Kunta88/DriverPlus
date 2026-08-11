.class public Lcom/txdriver/socket/handler/LoadAudioFileHandler;
.super Lcom/txdriver/socket/handler/AbstractPacketHandler;
.source "LoadAudioFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/txdriver/socket/handler/AbstractPacketHandler<",
        "Lcom/txdriver/socket/data/LoadAudioFileData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadAudioFileHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/txdriver/App;)V
    .locals 1

    .line 27
    const-class v0, Lcom/txdriver/socket/data/LoadAudioFileData;

    invoke-direct {p0, p1, v0}, Lcom/txdriver/socket/handler/AbstractPacketHandler;-><init>(Lcom/txdriver/App;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/txdriver/socket/data/LoadAudioFileData;)V
    .locals 5

    .line 32
    iget v0, p1, Lcom/txdriver/socket/data/LoadAudioFileData;->id:I

    invoke-static {v0}, Lcom/txdriver/db/AudioFile;->getAudioById(I)Lcom/txdriver/db/AudioFile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 34
    iget-object v1, p1, Lcom/txdriver/socket/data/LoadAudioFileData;->source:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "AudioFilePath = \'\'"

    const-string v3, "AudioFileId = "

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/txdriver/socket/data/LoadAudioFileData;->source:Ljava/lang/String;

    iget-object v4, v0, Lcom/txdriver/db/AudioFile;->source:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    new-instance v0, Lcom/activeandroid/query/Update;

    const-class v1, Lcom/txdriver/db/AudioFile;

    invoke-direct {v0, v1}, Lcom/activeandroid/query/Update;-><init>(Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioFileSource = \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p1, Lcom/txdriver/socket/data/LoadAudioFileData;->source:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Update;->set(Ljava/lang/String;)Lcom/activeandroid/query/Set;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Lcom/txdriver/socket/data/LoadAudioFileData;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Set;->where(Ljava/lang/String;)Lcom/activeandroid/query/Set;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/Set;->execute()V

    .line 36
    new-instance v0, Lcom/activeandroid/query/Update;

    const-class v1, Lcom/txdriver/db/AudioFile;

    invoke-direct {v0, v1}, Lcom/activeandroid/query/Update;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Update;->set(Ljava/lang/String;)Lcom/activeandroid/query/Set;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Lcom/txdriver/socket/data/LoadAudioFileData;->id:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/activeandroid/query/Set;->where(Ljava/lang/String;)Lcom/activeandroid/query/Set;

    move-result-object p1

    invoke-virtual {p1}, Lcom/activeandroid/query/Set;->execute()V

    goto/16 :goto_0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/txdriver/socket/handler/LoadAudioFileHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0, v1}, Lcom/txdriver/db/AudioFile;->getFile(Lcom/txdriver/App;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 38
    new-instance v0, Lcom/activeandroid/query/Update;

    const-class v1, Lcom/txdriver/db/AudioFile;

    invoke-direct {v0, v1}, Lcom/activeandroid/query/Update;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Update;->set(Ljava/lang/String;)Lcom/activeandroid/query/Set;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Lcom/txdriver/socket/data/LoadAudioFileData;->id:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/activeandroid/query/Set;->where(Ljava/lang/String;)Lcom/activeandroid/query/Set;

    move-result-object p1

    invoke-virtual {p1}, Lcom/activeandroid/query/Set;->execute()V

    goto :goto_0

    .line 39
    :cond_1
    iget-object v1, p1, Lcom/txdriver/socket/data/LoadAudioFileData;->fileHash:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/txdriver/socket/data/LoadAudioFileData;->fileHash:Ljava/lang/String;

    iget-object v4, p0, Lcom/txdriver/socket/handler/LoadAudioFileHandler;->app:Lcom/txdriver/App;

    invoke-virtual {v0, v4}, Lcom/txdriver/db/AudioFile;->getFileMd5Hash(Lcom/txdriver/App;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 40
    new-instance v0, Lcom/activeandroid/query/Update;

    const-class v1, Lcom/txdriver/db/AudioFile;

    invoke-direct {v0, v1}, Lcom/activeandroid/query/Update;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Update;->set(Ljava/lang/String;)Lcom/activeandroid/query/Set;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Lcom/txdriver/socket/data/LoadAudioFileData;->id:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/activeandroid/query/Set;->where(Ljava/lang/String;)Lcom/activeandroid/query/Set;

    move-result-object p1

    invoke-virtual {p1}, Lcom/activeandroid/query/Set;->execute()V

    goto :goto_0

    .line 43
    :cond_2
    new-instance v0, Lcom/txdriver/db/AudioFile;

    iget v1, p1, Lcom/txdriver/socket/data/LoadAudioFileData;->id:I

    iget-object p1, p1, Lcom/txdriver/socket/data/LoadAudioFileData;->source:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, v1, p1, v2}, Lcom/txdriver/db/AudioFile;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/txdriver/db/AudioFile;->save()V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/txdriver/socket/data/LoadAudioFileData;

    invoke-virtual {p0, p1}, Lcom/txdriver/socket/handler/LoadAudioFileHandler;->handle(Lcom/txdriver/socket/data/LoadAudioFileData;)V

    return-void
.end method
