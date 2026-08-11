.class public final enum Lru/yandex/aq;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lru/yandex/aq;

.field public static final enum b:Lru/yandex/aq;

.field public static final enum c:Lru/yandex/aq;

.field private static final synthetic d:[Lru/yandex/aq;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lru/yandex/aq;

    const-string v1, "NIGHT_ON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lru/yandex/aq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/yandex/aq;->a:Lru/yandex/aq;

    new-instance v1, Lru/yandex/aq;

    const-string v3, "NIGHT_OFF"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lru/yandex/aq;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/yandex/aq;->b:Lru/yandex/aq;

    new-instance v3, Lru/yandex/aq;

    const-string v5, "NIGHT_AUTO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lru/yandex/aq;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lru/yandex/aq;->c:Lru/yandex/aq;

    const/4 v5, 0x3

    new-array v5, v5, [Lru/yandex/aq;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lru/yandex/aq;->d:[Lru/yandex/aq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/yandex/aq;
    .locals 1

    const-class v0, Lru/yandex/aq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/yandex/aq;

    return-object p0
.end method

.method public static values()[Lru/yandex/aq;
    .locals 1

    sget-object v0, Lru/yandex/aq;->d:[Lru/yandex/aq;

    invoke-virtual {v0}, [Lru/yandex/aq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/yandex/aq;

    return-object v0
.end method
