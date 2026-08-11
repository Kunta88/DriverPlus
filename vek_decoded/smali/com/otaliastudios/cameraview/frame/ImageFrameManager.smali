.class public Lcom/otaliastudios/cameraview/frame/ImageFrameManager;
.super Lcom/otaliastudios/cameraview/frame/FrameManager;
.source "ImageFrameManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/otaliastudios/cameraview/frame/FrameManager<",
        "Landroid/media/Image;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 13
    const-class v0, Landroid/media/Image;

    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/cameraview/frame/FrameManager;-><init>(ILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onCloneFrameData(Landroid/media/Image;)Landroid/media/Image;
    .locals 1

    .line 26
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot freeze() an Image Frame. Please consider using the frame synchronously in your process() method, which also gives better performance."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected bridge synthetic onCloneFrameData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Landroid/media/Image;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/frame/ImageFrameManager;->onCloneFrameData(Landroid/media/Image;)Landroid/media/Image;

    move-result-object p1

    return-object p1
.end method

.method protected onFrameDataReleased(Landroid/media/Image;Z)V
    .locals 0

    .line 19
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected bridge synthetic onFrameDataReleased(Ljava/lang/Object;Z)V
    .locals 0

    .line 9
    check-cast p1, Landroid/media/Image;

    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/cameraview/frame/ImageFrameManager;->onFrameDataReleased(Landroid/media/Image;Z)V

    return-void
.end method
