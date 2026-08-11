.class public Lru/yandex/ae;
.super Lru/yandex/af;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:J

.field protected d:I

.field protected e:I

.field protected f:F

.field protected g:F

.field protected h:F

.field protected i:F

.field protected j:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lru/yandex/ag;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lru/yandex/af;-><init>(Landroid/content/Context;Lru/yandex/ag;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lru/yandex/ae;->a:Z

    iput-boolean p1, p0, Lru/yandex/ae;->b:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lru/yandex/ae;->e:I

    iget v1, p0, Lru/yandex/ae;->d:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lru/yandex/ae;->d:I

    :cond_0
    iget v1, p0, Lru/yandex/ae;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_1

    if-ne v0, v2, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lru/yandex/ae;->f:F

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lru/yandex/ae;->g:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lru/yandex/ae;->h:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lru/yandex/ae;->i:F

    :cond_1
    iget-object v0, p0, Lru/yandex/ae;->l:Lru/yandex/ag;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lru/yandex/ae;->k:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    if-eq v0, v4, :cond_d

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_8

    const/4 v6, 0x5

    if-eq v0, v6, :cond_5

    const/4 v5, 0x6

    if-eq v0, v5, :cond_3

    goto/16 :goto_0

    :cond_3
    iget p1, p0, Lru/yandex/ae;->e:I

    if-ne p1, v2, :cond_4

    iput-boolean v3, p0, Lru/yandex/ae;->a:Z

    iput-boolean v4, p0, Lru/yandex/ae;->n:Z

    iput v1, p0, Lru/yandex/ae;->q:F

    iput v1, p0, Lru/yandex/ae;->p:F

    iget-object p1, p0, Lru/yandex/ae;->l:Lru/yandex/ag;

    invoke-interface {p1}, Lru/yandex/ag;->onScaleEnd()V

    :cond_4
    return-void

    :cond_5
    iget p1, p0, Lru/yandex/ae;->e:I

    if-ne p1, v2, :cond_7

    iget p1, p0, Lru/yandex/ae;->f:F

    iget v0, p0, Lru/yandex/ae;->h:F

    sub-float/2addr p1, v0

    iget v0, p0, Lru/yandex/ae;->g:F

    iget v2, p0, Lru/yandex/ae;->i:F

    sub-float/2addr v0, v2

    mul-float p1, p1, p1

    mul-float v0, v0, v0

    add-float/2addr p1, v0

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float p1, v6

    iput p1, p0, Lru/yandex/ae;->j:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_6

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lru/yandex/ae;->j:F

    :cond_6
    iget p1, p0, Lru/yandex/ae;->f:F

    iget v0, p0, Lru/yandex/ae;->h:F

    add-float/2addr p1, v0

    div-float/2addr p1, v5

    iget v0, p0, Lru/yandex/ae;->g:F

    iget v1, p0, Lru/yandex/ae;->i:F

    add-float/2addr v0, v1

    div-float/2addr v0, v5

    iget-object v1, p0, Lru/yandex/ae;->l:Lru/yandex/ag;

    invoke-interface {v1, p1, v0}, Lru/yandex/ag;->onScaleBegin(FF)V

    iput-boolean v4, p0, Lru/yandex/ae;->a:Z

    iput-boolean v3, p0, Lru/yandex/ae;->n:Z

    iput-boolean v3, p0, Lru/yandex/ae;->m:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lru/yandex/ae;->c:J

    iput-boolean v4, p0, Lru/yandex/ae;->b:Z

    :cond_7
    return-void

    :cond_8
    iget-boolean v0, p0, Lru/yandex/ae;->a:Z

    if-eqz v0, :cond_a

    iget p1, p0, Lru/yandex/ae;->f:F

    iget v0, p0, Lru/yandex/ae;->h:F

    sub-float/2addr p1, v0

    iget v0, p0, Lru/yandex/ae;->g:F

    iget v1, p0, Lru/yandex/ae;->i:F

    sub-float/2addr v0, v1

    mul-float p1, p1, p1

    mul-float v0, v0, v0

    add-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    iget v0, p0, Lru/yandex/ae;->f:F

    iget v1, p0, Lru/yandex/ae;->h:F

    add-float/2addr v0, v1

    div-float/2addr v0, v5

    iget v1, p0, Lru/yandex/ae;->g:F

    iget v2, p0, Lru/yandex/ae;->i:F

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    iget v2, p0, Lru/yandex/ae;->j:F

    div-float/2addr p1, v2

    iget-object v2, p0, Lru/yandex/ae;->l:Lru/yandex/ag;

    invoke-interface {v2, v0, v1, p1}, Lru/yandex/ag;->onScale(FFF)V

    iput-boolean v3, p0, Lru/yandex/ae;->o:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lru/yandex/ae;->c:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0xfa

    cmp-long p1, v0, v4

    if-lez p1, :cond_9

    iput-boolean v3, p0, Lru/yandex/ae;->b:Z

    :cond_9
    return-void

    :cond_a
    iget-boolean v0, p0, Lru/yandex/ae;->n:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lru/yandex/ae;->p:F

    iget v2, p0, Lru/yandex/ae;->q:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_b

    iget v0, p0, Lru/yandex/ae;->q:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lru/yandex/ae;->p:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lru/yandex/ae;->q:F

    return-void

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lru/yandex/ae;->p:F

    sub-float v1, v0, v1

    iget v2, p0, Lru/yandex/ae;->q:F

    sub-float v2, p1, v2

    iget-object v3, p0, Lru/yandex/ae;->l:Lru/yandex/ag;

    neg-float v1, v1

    neg-float v2, v2

    iget v5, p0, Lru/yandex/ae;->p:F

    iget v6, p0, Lru/yandex/ae;->q:F

    invoke-interface {v3, v1, v2, v5, v6}, Lru/yandex/ag;->onScroll(FFFF)V

    iput v0, p0, Lru/yandex/ae;->p:F

    iput p1, p0, Lru/yandex/ae;->q:F

    iput-boolean v4, p0, Lru/yandex/ae;->o:Z

    :cond_c
    return-void

    :cond_d
    iget-object v0, p0, Lru/yandex/ae;->l:Lru/yandex/ag;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lru/yandex/ag;->onUp(FF)V

    iput-boolean v3, p0, Lru/yandex/ae;->n:Z

    iput v4, p0, Lru/yandex/ae;->d:I

    return-void

    :cond_e
    iput v1, p0, Lru/yandex/ae;->q:F

    iput v1, p0, Lru/yandex/ae;->p:F

    iput-boolean v4, p0, Lru/yandex/ae;->n:Z

    iput-boolean v3, p0, Lru/yandex/ae;->a:Z

    iput-boolean v4, p0, Lru/yandex/ae;->m:Z

    return-void

    :cond_f
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-eq p1, v4, :cond_10

    goto :goto_1

    :cond_10
    iput v4, p0, Lru/yandex/ae;->d:I

    :goto_1
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-boolean v0, p0, Lru/yandex/ae;->o:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lru/yandex/af;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lru/yandex/ae;->l:Lru/yandex/ag;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lru/yandex/ae;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget v2, p0, Lru/yandex/ae;->e:I

    if-ne v2, v1, :cond_0

    iget-boolean v2, p0, Lru/yandex/ae;->b:Z

    if-eqz v2, :cond_0

    iput v1, p0, Lru/yandex/ae;->d:I

    iget p1, p0, Lru/yandex/ae;->f:F

    iget v0, p0, Lru/yandex/ae;->h:F

    add-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget v2, p0, Lru/yandex/ae;->g:F

    iget v3, p0, Lru/yandex/ae;->i:F

    add-float/2addr v2, v3

    div-float/2addr v2, v0

    iget-object v0, p0, Lru/yandex/ae;->l:Lru/yandex/ag;

    invoke-interface {v0, p1, v2}, Lru/yandex/ag;->onTwoFingersSingleTap(FF)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lru/yandex/ae;->l:Lru/yandex/ag;

    invoke-interface {v2, v0, p1}, Lru/yandex/ag;->onSingleTapUp(FF)V

    :cond_1
    :goto_0
    return v1
.end method
