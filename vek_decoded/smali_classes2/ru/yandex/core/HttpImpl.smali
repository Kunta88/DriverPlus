.class public final Lru/yandex/core/HttpImpl;
.super Ljava/lang/Object;


# static fields
.field private static LOG_TAG:Ljava/lang/String; = "yandex.HttpImpl"

.field private static READ_SIZE:I = 0x400


# instance fields
.field private headers:Ljava/util/ArrayList;

.field private httpAddress:Ljava/lang/String;

.field private httpPath:Ljava/lang/String;

.field private intParams:Ljava/util/ArrayList;

.field private nativePtr:J

.field private params:Ljava/util/ArrayList;

.field private strParams:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/yandex/core/HttpImpl;->headers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/yandex/core/HttpImpl;->params:Ljava/util/ArrayList;

    return-void
.end method

.method private addHeaders(Ljava/net/HttpURLConnection;)V
    .locals 4

    iget-object v0, p0, Lru/yandex/core/HttpImpl;->headers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getPathWithParams()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lru/yandex/core/HttpImpl;->httpPath:Ljava/lang/String;

    const-string v1, "/"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lru/yandex/core/HttpImpl;->httpPath:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lru/yandex/core/HttpImpl;->httpPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lru/yandex/core/HttpImpl;->params:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lru/yandex/core/HttpImpl;->httpPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lru/yandex/core/HttpImpl;->params:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native readOutputStream(J[BI)I
.end method

.method private static native setHttpStatus(JI)V
.end method

.method private static native setLastError(JI)V
.end method

.method private static native writeInputStream(J[BI)I
.end method


# virtual methods
.method get(J)Z
    .locals 7

    iput-wide p1, p0, Lru/yandex/core/HttpImpl;->nativePtr:J

    const/4 p1, 0x0

    :try_start_0
    new-instance p2, Ljava/net/URL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lru/yandex/core/HttpImpl;->httpAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lru/yandex/core/HttpImpl;->getPathWithParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    const-string v0, "GET"

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    sget v1, Lru/yandex/core/HttpImpl;->READ_SIZE:I

    new-array v1, v1, [B

    invoke-direct {p0, p2}, Lru/yandex/core/HttpImpl;->addHeaders(Ljava/net/HttpURLConnection;)V

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    iget-wide v3, p0, Lru/yandex/core/HttpImpl;->nativePtr:J

    invoke-static {v3, v4, v2}, Lru/yandex/core/HttpImpl;->setHttpStatus(JI)V

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    const/4 v2, 0x0

    :cond_0
    sget v3, Lru/yandex/core/HttpImpl;->READ_SIZE:I

    invoke-virtual {p2, v1, p1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget-wide v5, p0, Lru/yandex/core/HttpImpl;->nativePtr:J

    invoke-static {v5, v6, v1, v3}, Lru/yandex/core/HttpImpl;->writeInputStream(J[BI)I

    move-result v2

    :cond_1
    if-eq v3, v4, :cond_2

    if-nez v2, :cond_0

    :cond_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    return p1

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    return p1

    :catch_2
    move-exception p2

    invoke-virtual {p2}, Ljava/net/UnknownServiceException;->toString()Ljava/lang/String;

    return p1

    :catch_3
    move-exception p2

    invoke-virtual {p2}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    return p1
.end method

.method post(J)Z
    .locals 7

    iput-wide p1, p0, Lru/yandex/core/HttpImpl;->nativePtr:J

    const/4 p1, 0x0

    :try_start_0
    new-instance p2, Ljava/net/URL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lru/yandex/core/HttpImpl;->httpAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lru/yandex/core/HttpImpl;->getPathWithParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    const-string v0, "POST"

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-direct {p0, p2}, Lru/yandex/core/HttpImpl;->addHeaders(Ljava/net/HttpURLConnection;)V

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    sget v1, Lru/yandex/core/HttpImpl;->READ_SIZE:I

    new-array v1, v1, [B

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    :cond_0
    iget-wide v3, p0, Lru/yandex/core/HttpImpl;->nativePtr:J

    sget v5, Lru/yandex/core/HttpImpl;->READ_SIZE:I

    invoke-static {v3, v4, v1, v5}, Lru/yandex/core/HttpImpl;->readOutputStream(J[BI)I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2, v1, p1, v3}, Ljava/io/OutputStream;->write([BII)V

    :cond_1
    if-gtz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    iget-wide v3, p0, Lru/yandex/core/HttpImpl;->nativePtr:J

    invoke-static {v3, v4, v2}, Lru/yandex/core/HttpImpl;->setHttpStatus(JI)V

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    const/4 v2, 0x0

    :cond_2
    sget v3, Lru/yandex/core/HttpImpl;->READ_SIZE:I

    invoke-virtual {p2, v1, p1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget-wide v5, p0, Lru/yandex/core/HttpImpl;->nativePtr:J

    invoke-static {v5, v6, v1, v3}, Lru/yandex/core/HttpImpl;->writeInputStream(J[BI)I

    move-result v2

    :cond_3
    if-eq v3, v4, :cond_4

    if-nez v2, :cond_2

    :cond_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    return p1

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    return p1

    :catch_2
    move-exception p2

    invoke-virtual {p2}, Ljava/net/UnknownServiceException;->toString()Ljava/lang/String;

    return p1

    :catch_3
    move-exception p2

    invoke-virtual {p2}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    return p1
.end method

.method public setGetParams([Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lru/yandex/core/HttpImpl;->params:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setHeaders([Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lru/yandex/core/HttpImpl;->headers:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIntParams([I[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lru/yandex/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lru/yandex/g;

    move-result-object v1

    iget-object v2, p0, Lru/yandex/core/HttpImpl;->intParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setStrParams([I[Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lru/yandex/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lru/yandex/g;

    move-result-object v1

    iget-object v2, p0, Lru/yandex/core/HttpImpl;->strParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/core/HttpImpl;->httpAddress:Ljava/lang/String;

    iput-object p2, p0, Lru/yandex/core/HttpImpl;->httpPath:Ljava/lang/String;

    return-void
.end method
