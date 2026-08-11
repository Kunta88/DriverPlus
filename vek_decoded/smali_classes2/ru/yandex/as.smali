.class public final Lru/yandex/as;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/yandex/as;->a:I

    iput p2, p0, Lru/yandex/as;->b:I

    iput p3, p0, Lru/yandex/as;->c:I

    return-void
.end method


# virtual methods
.method public a()Lru/yandex/yandexmapkit/utils/GeoPoint;
    .locals 5

    new-instance v0, Lru/yandex/yandexmapkit/utils/Point;

    iget v1, p0, Lru/yandex/as;->a:I

    int-to-long v1, v1

    iget v3, p0, Lru/yandex/as;->b:I

    int-to-long v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lru/yandex/yandexmapkit/utils/Point;-><init>(JJ)V

    invoke-static {v0}, Lru/yandex/yandexmapkit/utils/CoordConversion;->toLL(Lru/yandex/yandexmapkit/utils/Point;)Lru/yandex/yandexmapkit/utils/GeoPoint;

    move-result-object v0

    return-object v0
.end method
