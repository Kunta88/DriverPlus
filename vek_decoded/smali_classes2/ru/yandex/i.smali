.class public Lru/yandex/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lru/yandex/core/KDActivity;


# direct methods
.method public constructor <init>(Lru/yandex/core/KDActivity;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/i;->a:Lru/yandex/core/KDActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lru/yandex/i;->a:Lru/yandex/core/KDActivity;

    iget-object v0, v0, Lru/yandex/core/KDActivity;->window:Lru/yandex/core/KDView;

    invoke-virtual {v0}, Lru/yandex/core/KDView;->forceLayout()V

    iget-object v0, p0, Lru/yandex/i;->a:Lru/yandex/core/KDActivity;

    iget-object v0, v0, Lru/yandex/core/KDActivity;->window:Lru/yandex/core/KDView;

    invoke-virtual {v0}, Lru/yandex/core/KDView;->requestLayout()V

    return-void
.end method
