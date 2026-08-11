.class public Lcom/otaliastudios/cameraview/size/SizeSelectorParser;
.super Ljava/lang/Object;
.source "SizeSelectorParser.java"


# instance fields
.field private pictureSizeSelector:Lcom/otaliastudios/cameraview/size/SizeSelector;

.field private videoSizeSelector:Lcom/otaliastudios/cameraview/size/SizeSelector;


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    sget v2, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPictureSizeMinWidth:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 23
    sget v2, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPictureSizeMinWidth:I

    .line 24
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 23
    invoke-static {v2}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->minWidth(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_0
    sget v2, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPictureSizeMaxWidth:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    sget v2, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPictureSizeMaxWidth:I

    .line 29
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 28
    invoke-static {v2}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->maxWidth(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_1
    sget v2, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPictureSizeMinHeight:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    sget v2, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPictureSizeMinHeight:I

    .line 34
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 33
    invoke-static {v2}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->minHeight(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_2
    sget v2, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPictureSizeMaxHeight:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 38
    sget v2, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPictureSizeMaxHeight:I

    .line 39
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 38
    invoke-static {v2}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->maxHeight(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_3
    sget v2, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPictureSizeMinArea:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 43
    sget v2, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPictureSizeMinArea:I

    .line 44
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 43
    invoke-static {v2}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->minArea(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_4
    sget v2, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPictureSizeMaxArea:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 48
    sget v2, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPictureSizeMaxArea:I

    .line 49
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 48
    invoke-static {v2}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->maxArea(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_5
    sget v2, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPictureSizeAspectRatio:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 54
    sget v2, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPictureSizeAspectRatio:I

    .line 55
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/otaliastudios/cameraview/size/AspectRatio;->parse(Ljava/lang/String;)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v2

    .line 54
    invoke-static {v2, v4}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->aspectRatio(Lcom/otaliastudios/cameraview/size/AspectRatio;F)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_6
    sget v2, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPictureSizeSmallest:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 60
    invoke-static {}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->smallest()Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_7
    sget v2, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraPictureSizeBiggest:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 63
    invoke-static {}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->biggest()Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    new-array v2, v3, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    .line 66
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->and([Lcom/otaliastudios/cameraview/size/SizeSelector;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_9
    invoke-static {}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->biggest()Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/otaliastudios/cameraview/size/SizeSelectorParser;->pictureSizeSelector:Lcom/otaliastudios/cameraview/size/SizeSelector;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    sget v1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraVideoSizeMinWidth:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 72
    sget v1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraVideoSizeMinWidth:I

    .line 73
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 72
    invoke-static {v1}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->minWidth(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_a
    sget v1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraVideoSizeMaxWidth:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 77
    sget v1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraVideoSizeMaxWidth:I

    .line 78
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 77
    invoke-static {v1}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->maxWidth(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_b
    sget v1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraVideoSizeMinHeight:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 82
    sget v1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraVideoSizeMinHeight:I

    .line 83
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 82
    invoke-static {v1}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->minHeight(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_c
    sget v1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraVideoSizeMaxHeight:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 87
    sget v1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraVideoSizeMaxHeight:I

    .line 88
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 87
    invoke-static {v1}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->maxHeight(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_d
    sget v1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraVideoSizeMinArea:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 92
    sget v1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraVideoSizeMinArea:I

    .line 93
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 92
    invoke-static {v1}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->minArea(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_e
    sget v1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraVideoSizeMaxArea:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 97
    sget v1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraVideoSizeMaxArea:I

    .line 98
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 97
    invoke-static {v1}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->maxArea(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_f
    sget v1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraVideoSizeAspectRatio:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 103
    sget v1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraVideoSizeAspectRatio:I

    .line 104
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->parse(Ljava/lang/String;)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v1

    .line 103
    invoke-static {v1, v4}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->aspectRatio(Lcom/otaliastudios/cameraview/size/AspectRatio;F)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_10
    sget v1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraVideoSizeSmallest:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 108
    invoke-static {}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->smallest()Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_11
    sget v1, Lcom/otaliastudios/cameraview/R$styleable;->CameraView_cameraVideoSizeBiggest:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 111
    invoke-static {}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->biggest()Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_13

    new-array p1, v3, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    .line 114
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->and([Lcom/otaliastudios/cameraview/size/SizeSelector;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object p1

    goto :goto_1

    .line 115
    :cond_13
    invoke-static {}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->biggest()Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/otaliastudios/cameraview/size/SizeSelectorParser;->videoSizeSelector:Lcom/otaliastudios/cameraview/size/SizeSelector;

    return-void
.end method


# virtual methods
.method public getPictureSizeSelector()Lcom/otaliastudios/cameraview/size/SizeSelector;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/otaliastudios/cameraview/size/SizeSelectorParser;->pictureSizeSelector:Lcom/otaliastudios/cameraview/size/SizeSelector;

    return-object v0
.end method

.method public getVideoSizeSelector()Lcom/otaliastudios/cameraview/size/SizeSelector;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/otaliastudios/cameraview/size/SizeSelectorParser;->videoSizeSelector:Lcom/otaliastudios/cameraview/size/SizeSelector;

    return-object v0
.end method
