.class public Lcom/sromku/polygon/Polygon;
.super Ljava/lang/Object;
.source "Polygon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sromku/polygon/Polygon$BoundingBox;,
        Lcom/sromku/polygon/Polygon$Builder;
    }
.end annotation


# instance fields
.field private final _boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

.field private final _sides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sromku/polygon/Line;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/sromku/polygon/Polygon$BoundingBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sromku/polygon/Line;",
            ">;",
            "Lcom/sromku/polygon/Polygon$BoundingBox;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sromku/polygon/Polygon;->_sides:Ljava/util/List;

    .line 20
    iput-object p2, p0, Lcom/sromku/polygon/Polygon;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/sromku/polygon/Polygon$BoundingBox;Lcom/sromku/polygon/Polygon$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/sromku/polygon/Polygon;-><init>(Ljava/util/List;Lcom/sromku/polygon/Polygon$BoundingBox;)V

    return-void
.end method

.method public static Builder()Lcom/sromku/polygon/Polygon$Builder;
    .locals 1

    .line 30
    new-instance v0, Lcom/sromku/polygon/Polygon$Builder;

    invoke-direct {v0}, Lcom/sromku/polygon/Polygon$Builder;-><init>()V

    return-object v0
.end method

.method private createRay(Lcom/sromku/polygon/Point;)Lcom/sromku/polygon/Line;
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/sromku/polygon/Polygon;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    iget v0, v0, Lcom/sromku/polygon/Polygon$BoundingBox;->xMax:F

    iget-object v1, p0, Lcom/sromku/polygon/Polygon;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    iget v1, v1, Lcom/sromku/polygon/Polygon$BoundingBox;->xMin:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 266
    new-instance v1, Lcom/sromku/polygon/Point;

    iget-object v2, p0, Lcom/sromku/polygon/Polygon;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    iget v2, v2, Lcom/sromku/polygon/Polygon$BoundingBox;->xMin:F

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/sromku/polygon/Polygon;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    iget v0, v0, Lcom/sromku/polygon/Polygon$BoundingBox;->yMin:F

    invoke-direct {v1, v2, v0}, Lcom/sromku/polygon/Point;-><init>(FF)V

    .line 268
    new-instance v0, Lcom/sromku/polygon/Line;

    invoke-direct {v0, v1, p1}, Lcom/sromku/polygon/Line;-><init>(Lcom/sromku/polygon/Point;Lcom/sromku/polygon/Point;)V

    return-object v0
.end method

