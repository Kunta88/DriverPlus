.class Lcom/otaliastudios/cameraview/CameraUtils$2$1;
.super Ljava/lang/Object;
.source "CameraUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/CameraUtils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/cameraview/CameraUtils$2;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/otaliastudios/cameraview/CameraUtils$2;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraUtils$2$1;->this$0:Lcom/otaliastudios/cameraview/CameraUtils$2;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/CameraUtils$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraUtils$2$1;->this$0:Lcom/otaliastudios/cameraview/CameraUtils$2;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/CameraUtils$2;->val$callback:Lcom/otaliastudios/cameraview/BitmapCallback;

    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraUtils$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/otaliastudios/cameraview/BitmapCallback;->onBitmapReady(Landroid/graphics/Bitmap;)V

    return-void
.end method
