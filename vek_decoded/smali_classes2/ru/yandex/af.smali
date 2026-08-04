.class public Lru/yandex/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field protected k:Landroid/view/GestureDetector;

.field protected l:Lru/yandex/ag;

.field protected m:Z

.field protected n:Z

.field protected o:Z

.field protected p:F

.field protected q:F

.field r:Z

.field s:I

.field t:I

.field u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lru/yandex/ag;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/af;->m:Z

    iput-boolean v0, p0, Lru/yandex/af;->n:Z

    iput-boolean v0, p0, Lru/yandex/af;->o:Z

    const/4 v1, 0x0

    iput v1, p0, Lru/yandex/af;->p:F

    iput v1, p0, Lru/yandex/af;->q:F

    iput-boolean v0, p0, Lru/yandex/af;->r:Z

    iput-boolean v0, p0, Lru/yandex/af;->u:Z

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lru/yandex/af;->k:Landroid/view/GestureDetector;

    iput-object p2, p0, Lru/yandex/af;->l:Lru/yandex/ag;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 7

    iget-object v0, p0, Lru/yandex/af;->l:Lru/yandex/ag;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lru/yandex/af;->k:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lru/yandex/af;->n:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lru/yandex/af;->p:F

    iget v3, p0, Lru/yandex/af;->q:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    cmpl-float v0, v3, v1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lru/yandex/af;->p:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lru/yandex/af;->q:F

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lru/yandex/af;->p:F

    sub-float v3, v0, v1

    iget v4, p0, Lru/yandex/af;->q:F

    sub-float v5, p1, v4

    iget-object v6, p0, Lru/yandex/af;->l:Lru/yandex/ag;

    neg-float v3, v3

    neg-float v5, v5

    invoke-interface {v6, v3, v5, v1, v4}, Lru/yandex/ag;->onScroll(FFFF)V

    iput v0, p0, Lru/yandex/af;->p:F

    iput p1, p0, Lru/yandex/af;->q:F

    iput-boolean v2, p0, Lru/yandex/af;->o:Z

    return-void

    :cond_3
    iget-object v0, p0, Lru/yandex/af;->l:Lru/yandex/ag;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lru/yandex/ag;->onUp(FF)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lru/yandex/af;->n:Z

    return-void

    :cond_4
    iput v1, p0, Lru/yandex/af;->q:F

    iput v1, p0, Lru/yandex/af;->p:F

    iput-boolean v2, p0, Lru/yandex/af;->n:Z

    iput-boolean v2, p0, Lru/yandex/af;->m:Z

    :cond_5
    :goto_0
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v7, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int v8, p1

    iget p1, p0, Lru/yandex/af;->s:I

    add-int/lit8 v3, p1, -0x5

    iget p1, p0, Lru/yandex/af;->t:I

    add-int/lit8 v4, p1, -0x5

    const/16 v5, 0xa

    const/16 v6, 0xa

    invoke-static/range {v3 .. v8}, Lru/yandex/yandexmapkit/utils/Utils;->a(IIIIII)Z

    move-result p1

    if-nez p1, :cond_1

    iput-boolean v2, p0, Lru/yandex/af;->u:Z

    iput-boolean v1, p0, Lru/yandex/af;->r:Z

    :cond_1
    return v2

    :cond_2
    iget-boolean v0, p0, Lru/yandex/af;->u:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lru/yandex/af;->l:Lru/yandex/ag;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v3, p1}, Lru/yandex/ag;->onDoubleTap(FF)V

    :cond_3
    iput-boolean v2, p0, Lru/yandex/af;->u:Z

    iput-boolean v2, p0, Lru/yandex/af;->r:Z

    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lru/yandex/af;->s:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lru/yandex/af;->t:I

    iput-boolean v1, p0, Lru/yandex/af;->u:Z

    iput-boolean v1, p0, Lru/yandex/af;->r:Z

    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lru/yandex/af;->l:Lru/yandex/ag;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lru/yandex/ag;->onDown(FF)V

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, Lru/yandex/af;->l:Lru/yandex/ag;

    if-eqz p1, :cond_0

    invoke-interface {p1, p3, p4}, Lru/yandex/ag;->onFling(FF)V

    iget-object p1, p0, Lru/yandex/af;->l:Lru/yandex/ag;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-interface {p1, p3, p2}, Lru/yandex/ag;->onUp(FF)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lru/yandex/af;->l:Lru/yandex/ag;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lru/yandex/af;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lru/yandex/af;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lru/yandex/af;->l:Lru/yandex/ag;

    invoke-interface {v1, v0, p1}, Lru/yandex/ag;->onLongPress(FF)V

    iput v0, p0, Lru/yandex/af;->p:F

    iput p1, p0, Lru/yandex/af;->q:F

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lru/yandex/af;->l:Lru/yandex/ag;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lru/yandex/af;->l:Lru/yandex/ag;

    invoke-interface {v1, v0, p1}, Lru/yandex/ag;->onSingleTapUp(FF)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
