.class public Lcom/sromku/polygon/Polygon$Builder;
.super Ljava/lang/Object;
.source "Polygon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sromku/polygon/Polygon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private _boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

.field private _firstPoint:Z

.field private _isClosed:Z

.field private _sides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sromku/polygon/Line;",
            ">;"
        }
    .end annotation
.end field

.field private _vertexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sromku/polygon/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_vertexes:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_sides:Ljava/util/List;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_firstPoint:Z

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_isClosed:Z

    return-void
.end method

.method private updateBoundingBox(Lcom/sromku/polygon/Point;)V
    .locals 2

    .line 121
    iget-boolean v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_firstPoint:Z

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Lcom/sromku/polygon/Polygon$BoundingBox;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sromku/polygon/Polygon$BoundingBox;-><init>(Lcom/sromku/polygon/Polygon$1;)V

    iput-object v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    .line 124
    iget v1, p1, Lcom/sromku/polygon/Point;->x:F

    iput v1, v0, Lcom/sromku/polygon/Polygon$BoundingBox;->xMax:F

    .line 125
    iget-object v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    iget v1, p1, Lcom/sromku/polygon/Point;->x:F

    iput v1, v0, Lcom/sromku/polygon/Polygon$BoundingBox;->xMin:F

    .line 126
    iget-object v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    iget v1, p1, Lcom/sromku/polygon/Point;->y:F

    iput v1, v0, Lcom/sromku/polygon/Polygon$BoundingBox;->yMax:F

    .line 127
    iget-object v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    iget p1, p1, Lcom/sromku/polygon/Point;->y:F

    iput p1, v0, Lcom/sromku/polygon/Polygon$BoundingBox;->yMin:F

    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lcom/sromku/polygon/Polygon$Builder;->_firstPoint:Z

    goto :goto_1

    .line 134
    :cond_0
    iget v0, p1, Lcom/sromku/polygon/Point;->x:F

    iget-object v1, p0, Lcom/sromku/polygon/Polygon$Builder;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    iget v1, v1, Lcom/sromku/polygon/Polygon$BoundingBox;->xMax:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    iget v1, p1, Lcom/sromku/polygon/Point;->x:F

    iput v1, v0, Lcom/sromku/polygon/Polygon$BoundingBox;->xMax:F

    goto :goto_0

    .line 138
    :cond_1
    iget v0, p1, Lcom/sromku/polygon/Point;->x:F

    iget-object v1, p0, Lcom/sromku/polygon/Polygon$Builder;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    iget v1, v1, Lcom/sromku/polygon/Polygon$BoundingBox;->xMin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    iget v1, p1, Lcom/sromku/polygon/Point;->x:F

    iput v1, v0, Lcom/sromku/polygon/Polygon$BoundingBox;->xMin:F

    .line 142
    :cond_2
    :goto_0
    iget v0, p1, Lcom/sromku/polygon/Point;->y:F

    iget-object v1, p0, Lcom/sromku/polygon/Polygon$Builder;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    iget v1, v1, Lcom/sromku/polygon/Polygon$BoundingBox;->yMax:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    iget p1, p1, Lcom/sromku/polygon/Point;->y:F

    iput p1, v0, Lcom/sromku/polygon/Polygon$BoundingBox;->yMax:F

    goto :goto_1

    .line 146
    :cond_3
    iget v0, p1, Lcom/sromku/polygon/Point;->y:F

    iget-object v1, p0, Lcom/sromku/polygon/Polygon$Builder;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    iget v1, v1, Lcom/sromku/polygon/Polygon$BoundingBox;->yMin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 148
    iget-object v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    iget p1, p1, Lcom/sromku/polygon/Point;->y:F

    iput p1, v0, Lcom/sromku/polygon/Polygon$BoundingBox;->yMin:F

    :cond_4
    :goto_1
    return-void
.end method

.method private validate()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_vertexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    return-void

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Polygon must have at least 3 points"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addVertex(Lcom/sromku/polygon/Point;)Lcom/sromku/polygon/Polygon$Builder;
    .locals 3

    .line 57
    iget-boolean v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_isClosed:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_vertexes:Ljava/util/List;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_isClosed:Z

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lcom/sromku/polygon/Polygon$Builder;->updateBoundingBox(Lcom/sromku/polygon/Point;)V

    .line 65
    iget-object v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_vertexes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_vertexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 70
    new-instance v0, Lcom/sromku/polygon/Line;

    iget-object v1, p0, Lcom/sromku/polygon/Polygon$Builder;->_vertexes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sromku/polygon/Point;

    invoke-direct {v0, v1, p1}, Lcom/sromku/polygon/Line;-><init>(Lcom/sromku/polygon/Point;Lcom/sromku/polygon/Point;)V

    .line 71
    iget-object p1, p0, Lcom/sromku/polygon/Polygon$Builder;->_sides:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public build()Lcom/sromku/polygon/Polygon;
    .locals 5

    .line 100
    invoke-direct {p0}, Lcom/sromku/polygon/Polygon$Builder;->validate()V

    .line 103
    iget-boolean v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_isClosed:Z

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_sides:Ljava/util/List;

    new-instance v1, Lcom/sromku/polygon/Line;

    iget-object v2, p0, Lcom/sromku/polygon/Polygon$Builder;->_vertexes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sromku/polygon/Point;

    iget-object v3, p0, Lcom/sromku/polygon/Polygon$Builder;->_vertexes:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sromku/polygon/Point;

    invoke-direct {v1, v2, v3}, Lcom/sromku/polygon/Line;-><init>(Lcom/sromku/polygon/Point;Lcom/sromku/polygon/Point;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    new-instance v0, Lcom/sromku/polygon/Polygon;

    iget-object v1, p0, Lcom/sromku/polygon/Polygon$Builder;->_sides:Ljava/util/List;

    iget-object v2, p0, Lcom/sromku/polygon/Polygon$Builder;->_boundingBox:Lcom/sromku/polygon/Polygon$BoundingBox;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sromku/polygon/Polygon;-><init>(Ljava/util/List;Lcom/sromku/polygon/Polygon$BoundingBox;Lcom/sromku/polygon/Polygon$1;)V

    return-object v0
.end method

.method public close()Lcom/sromku/polygon/Polygon$Builder;
    .locals 6

    .line 84
    invoke-direct {p0}, Lcom/sromku/polygon/Polygon$Builder;->validate()V

    .line 87
    iget-object v0, p0, Lcom/sromku/polygon/Polygon$Builder;->_sides:Ljava/util/List;

    new-instance v1, Lcom/sromku/polygon/Line;

    iget-object v2, p0, Lcom/sromku/polygon/Polygon$Builder;->_vertexes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sromku/polygon/Point;

    iget-object v3, p0, Lcom/sromku/polygon/Polygon$Builder;->_vertexes:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sromku/polygon/Point;

    invoke-direct {v1, v2, v3}, Lcom/sromku/polygon/Line;-><init>(Lcom/sromku/polygon/Point;Lcom/sromku/polygon/Point;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iput-boolean v4, p0, Lcom/sromku/polygon/Polygon$Builder;->_isClosed:Z

    return-object p0
.end method
