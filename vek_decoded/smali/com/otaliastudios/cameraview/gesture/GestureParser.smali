.class public Lcom/otaliastudios/cameraview/gesture/GestureParser;
.super Ljava/lang/Object;
.source "GestureParser.java"


# instance fields
.field private horizontalScrollAction:I

.field private longTapAction:I

.field private pinchAction:I

.field private tapAction:I

.field private verticalScrollAction:I


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget v0, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraGestureTap:I

    sget-object v1, Lcom/otaliastudios/cameraview/gesture/GestureAction;->DEFAULT_TAP:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    .line 22
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/gesture/GestureAction;->value()I

    move-result v1

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/otaliastudios/cameraview/gesture/GestureParser;->tapAction:I

    .line 23
    sget v0, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraGestureLongTap:I

    sget-object v1, Lcom/otaliastudios/cameraview/gesture/GestureAction;->DEFAULT_LONG_TAP:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    .line 24
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/gesture/GestureAction;->value()I

    move-result v1

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/otaliastudios/cameraview/gesture/GestureParser;->longTapAction:I

    .line 25
    sget v0, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraGesturePinch:I

    sget-object v1, Lcom/otaliastudios/cameraview/gesture/GestureAction;->DEFAULT_PINCH:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    .line 26
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/gesture/GestureAction;->value()I

    move-result v1

    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/otaliastudios/cameraview/gesture/GestureParser;->pinchAction:I

    .line 27
    sget v0, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraGestureScrollHorizontal:I

    sget-object v1, Lcom/otaliastudios/cameraview/gesture/GestureAction;->DEFAULT_SCROLL_HORIZONTAL:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    .line 29
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/gesture/GestureAction;->value()I

    move-result v1

    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/otaliastudios/cameraview/gesture/GestureParser;->horizontalScrollAction:I

    .line 30
    sget v0, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraGestureScrollVertical:I

    sget-object v1, Lcom/otaliastudios/cameraview/gesture/GestureAction;->DEFAULT_SCROLL_VERTICAL:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    .line 31
    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/gesture/GestureAction;->value()I

    move-result v1

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/gesture/GestureParser;->verticalScrollAction:I

    return-void
.end method

.method private get(I)Lcom/otaliastudios/cameraview/gesture/GestureAction;
    .locals 0

    .line 35
    invoke-static {p1}, Lcom/otaliastudios/cameraview/gesture/GestureAction;->fromValue(I)Lcom/otaliastudios/cameraview/gesture/GestureAction;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getHorizontalScrollAction()Lcom/otaliastudios/cameraview/gesture/GestureAction;
    .locals 1

    .line 51
    iget v0, p0, Lcom/otaliastudios/cameraview/gesture/GestureParser;->horizontalScrollAction:I

    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/gesture/GestureParser;->get(I)Lcom/otaliastudios/cameraview/gesture/GestureAction;

    move-result-object v0

    return-object v0
.end method

.method public getLongTapAction()Lcom/otaliastudios/cameraview/gesture/GestureAction;
    .locals 1

    .line 43
    iget v0, p0, Lcom/otaliastudios/cameraview/gesture/GestureParser;->longTapAction:I

    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/gesture/GestureParser;->get(I)Lcom/otaliastudios/cameraview/gesture/GestureAction;

    move-result-object v0

    return-object v0
.end method

.method public getPinchAction()Lcom/otaliastudios/cameraview/gesture/GestureAction;
    .locals 1

    .line 47
    iget v0, p0, Lcom/otaliastudios/cameraview/gesture/GestureParser;->pinchAction:I

    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/gesture/GestureParser;->get(I)Lcom/otaliastudios/cameraview/gesture/GestureAction;

    move-result-object v0

    return-object v0
.end method

.method public getTapAction()Lcom/otaliastudios/cameraview/gesture/GestureAction;
    .locals 1

    .line 39
    iget v0, p0, Lcom/otaliastudios/cameraview/gesture/GestureParser;->tapAction:I

    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/gesture/GestureParser;->get(I)Lcom/otaliastudios/cameraview/gesture/GestureAction;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalScrollAction()Lcom/otaliastudios/cameraview/gesture/GestureAction;
    .locals 1

    .line 55
    iget v0, p0, Lcom/otaliastudios/cameraview/gesture/GestureParser;->verticalScrollAction:I

    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/gesture/GestureParser;->get(I)Lcom/otaliastudios/cameraview/gesture/GestureAction;

    move-result-object v0

    return-object v0
.end method
