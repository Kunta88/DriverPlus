.class public abstract Lcom/otaliastudios/opengl/draw/Gl3dDrawable;
.super Lcom/otaliastudios/opengl/draw/GlDrawable;
.source "Gl3dDrawable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/draw/Gl3dDrawable;",
        "Lcom/otaliastudios/opengl/draw/GlDrawable;",
        "()V",
        "coordsPerVertex",
        "",
        "getCoordsPerVertex",
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
.field private final coordsPerVertex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/otaliastudios/opengl/draw/GlDrawable;-><init>()V

    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/otaliastudios/opengl/draw/Gl3dDrawable;->coordsPerVertex:I

    return-void
.end method


# virtual methods
.method public final getCoordsPerVertex()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/otaliastudios/opengl/draw/Gl3dDrawable;->coordsPerVertex:I

    return v0
.end method
