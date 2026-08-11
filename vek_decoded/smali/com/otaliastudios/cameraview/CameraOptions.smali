.class public abstract Lcom/otaliastudios/cameraview/CameraOptions;
.super Ljava/lang/Object;
.source "CameraOptions.java"


# instance fields
.field protected autoFocusSupported:Z

.field protected exposureCorrectionMaxValue:F

.field protected exposureCorrectionMinValue:F

.field protected exposureCorrectionSupported:Z

.field protected previewFrameRateMaxValue:F

.field protected previewFrameRateMinValue:F

.field protected supportedFacing:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/otaliastudios/cameraview/controls/Facing;",
            ">;"
        }
    .end annotation
.end field

.field protected supportedFlash:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/otaliastudios/cameraview/controls/Flash;",
            ">;"
        }
    .end annotation
.end field

.field protected supportedFrameProcessingFormats:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected supportedHdr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/otaliastudios/cameraview/controls/Hdr;",
            ">;"
        }
    .end annotation
.end field

.field protected supportedPictureAspectRatio:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/otaliastudios/cameraview/size/AspectRatio;",
            ">;"
        }
    .end annotation
.end field

.field protected supportedPictureFormats:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/otaliastudios/cameraview/controls/PictureFormat;",
            ">;"
        }
    .end annotation
.end field

.field protected supportedPictureSizes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/otaliastudios/cameraview/size/Size;",
            ">;"
        }
    .end annotation
.end field

.field protected supportedVideoAspectRatio:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/otaliastudios/cameraview/size/AspectRatio;",
            ">;"
        }
    .end annotation
.end field

.field protected supportedVideoSizes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/otaliastudios/cameraview/size/Size;",
            ">;"
        }
    .end annotation
.end field

.field protected supportedWhiteBalance:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/otaliastudios/cameraview/controls/WhiteBalance;",
            ">;"
        }
    .end annotation
.end field

.field protected zoomSupported:Z


# direct methods
.method protected constructor <init>()V
    .locals 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->supportedWhiteBalance:Ljava/util/Set;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->supportedFacing:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->supportedFlash:Ljava/util/Set;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->supportedHdr:Ljava/util/Set;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    const/16 v4, 0xf

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->supportedPictureSizes:Ljava/util/Set;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->supportedVideoSizes:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->supportedPictureAspectRatio:Ljava/util/Set;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->supportedVideoAspectRatio:Ljava/util/Set;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->supportedPictureFormats:Ljava/util/Set;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->supportedFrameProcessingFormats:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getExposureCorrectionMaxValue()F
    .locals 1

    .line 293
    iget v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->exposureCorrectionMaxValue:F

    return v0
.end method

.method public final getExposureCorrectionMinValue()F
    .locals 1

    .line 282
    iget v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->exposureCorrectionMinValue:F

    return v0
.end method

.method public final getPreviewFrameRateMaxValue()F
    .locals 1

    .line 311
    iget v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->previewFrameRateMaxValue:F

    return v0
.end method

.method public final getPreviewFrameRateMinValue()F
    .locals 1

    .line 302
    iget v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->previewFrameRateMinValue:F

    return v0
.end method

