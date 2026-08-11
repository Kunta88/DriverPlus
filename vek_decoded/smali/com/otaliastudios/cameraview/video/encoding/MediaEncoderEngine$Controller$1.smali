.class Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller$1;
.super Ljava/lang/Object;
.source "MediaEncoderEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->notifyStarted(Landroid/media/MediaFormat;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller$1;->this$1:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller$1;->this$1:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$200(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)Landroid/media/MediaMuxer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 300
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller$1;->this$1:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$102(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;Z)Z

    .line 301
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller$1;->this$1:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$600(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller$1;->this$1:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$600(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Listener;->onEncodingStart()V

    :cond_0
    return-void
.end method
