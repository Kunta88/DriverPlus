.class public Lcom/sromku/polygon/Line;
.super Ljava/lang/Object;
.source "Line.java"


# instance fields
.field private _a:F

.field private _b:F

.field private final _end:Lcom/sromku/polygon/Point;

.field private final _start:Lcom/sromku/polygon/Point;

.field private _vertical:Z


# direct methods
.method public constructor <init>(Lcom/sromku/polygon/Point;Lcom/sromku/polygon/Point;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 12
    iput v0, p0, Lcom/sromku/polygon/Line;->_a:F

    .line 13
    iput v0, p0, Lcom/sromku/polygon/Line;->_b:F

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/sromku/polygon/Line;->_vertical:Z

    .line 18
    iput-object p1, p0, Lcom/sromku/polygon/Line;->_start:Lcom/sromku/polygon/Point;

    .line 19
    iput-object p2, p0, Lcom/sromku/polygon/Line;->_end:Lcom/sromku/polygon/Point;

    .line 21
    iget v0, p2, Lcom/sromku/polygon/Point;->x:F

    iget v1, p1, Lcom/sromku/polygon/Point;->x:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 23
    iget v0, p2, Lcom/sromku/polygon/Point;->y:F

    iget v1, p1, Lcom/sromku/polygon/Point;->y:F

    sub-float/2addr v0, v1

    iget p2, p2, Lcom/sromku/polygon/Point;->x:F

    iget v1, p1, Lcom/sromku/polygon/Point;->x:F

    sub-float/2addr p2, v1

    div-float/2addr v0, p2

    iput v0, p0, Lcom/sromku/polygon/Line;->_a:F

    .line 24
    iget p2, p1, Lcom/sromku/polygon/Point;->y:F

    iget v0, p0, Lcom/sromku/polygon/Line;->_a:F

    iget p1, p1, Lcom/sromku/polygon/Point;->x:F

    mul-float v0, v0, p1

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/sromku/polygon/Line;->_b:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/sromku/polygon/Line;->_vertical:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public getA()F
    .locals 1

    .line 73
    iget v0, p0, Lcom/sromku/polygon/Line;->_a:F

    return v0
.end method

.method public getB()F
    .locals 1

    .line 83
    iget v0, p0, Lcom/sromku/polygon/Line;->_b:F

    return v0
.end method

.method public getEnd()Lcom/sromku/polygon/Point;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sromku/polygon/Line;->_end:Lcom/sromku/polygon/Point;

    return-object v0
.end method

.method public getStart()Lcom/sromku/polygon/Point;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sromku/polygon/Line;->_start:Lcom/sromku/polygon/Point;

    return-object v0
.end method

.method public isInside(Lcom/sromku/polygon/Point;)Z
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/sromku/polygon/Line;->_start:Lcom/sromku/polygon/Point;

    iget v0, v0, Lcom/sromku/polygon/Point;->x:F

    iget-object v1, p0, Lcom/sromku/polygon/Line;->_end:Lcom/sromku/polygon/Point;

    iget v1, v1, Lcom/sromku/polygon/Point;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sromku/polygon/Line;->_start:Lcom/sromku/polygon/Point;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sromku/polygon/Line;->_end:Lcom/sromku/polygon/Point;

    :goto_0
    iget v0, v0, Lcom/sromku/polygon/Point;->x:F

    .line 43
    iget-object v1, p0, Lcom/sromku/polygon/Line;->_start:Lcom/sromku/polygon/Point;

    iget v1, v1, Lcom/sromku/polygon/Point;->x:F

    iget-object v2, p0, Lcom/sromku/polygon/Line;->_end:Lcom/sromku/polygon/Point;

    iget v2, v2, Lcom/sromku/polygon/Point;->x:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/sromku/polygon/Line;->_start:Lcom/sromku/polygon/Point;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sromku/polygon/Line;->_end:Lcom/sromku/polygon/Point;

    :goto_1
    iget v1, v1, Lcom/sromku/polygon/Point;->x:F

    .line 44
    iget-object v2, p0, Lcom/sromku/polygon/Line;->_start:Lcom/sromku/polygon/Point;

    iget v2, v2, Lcom/sromku/polygon/Point;->y:F

    iget-object v3, p0, Lcom/sromku/polygon/Line;->_end:Lcom/sromku/polygon/Point;

    iget v3, v3, Lcom/sromku/polygon/Point;->y:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/sromku/polygon/Line;->_start:Lcom/sromku/polygon/Point;

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/sromku/polygon/Line;->_end:Lcom/sromku/polygon/Point;

    :goto_2
    iget v2, v2, Lcom/sromku/polygon/Point;->y:F

    .line 45
    iget-object v3, p0, Lcom/sromku/polygon/Line;->_start:Lcom/sromku/polygon/Point;

    iget v3, v3, Lcom/sromku/polygon/Point;->y:F

    iget-object v4, p0, Lcom/sromku/polygon/Line;->_end:Lcom/sromku/polygon/Point;

    iget v4, v4, Lcom/sromku/polygon/Point;->y:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/sromku/polygon/Line;->_start:Lcom/sromku/polygon/Point;

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/sromku/polygon/Line;->_end:Lcom/sromku/polygon/Point;

    :goto_3
    iget v3, v3, Lcom/sromku/polygon/Point;->y:F

    .line 47
    iget v4, p1, Lcom/sromku/polygon/Point;->x:F

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_4

    iget v1, p1, Lcom/sromku/polygon/Point;->x:F

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_4

    iget v0, p1, Lcom/sromku/polygon/Point;->y:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_4

    iget p1, p1, Lcom/sromku/polygon/Point;->y:F

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public isVertical()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/sromku/polygon/Line;->_vertical:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 109
    iget-object v1, p0, Lcom/sromku/polygon/Line;->_start:Lcom/sromku/polygon/Point;

    invoke-virtual {v1}, Lcom/sromku/polygon/Point;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sromku/polygon/Line;->_end:Lcom/sromku/polygon/Point;

    invoke-virtual {v1}, Lcom/sromku/polygon/Point;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s-%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