.method public final getSupportedControls(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/otaliastudios/cameraview/controls/Control;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 95
    const-class v0, Lcom/otaliastudios/cameraview/controls/Audio;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/otaliastudios/cameraview/controls/Audio;->values()[Lcom/otaliastudios/cameraview/controls/Audio;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 97
    :cond_0
    const-class v0, Lcom/otaliastudios/cameraview/controls/Facing;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraOptions;->getSupportedFacing()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 99
    :cond_1
    const-class v0, Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraOptions;->getSupportedFlash()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 101
    :cond_2
    const-class v0, Lcom/otaliastudios/cameraview/controls/Grid;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    invoke-static {}, Lcom/otaliastudios/cameraview/controls/Grid;->values()[Lcom/otaliastudios/cameraview/controls/Grid;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 103
    :cond_3
    const-class v0, Lcom/otaliastudios/cameraview/controls/Hdr;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraOptions;->getSupportedHdr()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 105
    :cond_4
    const-class v0, Lcom/otaliastudios/cameraview/controls/Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    invoke-static {}, Lcom/otaliastudios/cameraview/controls/Mode;->values()[Lcom/otaliastudios/cameraview/controls/Mode;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 107
    :cond_5
    const-class v0, Lcom/otaliastudios/cameraview/controls/VideoCodec;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 108
    invoke-static {}, Lcom/otaliastudios/cameraview/controls/VideoCodec;->values()[Lcom/otaliastudios/cameraview/controls/VideoCodec;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 109
    :cond_6
    const-class v0, Lcom/otaliastudios/cameraview/controls/AudioCodec;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    invoke-static {}, Lcom/otaliastudios/cameraview/controls/AudioCodec;->values()[Lcom/otaliastudios/cameraview/controls/AudioCodec;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 111
    :cond_7
    const-class v0, Lcom/otaliastudios/cameraview/controls/WhiteBalance;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 112
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraOptions;->getSupportedWhiteBalance()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 113
    :cond_8
    const-class v0, Lcom/otaliastudios/cameraview/controls/Engine;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 114
    invoke-static {}, Lcom/otaliastudios/cameraview/controls/Engine;->values()[Lcom/otaliastudios/cameraview/controls/Engine;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 115
    :cond_9
    const-class v0, Lcom/otaliastudios/cameraview/controls/Preview;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 116
    invoke-static {}, Lcom/otaliastudios/cameraview/controls/Preview;->values()[Lcom/otaliastudios/cameraview/controls/Preview;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 117
    :cond_a
    const-class v0, Lcom/otaliastudios/cameraview/controls/PictureFormat;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 118
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraOptions;->getSupportedPictureFormats()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 121
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getSupportedFacing()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/otaliastudios/cameraview/controls/Facing;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->supportedFacing:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedFlash()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/otaliastudios/cameraview/controls/Flash;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->supportedFlash:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedFrameProcessingFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->supportedFrameProcessingFormats:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedHdr()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/otaliastudios/cameraview/controls/Hdr;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->supportedHdr:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedPictureAspectRatios()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/otaliastudios/cameraview/size/AspectRatio;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->supportedPictureAspectRatio:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedPictureFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/otaliastudios/cameraview/controls/PictureFormat;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->supportedPictureFormats:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedPictureSizes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/otaliastudios/cameraview/size/Size;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->supportedPictureSizes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedVideoAspectRatios()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/otaliastudios/cameraview/size/AspectRatio;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->supportedVideoAspectRatio:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedVideoSizes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/otaliastudios/cameraview/size/Size;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->supportedVideoSizes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedWhiteBalance()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/otaliastudios/cameraview/controls/WhiteBalance;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->supportedWhiteBalance:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final isAutoFocusSupported()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->autoFocusSupported:Z

    return v0
.end method

.method public final isExposureCorrectionSupported()Z
    .locals 1

    .line 272
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->exposureCorrectionSupported:Z

    return v0
.end method

.method public final isZoomSupported()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/otaliastudios/cameraview/CameraOptions;->zoomSupported:Z

    return v0
.end method

.method public final supports(Lcom/otaliastudios/cameraview/controls/Control;)Z
    .locals 1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/otaliastudios/cameraview/CameraOptions;->getSupportedControls(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final supports(Lcom/otaliastudios/cameraview/gesture/GestureAction;)Z
    .locals 1

    .line 75
    sget-object v0, Lcom/otaliastudios/cameraview/CameraOptions$1;->$SwitchMap$com$otaliastudios$cameraview$gesture$GestureAction:[I

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/gesture/GestureAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 86
    :pswitch_0
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraOptions;->isExposureCorrectionSupported()Z

    move-result p1

    return p1

    .line 84
    :pswitch_1
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraOptions;->isZoomSupported()Z

    move-result p1

    return p1

    :pswitch_2
    const/4 p1, 0x1

    return p1

    .line 77
    :pswitch_3
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/CameraOptions;->isAutoFocusSupported()Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
