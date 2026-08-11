.class public Lcom/sromku/test/Tests;
.super Ljava/lang/Object;
.source "Tests.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isInside(Lcom/sromku/polygon/Polygon;Lcom/sromku/polygon/Point;)V
    .locals 3

    .line 75
    invoke-virtual {p0, p1}, Lcom/sromku/polygon/Polygon;->contains(Lcom/sromku/polygon/Point;)Z

    move-result p0

    .line 76
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The point:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sromku/polygon/Point;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "not "

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "inside the polygon"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-static {}, Lcom/sromku/test/Tests;->testSimplePolygon()V

    .line 12
    invoke-static {}, Lcom/sromku/test/Tests;->testPolygonWithHoles()V

    return-void
.end method

.method public static testPolygonWithHoles()V
    .locals 7

    .line 42
    invoke-static {}, Lcom/sromku/polygon/Polygon;->Builder()Lcom/sromku/polygon/Polygon$Builder;

    move-result-object v0

    new-instance v1, Lcom/sromku/polygon/Point;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v1, v2, v3}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/sromku/polygon/Polygon$Builder;->addVertex(Lcom/sromku/polygon/Point;)Lcom/sromku/polygon/Polygon$Builder;

    move-result-object v0

    new-instance v1, Lcom/sromku/polygon/Point;

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-direct {v1, v2, v4}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/sromku/polygon/Polygon$Builder;->addVertex(Lcom/sromku/polygon/Point;)Lcom/sromku/polygon/Polygon$Builder;

    move-result-object v0

    new-instance v1, Lcom/sromku/polygon/Point;

    const/high16 v5, 0x41000000    # 8.0f

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-direct {v1, v5, v6}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/sromku/polygon/Polygon$Builder;->addVertex(Lcom/sromku/polygon/Point;)Lcom/sromku/polygon/Polygon$Builder;

    move-result-object v0

    new-instance v1, Lcom/sromku/polygon/Point;

    invoke-direct {v1, v5, v2}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/sromku/polygon/Polygon$Builder;->addVertex(Lcom/sromku/polygon/Point;)Lcom/sromku/polygon/Polygon$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sromku/polygon/Polygon$Builder;->close()Lcom/sromku/polygon/Polygon$Builder;

    move-result-object v0

    new-instance v1, Lcom/sromku/polygon/Point;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v3, v2}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/sromku/polygon/Polygon$Builder;->addVertex(Lcom/sromku/polygon/Point;)Lcom/sromku/polygon/Polygon$Builder;

    move-result-object v0

    new-instance v1, Lcom/sromku/polygon/Point;

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-direct {v1, v5, v5}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/sromku/polygon/Polygon$Builder;->addVertex(Lcom/sromku/polygon/Point;)Lcom/sromku/polygon/Polygon$Builder;

    move-result-object v0

    new-instance v1, Lcom/sromku/polygon/Point;

    invoke-direct {v1, v4, v3}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/sromku/polygon/Polygon$Builder;->addVertex(Lcom/sromku/polygon/Point;)Lcom/sromku/polygon/Polygon$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sromku/polygon/Polygon$Builder;->close()Lcom/sromku/polygon/Polygon$Builder;

    move-result-object v0

    new-instance v1, Lcom/sromku/polygon/Point;

    invoke-direct {v1, v4, v4}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/sromku/polygon/Polygon$Builder;->addVertex(Lcom/sromku/polygon/Point;)Lcom/sromku/polygon/Polygon$Builder;

    move-result-object v0

    new-instance v1, Lcom/sromku/polygon/Point;

    invoke-direct {v1, v6, v4}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/sromku/polygon/Polygon$Builder;->addVertex(Lcom/sromku/polygon/Point;)Lcom/sromku/polygon/Polygon$Builder;

    move-result-object v0

    new-instance v1, Lcom/sromku/polygon/Point;

    invoke-direct {v1, v6, v5}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/sromku/polygon/Polygon$Builder;->addVertex(Lcom/sromku/polygon/Point;)Lcom/sromku/polygon/Polygon$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sromku/polygon/Polygon$Builder;->build()Lcom/sromku/polygon/Polygon;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/sromku/polygon/Point;

    invoke-direct {v1, v4, v5}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-static {v0, v1}, Lcom/sromku/test/Tests;->isInside(Lcom/sromku/polygon/Polygon;Lcom/sromku/polygon/Point;)V

    .line 61
    new-instance v1, Lcom/sromku/polygon/Point;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {v1, v3, v2}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-static {v0, v1}, Lcom/sromku/test/Tests;->isInside(Lcom/sromku/polygon/Polygon;Lcom/sromku/polygon/Point;)V

    .line 64
    new-instance v1, Lcom/sromku/polygon/Point;

    const/high16 v2, 0x40d00000    # 6.5f

    const v3, 0x40b9999a    # 5.8f

    invoke-direct {v1, v2, v3}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-static {v0, v1}, Lcom/sromku/test/Tests;->isInside(Lcom/sromku/polygon/Polygon;Lcom/sromku/polygon/Point;)V

    return-void
