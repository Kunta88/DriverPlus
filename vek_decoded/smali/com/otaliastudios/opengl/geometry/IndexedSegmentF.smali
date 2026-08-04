.class public final Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;
.super Lcom/otaliastudios/opengl/geometry/SegmentF;
.source "IndexedSegmentF.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005B5\u0012\u0006\u0010\u0002\u001a\u00020\u0006\u0012\u0006\u0010\u0004\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0006J\u0010\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0001H\u0016R\u0011\u0010\u0002\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000e\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;",
        "Lcom/otaliastudios/opengl/geometry/SegmentF;",
        "i",
        "Lcom/otaliastudios/opengl/geometry/IndexedPointF;",
        "j",
        "(Lcom/otaliastudios/opengl/geometry/IndexedPointF;Lcom/otaliastudios/opengl/geometry/IndexedPointF;)V",
        "",
        "ix",
        "",
        "iy",
        "jx",
        "jy",
        "(IIFFFF)V",
        "getI",
        "()I",
        "getJ",
        "hasIndex",
        "",
        "index",
        "intersects",
        "other",
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
.field private final i:I

.field private final j:I


# direct methods
.method public constructor <init>(IIFFFF)V
    .locals 0

    .line 4
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/otaliastudios/opengl/geometry/SegmentF;-><init>(FFFF)V

    iput p1, p0, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->i:I

    iput p2, p0, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->j:I

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/opengl/geometry/IndexedPointF;Lcom/otaliastudios/opengl/geometry/IndexedPointF;)V
    .locals 8

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "j"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/otaliastudios/opengl/geometry/IndexedPointF;->getIndex()I

    move-result v2

    invoke-virtual {p2}, Lcom/otaliastudios/opengl/geometry/IndexedPointF;->getIndex()I

    move-result v3

    iget v4, p1, Lcom/otaliastudios/opengl/geometry/IndexedPointF;->x:F

    iget v5, p1, Lcom/otaliastudios/opengl/geometry/IndexedPointF;->y:F

    iget v6, p2, Lcom/otaliastudios/opengl/geometry/IndexedPointF;->x:F

    iget v7, p2, Lcom/otaliastudios/opengl/geometry/IndexedPointF;->y:F

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;-><init>(IIFFFF)V

    return-void
.end method


# virtual methods
.method public final getI()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->i:I

    return v0
.end method

.method public final getJ()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->j:I

    return v0
.end method

.method public final hasIndex(I)Z
    .locals 1

    .line 18
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->i:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->j:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public intersects(Lcom/otaliastudios/opengl/geometry/SegmentF;)Z
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    instance-of v0, p1, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;

    if-eqz v0, :cond_2

    .line 11
    move-object v0, p1

    check-cast v0, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;

    iget v1, p0, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->i:I

    invoke-virtual {v0, v1}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->hasIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->j:I

    invoke-virtual {v0, v1}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->hasIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 12
    :cond_0
    iget v1, p0, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->i:I

    invoke-virtual {v0, v1}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->hasIndex(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->j:I

    invoke-virtual {v0, v1}, Lcom/otaliastudios/opengl/geometry/IndexedSegmentF;->hasIndex(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 14
    :cond_2
    invoke-super {p0, p1}, Lcom/otaliastudios/opengl/geometry/SegmentF;->intersects(Lcom/otaliastudios/opengl/geometry/SegmentF;)Z

    move-result p1

    return p1
.end method
