.class public Lru/yandex/bg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lru/yandex/yandexmapkit/map/jams/JamsButton;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/map/jams/JamsButton;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/bg;->a:Lru/yandex/yandexmapkit/map/jams/JamsButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lru/yandex/bg;->a:Lru/yandex/yandexmapkit/map/jams/JamsButton;

    iget-boolean v0, v0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/yandex/bg;->a:Lru/yandex/yandexmapkit/map/jams/JamsButton;

    iget v0, v0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lru/yandex/bg;->a:Lru/yandex/yandexmapkit/map/jams/JamsButton;

    iget-object v0, v0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    check-cast v0, Landroid/graphics/drawable/LevelListDrawable;

    iget-object v1, p0, Lru/yandex/bg;->a:Lru/yandex/yandexmapkit/map/jams/JamsButton;

    iget v2, v1, Lru/yandex/yandexmapkit/map/jams/JamsButton;->c:I

    rsub-int/lit8 v2, v2, 0x1

    iput v2, v1, Lru/yandex/yandexmapkit/map/jams/JamsButton;->c:I

    iget-object v1, p0, Lru/yandex/bg;->a:Lru/yandex/yandexmapkit/map/jams/JamsButton;

    iget v1, v1, Lru/yandex/yandexmapkit/map/jams/JamsButton;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    iget-object v0, p0, Lru/yandex/bg;->a:Lru/yandex/yandexmapkit/map/jams/JamsButton;

    iget-object v0, v0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->d:Landroid/os/Handler;

    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
