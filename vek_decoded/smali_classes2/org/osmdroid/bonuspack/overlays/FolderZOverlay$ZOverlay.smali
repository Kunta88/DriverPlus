.class public Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;
.super Ljava/lang/Object;
.source "FolderZOverlay.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ZOverlay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;",
        ">;"
    }
.end annotation


# instance fields
.field mBoundingBox:Lorg/osmdroid/util/BoundingBox;

.field mBoundingBoxSet:Z

.field mOverlay:Lorg/osmdroid/views/overlay/Overlay;

.field mZIndex:F

.field final synthetic this$0:Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;


# direct methods
.method public constructor <init>(Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;Lorg/osmdroid/views/overlay/Overlay;F)V
    .locals 0

    .line 40
    iput-object p1, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;->this$0:Lorg/osmdroid/bonuspack/overlays/FolderZOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;->mOverlay:Lorg/osmdroid/views/overlay/Overlay;

    .line 42
    iput p3, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;->mZIndex:F

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;->mBoundingBoxSet:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;

    check-cast p2, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;->compare(Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;)I
    .locals 0

    .line 47
    iget p1, p1, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;->mZIndex:F

    iget p2, p2, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;->mZIndex:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public setBoundingBox(Lorg/osmdroid/util/BoundingBox;)V
    .locals 0

    .line 51
    invoke-static {p1}, Lorg/osmdroid/bonuspack/utils/BonusPackHelper;->cloneBoundingBox(Lorg/osmdroid/util/BoundingBox;)Lorg/osmdroid/util/BoundingBox;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;->mBoundingBoxSet:Z

    return-void
.end method

.method public shouldBeDrawn(Lorg/osmdroid/util/BoundingBox;F)Z
    .locals 7

    .line 66
    iget-boolean v0, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;->mBoundingBoxSet:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x0

    cmpl-float p2, p2, v3

    if-eqz p2, :cond_2

    return v1

    .line 74
    :cond_2
    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v5

    cmpl-double p2, v3, v5

    if-gtz p2, :cond_4

    iget-object p2, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    .line 75
    invoke-virtual {p2}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v5

    cmpg-double p2, v3, v5

    if-ltz p2, :cond_4

    iget-object p2, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    .line 76
    invoke-virtual {p2}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v5

    cmpl-double p2, v3, v5

    if-gtz p2, :cond_4

    iget-object p2, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    .line 77
    invoke-virtual {p2}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide p1

    cmpg-double v0, v3, p1

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method public unsetBoundingBox()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lorg/osmdroid/bonuspack/overlays/FolderZOverlay$ZOverlay;->mBoundingBoxSet:Z

    return-void
.end method
