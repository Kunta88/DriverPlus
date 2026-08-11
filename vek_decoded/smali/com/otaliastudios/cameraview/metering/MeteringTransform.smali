.class public interface abstract Lcom/otaliastudios/cameraview/metering/MeteringTransform;
.super Ljava/lang/Object;
.source "MeteringTransform.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract transformMeteringPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method public abstract transformMeteringRegion(Landroid/graphics/RectF;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "I)TT;"
        }
    .end annotation
.end method
