.class Lorg/osmdroid/views/MapController$ZoomAnimatorListener;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZoomAnimatorListener"
.end annotation


# instance fields
.field private mMapController:Lorg/osmdroid/views/MapController;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapController;)V
    .locals 0

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p1, p0, Lorg/osmdroid/views/MapController$ZoomAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 452
    iget-object p1, p0, Lorg/osmdroid/views/MapController$ZoomAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapController;->onAnimationEnd()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 447
    iget-object p1, p0, Lorg/osmdroid/views/MapController$ZoomAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapController;->onAnimationStart()V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 467
    iget-object v0, p0, Lorg/osmdroid/views/MapController$ZoomAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    iget-object v0, v0, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    .line 468
    iget-object p1, p0, Lorg/osmdroid/views/MapController$ZoomAnimatorListener;->mMapController:Lorg/osmdroid/views/MapController;

    iget-object p1, p1, Lorg/osmdroid/views/MapController;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method
