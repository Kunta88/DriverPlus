.class public Lru/yandex/core/HttpNativeExcange;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# static fields
.field private static final CHUNK_SIZE:I = 0x4000


# instance fields
.field private body:[B

.field private creatioTime:J

.field private headers:[Lorg/apache/http/Header;

.field private volatile isCancelled:Z

.field private jniHandle:J

.field private method:Ljava/lang/String;

.field private priority:I

.field private timeout:I

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/core/HttpNativeExcange;->isCancelled:Z

    return-void
.end method

.method static convertHeadersToJni(Ljava/util/Map;)[[Ljava/lang/String;
    .locals 8

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v0, v3

    aget-object v6, v0, v3

    const-string v7, ""

    if-nez v6, :cond_0

    aput-object v7, v0, v3

    :cond_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v5, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v3

    goto :goto_2

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_2

    :cond_3
    aput-object v7, v1, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x2

    new-array p0, p0, [[Ljava/lang/String;

    aput-object v0, p0, v2

    aput-object v1, p0, v5

    return-object p0
.end method

.method public static create(JJIILjava/lang/String;Ljava/lang/String;[B[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lru/yandex/core/HttpNativeExcange;
    .locals 1

    new-instance v0, Lru/yandex/core/HttpNativeExcange;

    invoke-direct {v0}, Lru/yandex/core/HttpNativeExcange;-><init>()V

    iput-wide p0, v0, Lru/yandex/core/HttpNativeExcange;->jniHandle:J

    iput-wide p2, v0, Lru/yandex/core/HttpNativeExcange;->creatioTime:J

    iput p4, v0, Lru/yandex/core/HttpNativeExcange;->priority:I

    iput p5, v0, Lru/yandex/core/HttpNativeExcange;->timeout:I

    iput-object p6, v0, Lru/yandex/core/HttpNativeExcange;->method:Ljava/lang/String;

    :try_start_0
    invoke-static {p7, p9, p10}, Lru/yandex/core/HttpNativeExcange;->getURI(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    iput-object p0, v0, Lru/yandex/core/HttpNativeExcange;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p8, v0, Lru/yandex/core/HttpNativeExcange;->body:[B

    array-length p0, p11

    new-array p0, p0, [Lorg/apache/http/Header;

    iput-object p0, v0, Lru/yandex/core/HttpNativeExcange;->headers:[Lorg/apache/http/Header;

    const/4 p0, 0x0

    :goto_0
    array-length p1, p11

    if-ge p0, p1, :cond_0

    iget-object p1, v0, Lru/yandex/core/HttpNativeExcange;->headers:[Lorg/apache/http/Header;

    new-instance p2, Lorg/apache/http/message/BasicHeader;

    aget-object p3, p11, p0

    aget-object p4, p12, p0

    invoke-direct {p2, p3, p4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object p2, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid url:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static native didFinish(JI)V
.end method

.method private static native didReceiveBodyData(J[BII)V
.end method

.method private static native didReceiveResponse(JIJ[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private static getURI(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/net/URI;
    .locals 9

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    array-length p0, p1

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_1

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v7, 0x0

    :goto_0
    array-length v8, p1

    if-ge v7, v8, :cond_4

    if-nez v7, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    const/16 v8, 0x26

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    aget-object v8, p1, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x3d

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v8, p2, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x40

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const/4 p0, -0x1

    if-eq v3, p0, :cond_8

    const/16 p0, 0x3a

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_a

    const/16 p0, 0x3f

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    if-eqz v0, :cond_b

    const/16 p0, 0x23

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    new-instance p0, Ljava/net/URI;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static native releaseNative(J)V
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/core/HttpNativeExcange;->isCancelled:Z

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lru/yandex/core/HttpNativeExcange;

    invoke-virtual {p0, p1}, Lru/yandex/core/HttpNativeExcange;->compareTo(Lru/yandex/core/HttpNativeExcange;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lru/yandex/core/HttpNativeExcange;)I
    .locals 4

    iget v0, p0, Lru/yandex/core/HttpNativeExcange;->priority:I

    iget v1, p1, Lru/yandex/core/HttpNativeExcange;->priority:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    iget-wide v0, p0, Lru/yandex/core/HttpNativeExcange;->creatioTime:J

    iget-wide v2, p1, Lru/yandex/core/HttpNativeExcange;->creatioTime:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method didFinish(I)V
    .locals 2

    iget-boolean v0, p0, Lru/yandex/core/HttpNativeExcange;->isCancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lru/yandex/core/HttpNativeExcange;->jniHandle:J

    invoke-static {v0, v1, p1}, Lru/yandex/core/HttpNativeExcange;->didFinish(JI)V

    return-void
.end method

.method didReceiveBodyData([BII)V
    .locals 2

    iget-boolean v0, p0, Lru/yandex/core/HttpNativeExcange;->isCancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lru/yandex/core/HttpNativeExcange;->jniHandle:J

    invoke-static {v0, v1, p1, p2, p3}, Lru/yandex/core/HttpNativeExcange;->didReceiveBodyData(J[BII)V

    return-void
.end method

.method didReceiveResponse(IJLjava/util/Map;)V
    .locals 8

    iget-boolean v0, p0, Lru/yandex/core/HttpNativeExcange;->isCancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p4}, Lru/yandex/core/HttpNativeExcange;->convertHeadersToJni(Ljava/util/Map;)[[Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    aget-object v6, p4, v0

    const/4 v0, 0x1

    aget-object v7, p4, v0

    iget-wide v1, p0, Lru/yandex/core/HttpNativeExcange;->jniHandle:J

    move v3, p1

    move-wide v4, p2

    invoke-static/range {v1 .. v7}, Lru/yandex/core/HttpNativeExcange;->didReceiveResponse(JIJ[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    iget-wide v0, p0, Lru/yandex/core/HttpNativeExcange;->jniHandle:J

    invoke-static {v0, v1}, Lru/yandex/core/HttpNativeExcange;->releaseNative(J)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public run()V
    .locals 9

    iget-boolean v0, p0, Lru/yandex/core/HttpNativeExcange;->isCancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lru/yandex/core/HttpNativeExcange;->uri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    iget-object v4, p0, Lru/yandex/core/HttpNativeExcange;->method:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget v4, p0, Lru/yandex/core/HttpNativeExcange;->timeout:I

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v4, p0, Lru/yandex/core/HttpNativeExcange;->timeout:I

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v4, p0, Lru/yandex/core/HttpNativeExcange;->headers:[Lorg/apache/http/Header;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    invoke-interface {v7}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v8, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Lru/yandex/core/HttpNativeExcange;->isCancelled:Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v4, :cond_3

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    invoke-virtual {p0, v0}, Lru/yandex/core/HttpNativeExcange;->didFinish(I)V

    return-void

    :cond_3
    const/4 v4, 0x1

    :try_start_2
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v5, p0, Lru/yandex/core/HttpNativeExcange;->body:[B

    array-length v5, v5

    if-lez v5, :cond_4

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v4, p0, Lru/yandex/core/HttpNativeExcange;->body:[B

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    :cond_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v4, p0, Lru/yandex/core/HttpNativeExcange;->body:[B

    array-length v4, v4

    if-lez v4, :cond_5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v5, p0, Lru/yandex/core/HttpNativeExcange;->body:[B

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v5, v1

    move-object v1, v4

    goto/16 :goto_e

    :catch_0
    move-exception v3

    move-object v5, v1

    move-object v1, v4

    goto/16 :goto_6

    :catch_1
    move-object v5, v1

    move-object v1, v4

    goto/16 :goto_b

    :cond_5
    :goto_1
    :try_start_4
    iget-boolean v4, p0, Lru/yandex/core/HttpNativeExcange;->isCancelled:Z
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_7

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    invoke-virtual {p0, v0}, Lru/yandex/core/HttpNativeExcange;->didFinish(I)V

    return-void

    :cond_7
    :try_start_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lru/yandex/core/HttpNativeExcange;->didReceiveResponse(IJLjava/util/Map;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-boolean v6, p0, Lru/yandex/core/HttpNativeExcange;->isCancelled:Z
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v6, :cond_a

    if-eqz v5, :cond_8

    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    :catch_2
    nop

    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    invoke-virtual {p0, v4}, Lru/yandex/core/HttpNativeExcange;->didFinish(I)V

    return-void

    :cond_a
    const/16 v6, 0x4000

    :try_start_a
    new-array v7, v6, [B

    :goto_3
    iget-boolean v8, p0, Lru/yandex/core/HttpNativeExcange;->isCancelled:Z
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v8, :cond_d

    if-eqz v5, :cond_b

    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_4

    :catch_3
    nop

    :cond_b
    :goto_4
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    invoke-virtual {p0, v4}, Lru/yandex/core/HttpNativeExcange;->didFinish(I)V

    return-void

    :cond_d
    :try_start_c
    invoke-virtual {v5, v7, v3, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-ltz v8, :cond_e

    invoke-virtual {p0, v7, v3, v8}, Lru/yandex/core/HttpNativeExcange;->didReceiveBodyData([BII)V
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_3

    :cond_e
    if-eqz v5, :cond_f

    :try_start_d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_5

    :catch_4
    nop

    :cond_f
    :goto_5
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_10
    invoke-virtual {p0, v4}, Lru/yandex/core/HttpNativeExcange;->didFinish(I)V

    return-void

    :catch_5
    move-exception v3

    goto :goto_7

    :catch_6
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    invoke-virtual {p0, v4}, Lru/yandex/core/HttpNativeExcange;->didFinish(I)V

    return-void

    :catchall_1
    move-exception v3

    move-object v5, v1

    goto/16 :goto_a

    :catch_7
    move-exception v3

    move-object v5, v1

    goto :goto_7

    :catch_8
    move-object v5, v1

    :catch_9
    move v0, v4

    goto/16 :goto_b

    :catchall_2
    move-exception v3

    move-object v5, v1

    goto/16 :goto_e

    :catch_a
    move-exception v3

    move-object v5, v1

    goto :goto_6

    :catch_b
    move-object v5, v1

    goto :goto_b

    :catchall_3
    move-exception v3

    move-object v2, v1

    move-object v5, v2

    goto/16 :goto_e

    :catch_c
    move-exception v3

    move-object v2, v1

    move-object v5, v2

    :goto_6
    const/4 v4, -0x1

    :goto_7
    :try_start_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " on: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lru/yandex/core/HttpNativeExcange;->uri:Ljava/net/URI;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-eqz v1, :cond_12

    :try_start_f
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_8

    :catch_d
    nop

    :cond_12
    :goto_8
    if-eqz v5, :cond_13

    :try_start_10
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    goto :goto_9

    :catch_e
    nop

    :cond_13
    :goto_9
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_14
    invoke-virtual {p0, v0}, Lru/yandex/core/HttpNativeExcange;->didFinish(I)V

    return-void

    :catchall_4
    move-exception v3

    :goto_a
    move v0, v4

    goto :goto_e

    :catch_f
    move-object v2, v1

    move-object v5, v2

    :goto_b
    :try_start_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MalformedURLException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lru/yandex/core/HttpNativeExcange;->uri:Ljava/net/URI;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    if-eqz v1, :cond_15

    :try_start_12
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10

    goto :goto_c

    :catch_10
    nop

    :cond_15
    :goto_c
    if-eqz v5, :cond_16

    :try_start_13
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_11

    goto :goto_d

    :catch_11
    nop

    :cond_16
    :goto_d
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_17
    invoke-virtual {p0, v0}, Lru/yandex/core/HttpNativeExcange;->didFinish(I)V

    return-void

    :catchall_5
    move-exception v3

    :goto_e
    if-eqz v1, :cond_18

    :try_start_14
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_12

    goto :goto_f

    :catch_12
    nop

    :cond_18
    :goto_f
    if-eqz v5, :cond_19

    :try_start_15
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_13

    goto :goto_10

    :catch_13
    nop

    :cond_19
    :goto_10
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1a
    invoke-virtual {p0, v0}, Lru/yandex/core/HttpNativeExcange;->didFinish(I)V

    goto :goto_12

    :goto_11
    throw v3

    :goto_12
    goto :goto_11
.end method

.method public sendSynchronousRequest()Lru/yandex/core/HttpNativeExcange$SyncResponseHolder;
    .locals 9

    new-instance v0, Lru/yandex/core/HttpNativeExcange$SyncResponseHolder;

    invoke-direct {v0}, Lru/yandex/core/HttpNativeExcange$SyncResponseHolder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lru/yandex/core/HttpNativeExcange;->uri:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    iget-object v4, p0, Lru/yandex/core/HttpNativeExcange;->method:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget v4, p0, Lru/yandex/core/HttpNativeExcange;->timeout:I

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v4, p0, Lru/yandex/core/HttpNativeExcange;->timeout:I

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v4, p0, Lru/yandex/core/HttpNativeExcange;->headers:[Lorg/apache/http/Header;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    invoke-interface {v7}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v5, p0, Lru/yandex/core/HttpNativeExcange;->body:[B

    array-length v5, v5

    if-lez v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v5, p0, Lru/yandex/core/HttpNativeExcange;->body:[B

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    :cond_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v5, p0, Lru/yandex/core/HttpNativeExcange;->body:[B

    array-length v5, v5

    if-lez v5, :cond_2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v6, p0, Lru/yandex/core/HttpNativeExcange;->body:[B

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v1

    move-object v1, v5

    goto/16 :goto_c

    :catch_0
    move-exception v2

    move-object v4, v1

    move-object v1, v5

    goto/16 :goto_4

    :catch_1
    move-object v4, v1

    move-object v1, v5

    goto/16 :goto_7

    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lru/yandex/core/HttpNativeExcange;->convertHeadersToJni(Ljava/util/Map;)[[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v2

    iput-object v6, v0, Lru/yandex/core/HttpNativeExcange$SyncResponseHolder;->headerKeys:[Ljava/lang/String;

    aget-object v4, v5, v4

    iput-object v4, v0, Lru/yandex/core/HttpNativeExcange$SyncResponseHolder;->headerValues:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    iput v4, v0, Lru/yandex/core/HttpNativeExcange$SyncResponseHolder;->statusCode:I

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    iput v4, v0, Lru/yandex/core/HttpNativeExcange$SyncResponseHolder;->contentLength:I

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v5, Lru/yandex/h;

    const/16 v6, 0x4000

    invoke-direct {v5, v6}, Lru/yandex/h;-><init>(I)V

    new-array v7, v6, [B

    :goto_2
    invoke-virtual {v4, v7, v2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-ltz v8, :cond_3

    invoke-virtual {v5, v7, v2, v8}, Lru/yandex/h;->a([BII)V

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Lru/yandex/h;->a()[B

    move-result-object v5

    iput-object v5, v0, Lru/yandex/core/HttpNativeExcange$SyncResponseHolder;->data:[B
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    nop

    :cond_4
    :goto_3
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_b

    :catch_3
    move-exception v2

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v4, v1

    goto/16 :goto_c

    :catch_4
    move-exception v2

    move-object v4, v1

    goto :goto_4

    :catch_5
    move-object v4, v1

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v3, v1

    move-object v4, v3

    goto/16 :goto_c

    :catch_6
    move-exception v2

    move-object v3, v1

    move-object v4, v3

    :goto_4
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " on: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lru/yandex/core/HttpNativeExcange;->uri:Ljava/net/URI;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_5

    :catch_7
    nop

    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_6

    :catch_8
    nop

    :cond_6
    :goto_6
    if-eqz v3, :cond_9

    goto :goto_a

    :catch_9
    move-object v3, v1

    move-object v4, v3

    :catch_a
    :goto_7
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MalformedURLException: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lru/yandex/core/HttpNativeExcange;->uri:Ljava/net/URI;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v1, :cond_7

    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_8

    :catch_b
    nop

    :cond_7
    :goto_8
    if-eqz v4, :cond_8

    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    goto :goto_9

    :catch_c
    nop

    :cond_8
    :goto_9
    if-eqz v3, :cond_9

    :goto_a
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    const/4 v2, -0x1

    :cond_a
    :goto_b
    iput v2, v0, Lru/yandex/core/HttpNativeExcange$SyncResponseHolder;->errorCode:I

    return-object v0

    :catchall_3
    move-exception v0

    :goto_c
    if-eqz v1, :cond_b

    :try_start_c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_d

    :catch_d
    nop

    :cond_b
    :goto_d
    if-eqz v4, :cond_c

    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e

    goto :goto_e

    :catch_e
    nop

    :cond_c
    :goto_e
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method

.method public start()V
    .locals 0

    invoke-static {p0}, Lru/yandex/core/HttpEngine;->start(Lru/yandex/core/HttpNativeExcange;)V

    return-void
.end method
