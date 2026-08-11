.class public Lru/yandex/yandexmapkit/StartupController$StartupParser;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseStartup([B)Lru/yandex/br;
    .locals 3

    new-instance v0, Lru/yandex/br;

    invoke-direct {v0}, Lru/yandex/br;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {p1, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lru/yandex/cx;->a(Lru/yandex/cw;Ljava/io/Reader;)V

    return-object v0
.end method
