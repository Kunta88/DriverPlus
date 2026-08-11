.class public final Lcom/otaliastudios/opengl/geometry/IndexedPointF;
.super Landroid/graphics/PointF;
.source "IndexedPointF.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0018\u00002\u00060\u0001j\u0002`\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/geometry/IndexedPointF;",
        "Landroid/graphics/PointF;",
        "Lcom/otaliastudios/opengl/geometry/PointF;",
        "index",
        "",
        "x",
        "",
        "y",
        "(IFF)V",
        "getIndex",
        "()I",
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
.field private final index:I


# direct methods
.method public constructor <init>(IFF)V
    .locals 0

    .line 3
    invoke-direct {p0, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iput p1, p0, Lcom/otaliastudios/opengl/geometry/IndexedPointF;->index:I

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/IndexedPointF;->index:I

    return v0
.end method
