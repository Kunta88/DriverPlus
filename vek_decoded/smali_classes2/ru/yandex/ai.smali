.class public enum Lru/yandex/ai;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lru/yandex/ai;

.field public static final enum b:Lru/yandex/ai;

.field private static final synthetic c:[Lru/yandex/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lru/yandex/aj;

    const-string v1, "ID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lru/yandex/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/yandex/ai;->a:Lru/yandex/ai;

    new-instance v1, Lru/yandex/ak;

    const-string v3, "CACHE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lru/yandex/ak;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/yandex/ai;->b:Lru/yandex/ai;

    const/4 v3, 0x2

    new-array v3, v3, [Lru/yandex/ai;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lru/yandex/ai;->c:[Lru/yandex/ai;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lru/yandex/ai;-><init>(Ljava/lang/String;IB)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/yandex/ai;
    .locals 1

    const-class v0, Lru/yandex/ai;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/yandex/ai;

    return-object p0
.end method

.method public static values()[Lru/yandex/ai;
    .locals 1

    sget-object v0, Lru/yandex/ai;->c:[Lru/yandex/ai;

    invoke-virtual {v0}, [Lru/yandex/ai;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/yandex/ai;

    return-object v0
.end method
