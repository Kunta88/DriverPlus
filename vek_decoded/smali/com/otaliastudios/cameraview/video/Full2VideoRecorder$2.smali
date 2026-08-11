.class Lcom/otaliastudios/cameraview/video/Full2VideoRecorder$2;
.super Lcom/otaliastudios/cameraview/engine/action/CompletionCallback;
.source "Full2VideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder$2;->this$0:Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;

    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/CompletionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActionCompleted(Lcom/otaliastudios/cameraview/engine/action/Action;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder$2;->this$0:Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;

    invoke-static {p1}, Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;->access$001(Lcom/otaliastudios/cameraview/video/Full2VideoRecorder;)V

    return-void
.end method
