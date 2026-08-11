.class Lcom/otaliastudios/cameraview/CameraUtils$1$1;
.super Ljava/lang/Object;
.source "CameraUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/CameraUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/CameraUtils$1;

.field final synthetic val$result:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/CameraUtils$1;Ljava/io/File;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraUtils$1$1;->this$0:Lcom/otaliastudios/cameraview/CameraUtils$1;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/CameraUtils$1$1;->val$result:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraUtils$1$1;->this$0:Lcom/otaliastudios/cameraview/CameraUtils$1;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraUtils$1;->val$callback:Lcom/otaliastudios/cameraview/FileCallback;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraUtils$1$1;->val$result:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/otaliastudios/cameraview/FileCallback;->onFileReady(Ljava/io/File;)V

    return-void
.end method
