.class public Lru/yandex/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lru/yandex/yandexmapkit/MapController;


# direct methods
.method public constructor <init>(Lru/yandex/yandexmapkit/MapController;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/z;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lru/yandex/z;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-static {v0}, Lru/yandex/yandexmapkit/MapController;->access$600(Lru/yandex/yandexmapkit/MapController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lru/yandex/z;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-static {v0}, Lru/yandex/yandexmapkit/MapController;->access$700(Lru/yandex/yandexmapkit/MapController;)Lru/yandex/yandexmapkit/MapModel;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapModel;->getZoom()I

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lru/yandex/z;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-static {v0}, Lru/yandex/yandexmapkit/MapController;->access$000(Lru/yandex/yandexmapkit/MapController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lru/yandex/z;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-static {v0}, Lru/yandex/yandexmapkit/MapController;->access$000(Lru/yandex/yandexmapkit/MapController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lru/yandex/z;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-static {v0}, Lru/yandex/yandexmapkit/MapController;->access$100(Lru/yandex/yandexmapkit/MapController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lru/yandex/z;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-static {v0}, Lru/yandex/yandexmapkit/MapController;->access$100(Lru/yandex/yandexmapkit/MapController;)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lru/yandex/z;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-static {v0}, Lru/yandex/yandexmapkit/MapController;->access$700(Lru/yandex/yandexmapkit/MapController;)Lru/yandex/yandexmapkit/MapModel;

    move-result-object v0

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapModel;->getZoom()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lru/yandex/z;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-static {v0}, Lru/yandex/yandexmapkit/MapController;->access$100(Lru/yandex/yandexmapkit/MapController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lru/yandex/z;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-static {v0}, Lru/yandex/yandexmapkit/MapController;->access$100(Lru/yandex/yandexmapkit/MapController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lru/yandex/z;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-static {v0}, Lru/yandex/yandexmapkit/MapController;->access$000(Lru/yandex/yandexmapkit/MapController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lru/yandex/z;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-static {v0}, Lru/yandex/yandexmapkit/MapController;->access$000(Lru/yandex/yandexmapkit/MapController;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lru/yandex/z;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-static {v0}, Lru/yandex/yandexmapkit/MapController;->access$100(Lru/yandex/yandexmapkit/MapController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lru/yandex/z;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-static {v0}, Lru/yandex/yandexmapkit/MapController;->access$100(Lru/yandex/yandexmapkit/MapController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lru/yandex/z;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-static {v0}, Lru/yandex/yandexmapkit/MapController;->access$000(Lru/yandex/yandexmapkit/MapController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lru/yandex/z;->a:Lru/yandex/yandexmapkit/MapController;

    invoke-static {v0}, Lru/yandex/yandexmapkit/MapController;->access$000(Lru/yandex/yandexmapkit/MapController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    return-void
.end method
