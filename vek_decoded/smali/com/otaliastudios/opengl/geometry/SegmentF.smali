.class public Lcom/otaliastudios/opengl/geometry/SegmentF;
.super Ljava/lang/Object;
.source "SegmentF.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u001f\u0008\u0016\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0002\u0010\u0006B%\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0000H\u0016J\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u0008R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0011\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u001b\u0010\u0012\u001a\u00020\u00088FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0013\u0010\u000e\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/geometry/SegmentF;",
        "",
        "i",
        "Landroid/graphics/PointF;",
        "Lcom/otaliastudios/opengl/geometry/PointF;",
        "j",
        "(Landroid/graphics/PointF;Landroid/graphics/PointF;)V",
        "ix",
        "",
        "iy",
        "jx",
        "jy",
        "(FFFF)V",
        "getIx",
        "()F",
        "getIy",
        "getJx",
        "getJy",
        "length",
        "getLength",
        "length$delegate",
        "Lkotlin/Lazy;",
        "intersects",
        "",
        "other",
        "orientation",
        "",
        "x",
        "y",
        "egloo-metadata_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final ix:F

.field private final iy:F

.field private final jx:F

.field private final jy:F

.field private final length$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    iput p2, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    iput p3, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    iput p4, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    .line 10
    new-instance p1, Lcom/otaliastudios/opengl/geometry/SegmentF$length$2;

    invoke-direct {p1, p0}, Lcom/otaliastudios/opengl/geometry/SegmentF$length$2;-><init>(Lcom/otaliastudios/opengl/geometry/SegmentF;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->length$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "j"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/otaliastudios/opengl/geometry/SegmentF;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public final getIx()F
    .locals 1

    .line 5
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    return v0
.end method

.method public final getIy()F
    .locals 1

    .line 5
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    return v0
.end method

.method public final getJx()F
    .locals 1

    .line 5
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    return v0
.end method

.method public final getJy()F
    .locals 1

    .line 5
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    return v0
.end method

.method public final getLength()F
    .locals 1

    iget-object v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->length$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public intersects(Lcom/otaliastudios/opengl/geometry/SegmentF;)Z
    .locals 14

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    iget v1, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 22
    iget v1, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    iget v2, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 23
    iget v2, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    iget v3, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 24
    iget v3, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    iget v4, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v5, v0, v3

    if-lez v5, :cond_0

    return v4

    :cond_0
    cmpg-float v5, v1, v2

    if-gez v5, :cond_1

    return v4

    .line 27
    :cond_1
    iget v5, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    iget v6, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 28
    iget v6, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    iget v7, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 29
    iget v7, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    iget v8, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 30
    iget v8, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    iget v9, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    cmpl-float v9, v5, v8

    if-lez v9, :cond_2

    return v4

    :cond_2
    cmpg-float v9, v6, v7

    if-gez v9, :cond_3

    return v4

    .line 36
    :cond_3
    iget v9, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    iget v10, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    invoke-virtual {p0, v9, v10}, Lcom/otaliastudios/opengl/geometry/SegmentF;->orientation(FF)I

    move-result v9

    .line 37
    iget v10, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    iget v11, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    invoke-virtual {p0, v10, v11}, Lcom/otaliastudios/opengl/geometry/SegmentF;->orientation(FF)I

    move-result v10

    if-lez v9, :cond_4

    if-lez v10, :cond_4

    return v4

    :cond_4
    if-gez v9, :cond_5

    if-gez v10, :cond_5

    return v4

    .line 41
    :cond_5
    iget v11, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    iget v12, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    invoke-virtual {p1, v11, v12}, Lcom/otaliastudios/opengl/geometry/SegmentF;->orientation(FF)I

    move-result v11

    .line 42
    iget v12, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    iget v13, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    invoke-virtual {p1, v12, v13}, Lcom/otaliastudios/opengl/geometry/SegmentF;->orientation(FF)I

    move-result v12

    if-lez v11, :cond_6

    if-lez v12, :cond_6

    return v4

    :cond_6
    if-gez v11, :cond_7

    if-gez v12, :cond_7

    return v4

    :cond_7
    const/4 v13, 0x1

    if-nez v9, :cond_c

    if-nez v10, :cond_c

    if-nez v11, :cond_c

    if-nez v12, :cond_c

    cmpg-float p1, v0, v3

    if-nez p1, :cond_8

    cmpg-float p1, v5, v8

    if-nez p1, :cond_8

    return v4

    :cond_8
    cmpg-float p1, v0, v3

    if-nez p1, :cond_9

    cmpg-float p1, v6, v7

    if-nez p1, :cond_9

    return v4

    :cond_9
    cmpg-float p1, v1, v2

    if-nez p1, :cond_a

    cmpg-float p1, v5, v8

    if-nez p1, :cond_a

    return v4

    :cond_a
    cmpg-float p1, v1, v2

    if-nez p1, :cond_b

    cmpg-float p1, v6, v7

    if-nez p1, :cond_b

    return v4

    :cond_b
    return v13

    .line 60
    :cond_c
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    iget v1, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    cmpg-float v2, v0, v1

    if-nez v2, :cond_d

    iget v2, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    iget v3, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_d

    return v4

    .line 61
    :cond_d
    iget v2, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    iget v3, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    cmpg-float v5, v2, v3

    if-nez v5, :cond_e

    iget v5, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    iget v6, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    cmpg-float v5, v5, v6

    if-nez v5, :cond_e

    return v4

    :cond_e
    cmpg-float v0, v0, v3

    if-nez v0, :cond_f

    .line 62
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    iget v3, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    cmpg-float v0, v0, v3

    if-nez v0, :cond_f

    return v4

    :cond_f
    cmpg-float v0, v2, v1

    if-nez v0, :cond_10

    .line 63
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    iget p1, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    cmpg-float p1, v0, p1

    if-nez p1, :cond_10

    return v4

    :cond_10
    return v13
.end method

.method public final orientation(FF)I
    .locals 3

    .line 74
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    iget v1, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    sub-float/2addr p2, v2

    mul-float v1, v1, p2

    iget p2, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    sub-float/2addr v2, p2

    sub-float/2addr p1, v0

    mul-float v2, v2, p1

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method
