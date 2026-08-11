.class Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultAutoFocusMarker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->onAutoFocusEnd(Lcom/otaliastudios/cameraview/markers/AutoFocusTrigger;ZLandroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker$1;->this$0:Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    .line 66
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 67
    iget-object p1, p0, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker$1;->this$0:Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;

    iget-object v0, p1, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->mContainer:Landroid/view/View;

    const v1, 0x3fae147b    # 1.36f

    const/4 v2, 0x0

    const-wide/16 v3, 0xc8

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->access$000(Landroid/view/View;FFJJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
