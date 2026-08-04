.class public Lcom/otaliastudios/opengl/draw/GlSquare;
.super Lcom/otaliastudios/opengl/draw/GlPolygon;
.source "GlSquare.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/draw/GlSquare;",
        "Lcom/otaliastudios/opengl/draw/GlPolygon;",
        "()V",
        "egloo-metadata_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x4

    .line 6
    invoke-direct {p0, v0}, Lcom/otaliastudios/opengl/draw/GlPolygon;-><init>(I)V

    const/high16 v0, 0x42340000    # 45.0f

    .line 10
    invoke-virtual {p0, v0}, Lcom/otaliastudios/opengl/draw/GlSquare;->setRotation(F)V

    const/high16 v0, 0x40000000    # 2.0f

    float-to-double v0, v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/opengl/draw/GlSquare;->setRadius(F)V

    return-void
.end method
