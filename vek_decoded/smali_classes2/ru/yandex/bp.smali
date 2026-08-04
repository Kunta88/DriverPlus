.class public Lru/yandex/bp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lru/yandex/yandexmapkit/map/scale/ScaleView;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/map/scale/ScaleView;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/bp;->a:Lru/yandex/yandexmapkit/map/scale/ScaleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lru/yandex/bp;->a:Lru/yandex/yandexmapkit/map/scale/ScaleView;

    iget-object v1, v0, Lru/yandex/yandexmapkit/map/scale/ScaleView;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/yandex/yandexmapkit/map/scale/ScaleView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
