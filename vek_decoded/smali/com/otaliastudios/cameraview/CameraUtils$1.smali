.class final Lcom/otaliastudios/cameraview/CameraUtils$1;
.super Ljava/lang/Object;
.source "CameraUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/CameraUtils;->writeToFile([BLjava/io/File;Lcom/otaliastudios/cameraview/FileCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/otaliastudios/cameraview/FileCallback;

.field final synthetic val$data:[B

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$ui:Landroid/os/Handler;


# direct methods
.method constructor <init>([BLjava/io/File;Landroid/os/Handler;Lcom/otaliastudios/cameraview/FileCallback;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraUtils$1;->val$data:[B

    iput-object p2, p0, Lcom/otaliastudios/cameraview/CameraUtils$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/otaliastudios/cameraview/CameraUtils$1;->val$ui:Landroid/os/Handler;

    iput-object p4, p0, Lcom/otaliastudios/cameraview/CameraUtils$1;->val$callback:Lcom/otaliastudios/cameraview/FileCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraUtils$1;->val$data:[B

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraUtils$1;->val$file:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/CameraUtils;->writeToFile([BLjava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraUtils$1;->val$ui:Landroid/os/Handler;

    new-instance v2, Lcom/otaliastudios/cameraview/CameraUtils$1$1;

    invoke-direct {v2, p0, v0}, Lcom/otaliastudios/cameraview/CameraUtils$1$1;-><init>(Lcom/otaliastudios/cameraview/CameraUtils$1;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