.method private inBoundingBox(Lcom/sromku/polygon/Point;)Z
    .locals 2

    .line 280
    iget v0, p1, Lcom/sromku/polygon/Point;->x:F

    iget-object v1, p0, Lcom/sromku/polygon/Polygon;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    iget v1, v1, Lcom/sromku/polygon/Polygon$BoundingBox;->xMin:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p1, Lcom/sromku/polygon/Point;->x:F

    iget-object v1, p0, Lcom/sromku/polygon/Polygon;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    iget v1, v1, Lcom/sromku/polygon/Polygon$BoundingBox;->xMax:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p1, Lcom/sromku/polygon/Point;->y:F

    iget-object v1, p0, Lcom/sromku/polygon/Polygon;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    iget v1, v1, Lcom/sromku/polygon/Polygon$BoundingBox;->yMin:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget p1, p1, Lcom/sromku/polygon/Point;->y:F

    iget-object v0, p0, Lcom/sromku/polygon/Polygon;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    iget v0, v0, Lcom/sromku/polygon/Polygon$BoundingBox;->yMax:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private intersect(Lcom/sromku/polygon/Line;Lcom/sromku/polygon/Line;)Z
    .locals 4

    .line 212
    invoke-virtual {p1}, Lcom/sromku/polygon/Line;->isVertical()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/sromku/polygon/Line;->isVertical()Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    invoke-virtual {p1}, Lcom/sromku/polygon/Line;->getA()F

    move-result v0

    invoke-virtual {p2}, Lcom/sromku/polygon/Line;->getA()F

    move-result v2

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    return v1

    .line 220
    :cond_0
    invoke-virtual {p2}, Lcom/sromku/polygon/Line;->getB()F

    move-result v0

    invoke-virtual {p1}, Lcom/sromku/polygon/Line;->getB()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Lcom/sromku/polygon/Line;->getA()F

    move-result v2

    invoke-virtual {p2}, Lcom/sromku/polygon/Line;->getA()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v0, v2

    .line 221
    invoke-virtual {p2}, Lcom/sromku/polygon/Line;->getA()F

    move-result v2

    mul-float v2, v2, v0

    invoke-virtual {p2}, Lcom/sromku/polygon/Line;->getB()F

    move-result v3

    add-float/2addr v2, v3

    .line 222
    new-instance v3, Lcom/sromku/polygon/Point;

    invoke-direct {v3, v0, v2}, Lcom/sromku/polygon/Point;-><init>(FF)V

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p1}, Lcom/sromku/polygon/Line;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/sromku/polygon/Line;->isVertical()Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    invoke-virtual {p1}, Lcom/sromku/polygon/Line;->getStart()Lcom/sromku/polygon/Point;

    move-result-object v0

    iget v0, v0, Lcom/sromku/polygon/Point;->x:F

    .line 228
    invoke-virtual {p2}, Lcom/sromku/polygon/Line;->getA()F

    move-result v2

    mul-float v2, v2, v0

    invoke-virtual {p2}, Lcom/sromku/polygon/Line;->getB()F

    move-result v3

    add-float/2addr v2, v3

    .line 229
    new-instance v3, Lcom/sromku/polygon/Point;

    invoke-direct {v3, v0, v2}, Lcom/sromku/polygon/Point;-><init>(FF)V

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {p1}, Lcom/sromku/polygon/Line;->isVertical()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/sromku/polygon/Line;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    invoke-virtual {p2}, Lcom/sromku/polygon/Line;->getStart()Lcom/sromku/polygon/Point;

    move-result-object v0

    iget v0, v0, Lcom/sromku/polygon/Point;->x:F

    .line 235
    invoke-virtual {p1}, Lcom/sromku/polygon/Line;->getA()F

    move-result v2

    mul-float v2, v2, v0

    invoke-virtual {p1}, Lcom/sromku/polygon/Line;->getB()F

    move-result v3

    add-float/2addr v2, v3

    .line 236
    new-instance v3, Lcom/sromku/polygon/Point;

    invoke-direct {v3, v0, v2}, Lcom/sromku/polygon/Point;-><init>(FF)V

    .line 247
    :goto_0
    invoke-virtual {p2, v3}, Lcom/sromku/polygon/Line;->isInside(Lcom/sromku/polygon/Point;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1, v3}, Lcom/sromku/polygon/Line;->isInside(Lcom/sromku/polygon/Point;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method


# virtual methods
.method public contains(Lcom/sromku/polygon/Point;)Z
    .locals 4

    .line 171
    invoke-direct {p0, p1}, Lcom/sromku/polygon/Polygon;->inBoundingBox(Lcom/sromku/polygon/Point;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 173
    invoke-direct {p0, p1}, Lcom/sromku/polygon/Polygon;->createRay(Lcom/sromku/polygon/Point;)Lcom/sromku/polygon/Line;

    move-result-object p1

    .line 175
    iget-object v0, p0, Lcom/sromku/polygon/Polygon;->_sides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sromku/polygon/Line;

    .line 177
    invoke-direct {p0, p1, v3}, Lcom/sromku/polygon/Polygon;->intersect(Lcom/sromku/polygon/Line;Lcom/sromku/polygon/Line;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :cond_1
    rem-int/lit8 v2, v2, 0x2

    const/4 p1, 0x1

    if-ne v2, p1, :cond_2

    return p1

    :cond_2
    return v1
.end method

.method public getSides()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sromku/polygon/Line;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/sromku/polygon/Polygon;->_sides:Ljava/util/List;

    return-object v0
.end method
