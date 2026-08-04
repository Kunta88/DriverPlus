.class final Ljavassist/ClassPoolTail;
.super Ljava/lang/Object;
.source "ClassPoolTail.java"


# instance fields
.field protected pathList:Ljavassist/ClassPathList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1000

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x40

    if-ge v3, v4, :cond_3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    mul-int/lit8 v1, v1, 0x2

    .line 412
    new-array v2, v1, [B

    :cond_0
    const/4 v4, 0x0

    :cond_1
    sub-int v5, v1, v4

    .line 417
    invoke-virtual {p0, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ltz v5, :cond_2

    add-int/2addr v4, v5

    if-lt v4, v1, :cond_1

    .line 425
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 421
    :cond_2
    invoke-virtual {p1, v2, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    return-void

    .line 428
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "too much data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static makePathObject(Ljava/lang/String;)Ljavassist/ClassPath;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jar"

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    add-int/lit8 v2, v0, -0x1

    .line 260
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    .line 263
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 264
    new-instance v0, Ljavassist/JarDirClassPath;

    invoke-direct {v0, p0}, Ljavassist/JarDirClassPath;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 267
    :cond_2
    new-instance v0, Ljavassist/DirClassPath;

    invoke-direct {v0, p0}, Ljavassist/DirClassPath;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 257
    :cond_3
    :goto_0
    new-instance v0, Ljavassist/JarClassPath;

    invoke-direct {v0, p0}, Ljavassist/JarClassPath;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static readStream(Ljava/io/InputStream;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    new-array v1, v0, [[B

    const/16 v2, 0x1000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1000

    :goto_0
    if-ge v4, v0, :cond_3

    .line 374
    new-array v6, v5, [B

    aput-object v6, v1, v4

    const/4 v6, 0x0

    .line 378
    :cond_0
    aget-object v7, v1, v4

    sub-int v8, v5, v6

    invoke-virtual {p0, v7, v6, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_1

    add-int/2addr v6, v7

    if-lt v6, v5, :cond_0

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v5, v2

    add-int/2addr v5, v6

    .line 382
    new-array p0, v5, [B

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v0, v4, :cond_2

    .line 385
    aget-object v7, v1, v0

    add-int/lit16 v8, v5, 0x1000

    invoke-static {v7, v3, p0, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v5

    add-int/2addr v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 389
    :cond_2
    aget-object v0, v1, v4

    invoke-static {v0, v3, p0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 396
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "too much data"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public appendClassPath(Ljava/lang/String;)Ljavassist/ClassPath;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 249
    invoke-static {p1}, Ljavassist/ClassPoolTail;->makePathObject(Ljava/lang/String;)Ljavassist/ClassPath;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavassist/ClassPoolTail;->appendClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized appendClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;
    .locals 3

    monitor-enter p0

    .line 206
    :try_start_0
    new-instance v0, Ljavassist/ClassPathList;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljavassist/ClassPathList;-><init>(Ljavassist/ClassPath;Ljavassist/ClassPathList;)V

    .line 207
    iget-object v1, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    if-nez v1, :cond_0

    .line 209
    iput-object v0, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    goto :goto_1

    .line 211
    :cond_0
    :goto_0
    iget-object v2, v1, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    if-eqz v2, :cond_1

    .line 212
    iget-object v1, v1, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    goto :goto_0

    .line 214
    :cond_1
    iput-object v0, v1, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :goto_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public appendSystemPath()Ljavassist/ClassPath;
    .locals 1

    .line 237
    new-instance v0, Ljavassist/ClassClassPath;

    invoke-direct {v0}, Ljavassist/ClassClassPath;-><init>()V

    invoke-virtual {p0, v0}, Ljavassist/ClassPoolTail;->appendClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    move-result-object v0

    return-object v0
.end method

.method public find(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    .line 351
    iget-object v0, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    :goto_0
    if-eqz v0, :cond_1

    .line 354
    iget-object v1, v0, Ljavassist/ClassPathList;->path:Ljavassist/ClassPath;

    invoke-interface {v1, p1}, Ljavassist/ClassPath;->find(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-nez v1, :cond_0

    .line 356
    iget-object v0, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public insertClassPath(Ljava/lang/String;)Ljavassist/ClassPath;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 243
    invoke-static {p1}, Ljavassist/ClassPoolTail;->makePathObject(Ljava/lang/String;)Ljavassist/ClassPath;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavassist/ClassPoolTail;->insertClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized insertClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;
    .locals 2

    monitor-enter p0

    .line 201
    :try_start_0
    new-instance v0, Ljavassist/ClassPathList;

    iget-object v1, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    invoke-direct {v0, p1, v1}, Ljavassist/ClassPathList;-><init>(Ljavassist/ClassPath;Ljavassist/ClassPathList;)V

    iput-object v0, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method openClassfile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 323
    :try_start_0
    iget-object v4, v0, Ljavassist/ClassPathList;->path:Ljavassist/ClassPath;

    invoke-interface {v4, p1}, Ljavassist/ClassPath;->openClassfile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    if-nez v2, :cond_0

    move-object v2, v4

    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 331
    iget-object v0, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    goto :goto_0

    :cond_1
    return-object v3

    :cond_2
    if-nez v2, :cond_3

    return-object v1

    .line 337
    :cond_3
    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized removeClassPath(Ljavassist/ClassPath;)V
    .locals 2

    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    if-eqz v0, :cond_2

    .line 223
    iget-object v1, v0, Ljavassist/ClassPathList;->path:Ljavassist/ClassPath;

    if-ne v1, p1, :cond_0

    .line 224
    iget-object v0, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    iput-object v0, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    goto :goto_1

    .line 226
    :cond_0
    :goto_0
    iget-object v1, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    if-eqz v1, :cond_2

    .line 227
    iget-object v1, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    iget-object v1, v1, Ljavassist/ClassPathList;->path:Ljavassist/ClassPath;

    if-ne v1, p1, :cond_1

    .line 228
    iget-object v1, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    iget-object v1, v1, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    iput-object v1, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, v0, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    goto :goto_0

    .line 233
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljavassist/ClassPath;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 187
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[class path: "

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    iget-object v1, p0, Ljavassist/ClassPoolTail;->pathList:Ljavassist/ClassPathList;

    :goto_0
    if-eqz v1, :cond_0

    .line 191
    iget-object v2, v1, Ljavassist/ClassPathList;->path:Ljavassist/ClassPath;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    sget-char v2, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 193
    iget-object v1, v1, Ljavassist/ClassPathList;->next:Ljavassist/ClassPathList;

    goto :goto_0

    :cond_0
    const/16 v1, 0x5d

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeClassfile(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;,
            Ljava/io/IOException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 276
    invoke-virtual {p0, p1}, Ljavassist/ClassPoolTail;->openClassfile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    :try_start_0
    invoke-static {v0, p2}, Ljavassist/ClassPoolTail;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p1

    .line 278
    :cond_0
    new-instance p2, Ljavassist/NotFoundException;

    invoke-direct {p2, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