.end method

.method public static testSimplePolygon()V
    .locals 6

    .line 20
    invoke-static {}, Lcom/sromku/polygon/Polygon;->Builder()Lcom/sromku/polygon/Polygon$Builder;

    move-result-object v0

    new-instance v1, Lcom/sromku/polygon/Point;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {v1, v2, v3}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/sromku/polygon/Polygon$Builder;->addVertex(Lcom/sromku/polygon/Point;)Lcom/sromku/polygon/Polygon$Builder;

    move-result-object v0

    new-instance v1, Lcom/sromku/polygon/Point;

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {v1, v4, v5}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/sromku/polygon/Polygon$Builder;->addVertex(Lcom/sromku/polygon/Point;)Lcom/sromku/polygon/Polygon$Builder;

    move-result-object v0

    new-instance v1, Lcom/sromku/polygon/Point;

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v5, 0x40800000    # 4.0f

    invoke-direct {v1, v4, v5}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/sromku/polygon/Polygon$Builder;->addVertex(Lcom/sromku/polygon/Point;)Lcom/sromku/polygon/Polygon$Builder;

    move-result-object v0

    new-instance v1, Lcom/sromku/polygon/Point;

    const/high16 v5, 0x41100000    # 9.0f

    invoke-direct {v1, v4, v5}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/sromku/polygon/Polygon$Builder;->addVertex(Lcom/sromku/polygon/Point;)Lcom/sromku/polygon/Polygon$Builder;

    move-result-object v0

    new-instance v1, Lcom/sromku/polygon/Point;

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-direct {v1, v5, v4}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/sromku/polygon/Polygon$Builder;->addVertex(Lcom/sromku/polygon/Point;)Lcom/sromku/polygon/Polygon$Builder;

    move-result-object v0

    new-instance v1, Lcom/sromku/polygon/Point;

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-direct {v1, v4, v2}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/sromku/polygon/Polygon$Builder;->addVertex(Lcom/sromku/polygon/Point;)Lcom/sromku/polygon/Polygon$Builder;

    move-result-object v0

    new-instance v1, Lcom/sromku/polygon/Point;

    invoke-direct {v1, v3, v2}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/sromku/polygon/Polygon$Builder;->addVertex(Lcom/sromku/polygon/Point;)Lcom/sromku/polygon/Polygon$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sromku/polygon/Polygon$Builder;->build()Lcom/sromku/polygon/Polygon;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/sromku/polygon/Point;

    const/high16 v2, 0x40b00000    # 5.5f

    invoke-direct {v1, v2, v5}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-static {v0, v1}, Lcom/sromku/test/Tests;->isInside(Lcom/sromku/polygon/Polygon;Lcom/sromku/polygon/Point;)V

    .line 34
    new-instance v1, Lcom/sromku/polygon/Point;

    const/high16 v2, 0x40900000    # 4.5f

    invoke-direct {v1, v2, v5}, Lcom/sromku/polygon/Point;-><init>(FF)V

    invoke-static {v0, v1}, Lcom/sromku/test/Tests;->isInside(Lcom/sromku/polygon/Polygon;Lcom/sromku/polygon/Point;)V

    return-void
.end method
