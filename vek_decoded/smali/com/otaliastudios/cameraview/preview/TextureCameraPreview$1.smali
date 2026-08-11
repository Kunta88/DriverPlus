.class Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$1;
.super Ljava/lang/Object;
.source "TextureCameraPreview.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->onCreateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/TextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$1;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$1;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    invoke-virtual {p1, p2, p3}, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->dispatchOnSurfaceAvailable(II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$1;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->dispatchOnSurfaceDestroyed()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview$1;->this$0:Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;

    invoke-virtual {p1, p2, p3}, Lcom/otaliastudios/cameraview/preview/TextureCameraPreview;->dispatchOnSurfaceSizeChanged(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
