.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$8;
.super Lcom/otaliastudios/cameraview/engine/action/CompletionCallback;
.source "Camera2Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/Camera2Engine;->onTakePicture(Lcom/otaliastudios/cameraview/PictureResult$Stub;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

.field final synthetic val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/PictureResult$Stub;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$8;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$8;->val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    invoke-direct {p0}, Lcom/otaliastudios/cameraview/engine/action/CompletionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActionCompleted(Lcom/otaliastudios/cameraview/engine/action/Action;)V
    .locals 1

    .line 812
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$8;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->setPictureMetering(Z)V

    .line 813
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$8;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$8;->val$stub:Lcom/otaliastudios/cameraview/PictureResult$Stub;

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->takePicture(Lcom/otaliastudios/cameraview/PictureResult$Stub;)V

    .line 814
    iget-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$8;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->setPictureMetering(Z)V

    return-void
.end method
