.class Lcom/sromku/polygon/Polygon$BoundingBox;
.super Ljava/lang/Object;
.source "Polygon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sromku/polygon/Polygon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BoundingBox"
.end annotation


# instance fields
.field public xMax:F

.field public xMin:F

.field public yMax:F

.field public yMin:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 289
    iput v0, p0, Lcom/sromku/polygon/Polygon$BoundingBox;->xMax:F

    .line 290
    iput v0, p0, Lcom/sromku/polygon/Polygon$BoundingBox;->xMin:F

    .line 291
    iput v0, p0, Lcom/sromku/polygon/Polygon$BoundingBox;->yMax:F

    .line 292
    iput v0, p0, Lcom/sromku/polygon/Polygon$BoundingBox;->yMin:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/sromku/polygon/Polygon$1;)V
    .locals 0

    .line 287
    invoke-direct {p0}, Lcom/sromku/polygon/Polygon$BoundingBox;-><init>()V

    return-void
.end method
