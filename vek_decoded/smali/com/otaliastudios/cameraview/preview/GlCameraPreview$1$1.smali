.class Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1$1;
.super Ljava/lang/Object;
.source "GlCameraPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1$1;->this$1:Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1$1;->this$1:Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$1;->val$renderer:Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/preview/GlCameraPreview$Renderer;->onSurfaceDestroyed()V

    return-void
.end method
