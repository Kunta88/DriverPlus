.class public final Lru/yandex/ch;
.super Ljava/lang/Object;


# static fields
.field public static a:Z = false

.field public static b:Z = true

.field public static c:Ljava/lang/String; = "https://api.mobile.maps.yandex.net/mapkit"

.field public static d:Ljava/lang/String; = "https://api.mobile.maps.yandex.net/mapkit"

.field private static e:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yandexmapkit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lru/yandex/ch;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "$test_host"

    :goto_0
    sput-object v0, Lru/yandex/ch;->d:Ljava/lang/String;

    goto :goto_1

    :cond_0
    sget-boolean v0, Lru/yandex/ch;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lru/yandex/ch;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "https://api.mobile.maps.yandex.net/mapkit"

    goto :goto_0

    :goto_1
    sget-object v0, Lru/yandex/ch;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Z
    .locals 2

    sget v0, Lru/yandex/ch;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lru/yandex/ch;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "api.mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput v0, Lru/yandex/ch;->e:I

    :cond_0
    sget v0, Lru/yandex/ch;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
