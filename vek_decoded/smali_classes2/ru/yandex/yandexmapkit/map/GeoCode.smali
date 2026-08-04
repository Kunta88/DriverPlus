.class public Lru/yandex/yandexmapkit/map/GeoCode;
.super Ljava/lang/Object;


# static fields
.field public static final OBJECT_KIND_AREA:Ljava/lang/String; = "area"

.field public static final OBJECT_KIND_BRIDGE:Ljava/lang/String; = "bridge"

.field public static final OBJECT_KIND_CEMETERY:Ljava/lang/String; = "cemetery"

.field public static final OBJECT_KIND_COUNTRY:Ljava/lang/String; = "country"

.field public static final OBJECT_KIND_DISTRICT:Ljava/lang/String; = "district"

.field public static final OBJECT_KIND_HOUSE:Ljava/lang/String; = "house"

.field public static final OBJECT_KIND_HYDRO:Ljava/lang/String; = "hydro"

.field public static final OBJECT_KIND_KM:Ljava/lang/String; = "km"

.field public static final OBJECT_KIND_LOCALITY:Ljava/lang/String; = "locality"

.field public static final OBJECT_KIND_METRO:Ljava/lang/String; = "metro"

.field public static final OBJECT_KIND_OTHER:Ljava/lang/String; = "other"

.field public static final OBJECT_KIND_PROVINCE:Ljava/lang/String; = "province"

.field public static final OBJECT_KIND_RAILWAY:Ljava/lang/String; = "railway"

.field public static final OBJECT_KIND_ROUTE:Ljava/lang/String; = "route"

.field public static final OBJECT_KIND_STREET:Ljava/lang/String; = "street"

.field public static final OBJECT_KIND_VEGETATION:Ljava/lang/String; = "vegetation"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lru/yandex/yandexmapkit/utils/Point;

.field private f:Lru/yandex/yandexmapkit/utils/GeoPoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lru/yandex/yandexmapkit/map/GeoCode;->d:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/yandexmapkit/map/GeoCode;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Lru/yandex/yandexmapkit/utils/GeoPoint;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/yandexmapkit/map/GeoCode;->f:Lru/yandex/yandexmapkit/utils/GeoPoint;

    return-void
.end method

.method public a(Lru/yandex/yandexmapkit/utils/Point;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/yandexmapkit/map/GeoCode;->e:Lru/yandex/yandexmapkit/utils/Point;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/yandexmapkit/map/GeoCode;->a:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/yandexmapkit/map/GeoCode;->b:Ljava/lang/String;

    return-void
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lru/yandex/yandexmapkit/map/GeoCode;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lru/yandex/yandexmapkit/map/GeoCode;->b:Ljava/lang/String;

    iget-object v2, p0, Lru/yandex/yandexmapkit/map/GeoCode;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lru/yandex/yandexmapkit/map/GeoCode;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lru/yandex/yandexmapkit/map/GeoCode;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeoPoint()Lru/yandex/yandexmapkit/utils/GeoPoint;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/GeoCode;->f:Lru/yandex/yandexmapkit/utils/GeoPoint;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/GeoCode;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPoint()Lru/yandex/yandexmapkit/utils/Point;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/GeoCode;->e:Lru/yandex/yandexmapkit/utils/Point;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/GeoCode;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/GeoCode;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getZoomid()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/map/GeoCode;->d:I

    return v0
.end method
