.class Lcom/otaliastudios/cameraview/engine/Camera2Engine$10;
.super Ljava/lang/Object;
.source "Camera2Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/engine/Camera2Engine;->onVideoResult(Lcom/otaliastudios/cameraview/VideoResult$Stub;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)V
    .locals 0

    .line 961
    iput-object p1, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$10;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/otaliastudios/cameraview/engine/Camera2Engine$10;->this$0:Lcom/otaliastudios/cameraview/engine/Camera2Engine;

    invoke-static {v0}, Lcom/otaliastudios/cameraview/engine/Camera2Engine;->access$1200(Lcom/otaliastudios/cameraview/engine/Camera2Engine;)V

    return-void
.end method
