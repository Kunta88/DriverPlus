.class public Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;
.super Lru/yandex/yandexmapkit/overlay/OverlayItem;


# instance fields
.field private j:I

.field private k:Z

.field private l:I


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/utils/GeoPoint;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lru/yandex/yandexmapkit/overlay/OverlayItem;-><init>(Lru/yandex/yandexmapkit/utils/GeoPoint;Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    iput p1, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->j:I

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->k:Z

    iput p1, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->l:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->j:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->j:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->l:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->l:I

    return-void
.end method

.method public isDragable()Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->k:Z

    return v0
.end method

.method public setDragable(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/yandex/yandexmapkit/overlay/drag/DragAndDropItem;->k:Z

    return-void
.end method
