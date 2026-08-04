.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$5;
.super Ljava/lang/Object;
.source "Camera2Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/Camera2Engine;->onStartPreview()Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

.field final synthetic val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/VideoResult$Stub;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$5;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$5;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$5;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$5;->val$stub:Lcom/otaliastudios/cameraview/VideoResult$Stub;

    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->access$1000(Lcom/otaliastudios/cameraview/engine/Camera2Engine;Lcom/otaliastudios/cameraview/VideoResult$Stub;)V

    return-void
.end method
