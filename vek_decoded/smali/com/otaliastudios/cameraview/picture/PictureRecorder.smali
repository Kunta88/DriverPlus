.class public abstract Lcom/otaliastudios/cameraview/picture/PictureRecorder;
.super Ljava/lang/Object;
.source "PictureRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/picture/PictureRecorder$PictureResultListener;
    }
.end annotation


# instance fields
.field protected mError:Ljava/lang/Exception;

.field mListener:Lcom/otaliastudios/cameraview/picture/PictureRecorder$PictureResultListener;

.field mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/cameraview/PictureResult$Stub;Lcom/otaliastudios/cameraview/picture/PictureRecorder$PictureResultListener;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    .line 50
    iput-object p2, p0, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->mListener:Lcom/otaliastudios/cameraview/picture/PictureRecorder$PictureResultListener;

    return-void
.end method


# virtual methods
.method protected dispatchOnShutter(Z)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->mListener:Lcom/otaliastudios/cameraview/picture/PictureRecorder$PictureResultListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/otaliastudios/cameraview/picture/PictureRecorder$PictureResultListener;->onPictureShutter(Z)V

    :cond_0
    return-void
.end method

.method protected dispatchResult()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->mListener:Lcom/otaliastudios/cameraview/picture/PictureRecorder$PictureResultListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    iget-object v2, p0, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->mError:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/otaliastudios/cameraview/picture/PictureRecorder$PictureResultListener;->onPictureResult(Lcom/otaliastudios/cameraview/PictureResult$Stub;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->mListener:Lcom/otaliastudios/cameraview/picture/PictureRecorder$PictureResultListener;

    .line 76
    iput-object v0, p0, Lcom/otaliastudios/cameraview/picture/PictureRecorder;->mResult:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    :cond_0
    return-void
.end method

.method public abstract take()V
.end method
