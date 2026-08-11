.class public Lru/yandex/yandexmapkit/map/MapEvent;
.super Ljava/lang/Object;


# static fields
.field public static final MSG_EMPTY:I = 0x0

.field public static final MSG_LONG_PRESS:I = 0xa

.field public static final MSG_SCALE_BEGIN:I = 0x7

.field public static final MSG_SCALE_END:I = 0x9

.field public static final MSG_SCALE_MOVE:I = 0x8

.field public static final MSG_SCROLL_BEGIN:I = 0x1

.field public static final MSG_SCROLL_END:I = 0x3

.field public static final MSG_SCROLL_MOVE:I = 0x2

.field public static final MSG_ZOOM_BEGIN:I = 0x4

.field public static final MSG_ZOOM_END:I = 0x6

.field public static final MSG_ZOOM_MOVE:I = 0x5


# instance fields
.field private a:I

.field private final b:F

.field private final c:F

.field private final d:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(IFF)V

    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(IFFZ)V

    return-void
.end method

.method public constructor <init>(IFFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/yandex/yandexmapkit/map/MapEvent;->a:I

    iput p2, p0, Lru/yandex/yandexmapkit/map/MapEvent;->b:F

    iput p3, p0, Lru/yandex/yandexmapkit/map/MapEvent;->c:F

    iput-boolean p4, p0, Lru/yandex/yandexmapkit/map/MapEvent;->d:Z

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lru/yandex/yandexmapkit/map/MapEvent;-><init>(IFFZ)V

    return-void
.end method


# virtual methods
.method public getMsg()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/map/MapEvent;->a:I

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/map/MapEvent;->b:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/map/MapEvent;->c:F

    return v0
.end method

.method public isGesture()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/map/MapEvent;->d:Z

    return v0
.end method
