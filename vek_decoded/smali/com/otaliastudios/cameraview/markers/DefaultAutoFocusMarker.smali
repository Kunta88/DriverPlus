.class public Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;
.super Ljava/lang/Object;
.source "DefaultAutoFocusMarker.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/markers/AutoFocusMarker;


# instance fields
.field mContainer:Landroid/view/View;

.field mFill:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;FFJJLandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 22
    invoke-static/range {p0 .. p7}, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->animate(Landroid/view/View;FFJJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private static animate(Landroid/view/View;FFJJLandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 77
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 78
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 79
    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 80
    invoke-virtual {p0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 81
    invoke-virtual {p0, p5, p6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 82
    invoke-virtual {p0, p7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/otaliastudios/cameraview/R$layout;->cameraview_layout_focus_marker:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 32
    sget p2, Lcom/otaliastudios/cameraview/R$id;->focusMarkerContainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->mContainer:Landroid/view/View;

    .line 33
    sget p2, Lcom/otaliastudios/cameraview/R$id;->focusMarkerFill:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->mFill:Landroid/view/View;

    return-object p1
.end method

.method public onAutoFocusEnd(Lcom/otaliastudios/cameraview/markers/AutoFocusTrigger;ZLandroid/graphics/PointF;)V
    .locals 17

    move-object/from16 v0, p0

    .line 56
    sget-object v1, Lcom/otaliastudios/cameraview/markers/AutoFocusTrigger;->METHOD:Lcom/otaliastudios/cameraview/markers/AutoFocusTrigger;

    move-object/from16 v2, p1

    if-ne v2, v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 58
    iget-object v1, v0, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->mContainer:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v4, 0x1f4

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->animate(Landroid/view/View;FFJJLandroid/animation/Animator$AnimatorListener;)V

    .line 59
    iget-object v9, v0, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->mFill:Landroid/view/View;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const-wide/16 v12, 0x1f4

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->animate(Landroid/view/View;FFJJLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v1, v0, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->mFill:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x1f4

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->animate(Landroid/view/View;FFJJLandroid/animation/Animator$AnimatorListener;)V

    .line 62
    iget-object v9, v0, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->mContainer:Landroid/view/View;

    const v10, 0x3fae147b    # 1.36f

    const/high16 v11, 0x3f800000    # 1.0f

    const-wide/16 v12, 0x1f4

    const-wide/16 v14, 0x0

    new-instance v1, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker$1;

    invoke-direct {v1, v0}, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker$1;-><init>(Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;)V

    move-object/from16 v16, v1

    invoke-static/range {v9 .. v16}, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->animate(Landroid/view/View;FFJJLandroid/animation/Animator$AnimatorListener;)V

    :goto_0
    return-void
.end method

.method public onAutoFocusStart(Lcom/otaliastudios/cameraview/markers/AutoFocusTrigger;Landroid/graphics/PointF;)V
    .locals 19

    move-object/from16 v0, p0

    .line 39
    sget-object v1, Lcom/otaliastudios/cameraview/markers/AutoFocusTrigger;->METHOD:Lcom/otaliastudios/cameraview/markers/AutoFocusTrigger;

    move-object/from16 v2, p1

    if-ne v2, v1, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v1, v0, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 41
    iget-object v1, v0, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->mFill:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 42
    iget-object v1, v0, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->mContainer:Landroid/view/View;

    const v2, 0x3fae147b    # 1.36f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 43
    iget-object v1, v0, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->mContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 44
    iget-object v1, v0, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->mContainer:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 45
    iget-object v1, v0, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->mFill:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 46
    iget-object v1, v0, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->mFill:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 47
    iget-object v1, v0, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->mFill:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 48
    iget-object v3, v0, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->mContainer:Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->animate(Landroid/view/View;FFJJLandroid/animation/Animator$AnimatorListener;)V

    .line 49
    iget-object v11, v0, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->mFill:Landroid/view/View;

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const-wide/16 v14, 0x12c

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    invoke-static/range {v11 .. v18}, Lcom/otaliastudios/cameraview/markers/DefaultAutoFocusMarker;->animate(Landroid/view/View;FFJJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
