.class public Ljavassist/tools/web/Viewer;
.super Ljava/lang/ClassLoader;
.source "Viewer.java"


# instance fields
.field private port:I

.field private server:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 77
    iput-object p1, p0, Ljavassist/tools/web/Viewer;->server:Ljava/lang/String;

    .line 78
    iput p2, p0, Ljavassist/tools/web/Viewer;->port:I

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 59
    array-length v0, p0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 60
    new-instance v0, Ljavassist/tools/web/Viewer;

    const/4 v2, 0x0

    aget-object v3, p0, v2

    const/4 v4, 0x1

    aget-object v4, p0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v3, v4}, Ljavassist/tools/web/Viewer;-><init>(Ljava/lang/String;I)V

    .line 61
    array-length v3, p0

    sub-int/2addr v3, v1

    new-array v3, v3, [Ljava/lang/String;

    .line 62
    array-length v4, p0

    sub-int/2addr v4, v1

    invoke-static {p0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x2

    .line 63
    aget-object p0, p0, v1

    invoke-virtual {v0, p0, v3}, Ljavassist/tools/web/Viewer;->run(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Usage: java javassist.tools.web.Viewer <host> <port> class [args ...]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private readStream(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    add-int/2addr v2, v3

    .line 196
    array-length v3, v0

    sub-int/2addr v3, v2

    if-gtz v3, :cond_1

    .line 197
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    .line 198
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    .line 202
    :cond_1
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gez v3, :cond_0

    .line 205
    new-array p1, v2, [B

    .line 206
    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method


# virtual methods
.method protected fetchClass(Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Ljavassist/tools/web/Viewer;->server:Ljava/lang/String;

    iget v2, p0, Ljavassist/tools/web/Viewer;->port:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-direct {v0, v4, v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 168
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    .line 169
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-gtz v1, :cond_0

    .line 171
    invoke-direct {p0, v0}, Ljavassist/tools/web/Viewer;->readStream(Ljava/io/InputStream;)[B

    move-result-object p1

    goto :goto_0

    .line 173
    :cond_0
    new-array v2, v1, [B

    const/4 v3, 0x0

    :cond_1
    sub-int v4, v1, v3

    .line 176
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_2

    add-int/2addr v3, v4

    if-lt v3, v1, :cond_1

    move-object p1, v2

    .line 186
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p1

    .line 178
    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 179
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the stream was closed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "java."

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "javax."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "javassist.tools.web.Viewer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 143
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Ljavassist/tools/web/Viewer;->findSystemClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    .line 147
    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/tools/web/Viewer;->fetchClass(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 149
    array-length v3, v1

    invoke-virtual {p0, p1, v1, v2, v3}, Ljavassist/tools/web/Viewer;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    :cond_2
    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 89
    iget v0, p0, Ljavassist/tools/web/Viewer;->port:I

    return v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Ljavassist/tools/web/Viewer;->server:Ljava/lang/String;

    return-object v0
.end method

.method protected declared-synchronized loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 116
    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/tools/web/Viewer;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Ljavassist/tools/web/Viewer;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 124
    invoke-virtual {p0, v0}, Ljavassist/tools/web/Viewer;->resolveClass(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_1
    monitor-exit p0

    return-object v0

    .line 121
    :cond_2
    :try_start_1
    new-instance p2, Ljava/lang/ClassNotFoundException;

    invoke-direct {p2, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 100
    invoke-virtual {p0, p1}, Ljavassist/tools/web/Viewer;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    :try_start_0
    const-string v0, "main"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 102
    const-class v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method
