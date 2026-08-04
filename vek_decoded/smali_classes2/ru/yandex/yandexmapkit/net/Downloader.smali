.class public final Lru/yandex/yandexmapkit/net/Downloader;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B

.field public static b:Lru/yandex/br;

.field protected static c:I

.field private static d:Ljava/lang/String;

.field private static e:[B


# instance fields
.field private final f:Lru/yandex/bq;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lru/yandex/yandexmapkit/net/Downloader;->a:[B

    const/4 v0, 0x0

    sput v0, Lru/yandex/yandexmapkit/net/Downloader;->c:I

    return-void

    nop

    :array_0
    .array-data 1
        0x65t
        0x64t
        0x67t
        0x65t
        0x5ft
        0x68t
        0x65t
        0x72t
        0x65t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/yandex/yandexmapkit/net/Downloader;->g:Ljava/lang/String;

    new-instance p1, Lru/yandex/bq;

    invoke-direct {p1, p0}, Lru/yandex/bq;-><init>(Lru/yandex/yandexmapkit/net/Downloader;)V

    iput-object p1, p0, Lru/yandex/yandexmapkit/net/Downloader;->f:Lru/yandex/bq;

    return-void
.end method

.method public static a([B[B)J
    .locals 7

    array-length v0, p0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-byte v5, p0, v3

    aget-byte v6, p1, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p0, v3

    if-ne v4, v1, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lru/yandex/yandexmapkit/utils/Utils;->b([B)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lru/yandex/yandexmapkit/net/Downloader;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    sput-object p0, Lru/yandex/yandexmapkit/net/Downloader;->e:[B

    :cond_0
    return-void
.end method

.method public static a(Lru/yandex/br;)V
    .locals 1

    if-eqz p0, :cond_0

    sput-object p0, Lru/yandex/yandexmapkit/net/Downloader;->b:Lru/yandex/br;

    invoke-static {}, Lru/yandex/yandexmapkit/net/Downloader;->getUUID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lru/yandex/br;->d:Ljava/lang/String;

    invoke-static {p0}, Lru/yandex/yandexmapkit/net/Downloader;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a([Ljava/lang/String;[Ljava/lang/String;[[B)[B
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    const/16 v4, 0x2d

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v3, Lru/yandex/yandexmapkit/net/Downloader;->a:[B

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v3, "\r\nContent-Disposition: form-data; name=\""

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p1, :cond_1

    aget-object v3, p1, v2

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "\r\nContent-Type: "

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_1
    const-string v3, "\r\n\r\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    aget-object v3, p2, v2

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v3, "\r\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object p0, Lru/yandex/yandexmapkit/net/Downloader;->a:[B

    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string p0, "--\r\n"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lru/yandex/yandexmapkit/net/Downloader;->getServer(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lru/yandex/br;
    .locals 1

    sget-object v0, Lru/yandex/yandexmapkit/net/Downloader;->b:Lru/yandex/br;

    return-object v0
.end method

.method public static e()I
    .locals 1

    sget v0, Lru/yandex/yandexmapkit/net/Downloader;->c:I

    return v0
.end method

.method public static getServer(I)Ljava/lang/String;
    .locals 4

    sget-object v0, Lru/yandex/yandexmapkit/net/Downloader;->b:Lru/yandex/br;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lru/yandex/br;->e:Ljava/util/Hashtable;

    sget-object v1, Lru/yandex/br;->a:[Ljava/lang/String;

    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "/mapkit"

    const/4 v1, 0x4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    invoke-static {}, Lru/yandex/ch;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    sget-object p0, Lru/yandex/yandexmapkit/net/Downloader;->b:Lru/yandex/br;

    iget-object p0, p0, Lru/yandex/br;->e:Ljava/util/Hashtable;

    sget-object v2, Lru/yandex/br;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_3

    invoke-static {}, Lru/yandex/ch;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    invoke-static {}, Lru/yandex/ch;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUUID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lru/yandex/yandexmapkit/net/Downloader;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static getUUIDBytes()[B
    .locals 1

    sget-object v0, Lru/yandex/yandexmapkit/net/Downloader;->e:[B

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/net/Downloader;->f:Lru/yandex/bq;

    invoke-virtual {v0}, Lru/yandex/bq;->a()V

    return-void
.end method

.method public a(I)V
    .locals 0

    sput p1, Lru/yandex/yandexmapkit/net/Downloader;->c:I

    iget-object p1, p0, Lru/yandex/yandexmapkit/net/Downloader;->f:Lru/yandex/bq;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lru/yandex/bq;->d()Ljava/lang/Thread;

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    sget-object v0, Lru/yandex/yandexmapkit/net/Downloader;->b:Lru/yandex/br;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/net/Downloader;->a(I)V

    iget-object v0, p0, Lru/yandex/yandexmapkit/net/Downloader;->f:Lru/yandex/bq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lru/yandex/bq;->c()V

    :cond_1
    return-void
.end method

.method public downloadProccess(Lru/yandex/yandexmapkit/net/DownloadHandler;I)V
    .locals 3

    iget-object v0, p0, Lru/yandex/yandexmapkit/net/Downloader;->f:Lru/yandex/bq;

    invoke-interface {p1, p2}, Lru/yandex/yandexmapkit/net/DownloadHandler;->onCreateDownloadJob(I)Lru/yandex/yandexmapkit/net/DownloadJob;

    move-result-object v1

    if-eqz v0, :cond_1

    sget v2, Lru/yandex/yandexmapkit/net/Downloader;->c:I

    if-nez v2, :cond_0

    const/high16 v2, -0x80000000

    if-eq p2, v2, :cond_0

    invoke-virtual {v1}, Lru/yandex/yandexmapkit/net/DownloadJob;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lru/yandex/bq;->a(Lru/yandex/yandexmapkit/net/DownloadJob;)V

    invoke-virtual {v0}, Lru/yandex/bq;->d()Ljava/lang/Thread;

    return-void

    :cond_1
    new-instance v0, Lru/yandex/yandexmapkit/net/DownloadJob;

    invoke-direct {v0, p2, p1}, Lru/yandex/yandexmapkit/net/DownloadJob;-><init>(ILru/yandex/yandexmapkit/net/DownloadHandler;)V

    const/4 p2, 0x1

    invoke-interface {p1, v0, p2}, Lru/yandex/yandexmapkit/net/DownloadHandler;->onFinishDownload(Lru/yandex/yandexmapkit/net/DownloadJob;Z)Z

    :cond_2
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/net/Downloader;->f:Lru/yandex/bq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lru/yandex/bq;->b()V

    :cond_0
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/net/Downloader;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getGeoCode(Lru/yandex/yandexmapkit/map/GeoCodeListener;Lru/yandex/yandexmapkit/utils/GeoPoint;)V
    .locals 1

    new-instance v0, Lru/yandex/an;

    invoke-direct {v0, p1, p2}, Lru/yandex/an;-><init>(Lru/yandex/yandexmapkit/map/GeoCodeListener;Lru/yandex/yandexmapkit/utils/GeoPoint;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lru/yandex/yandexmapkit/net/Downloader;->downloadProccess(Lru/yandex/yandexmapkit/net/DownloadHandler;I)V

    return-void
.end method
