.class Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller$3;
.super Ljava/lang/Object;
.source "MediaEncoderEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->notifyStopped(I)V
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

    .line 408
    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller$3;->this$1:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller$3;->this$1:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine$Controller;->this$0:Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;->access$1100(Lcom/otaliastudios/cameraview/video/encoding/MediaEncoderEngine;)V

    return-void
.end method
