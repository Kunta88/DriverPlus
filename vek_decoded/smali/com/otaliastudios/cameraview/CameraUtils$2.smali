.class final Lcom/otaliastudios/cameraview/CameraUtils$2;
.super Ljava/lang/Object;
.source "CameraUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/cameraview/CameraUtils;->decodeBitmap([BIILandroid/graphics/BitmapFactory$Options;ILcom/otaliastudios/cameraview/BitmapCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/otaliastudios/cameraview/BitmapCallback;

.field final synthetic val$maxHeight:I

.field final synthetic val$maxWidth:I

.field final synthetic val$options:Landroid/graphics/BitmapFactory$Options;

.field final synthetic val$rotation:I

.field final synthetic val$source:[B

.field final synthetic val$ui:Landroid/os/Handler;


# direct methods
.method constructor <init>([BIILandroid/graphics/BitmapFactory$Options;ILandroid/os/Handler;Lcom/otaliastudios/cameraview/BitmapCallback;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/otaliastudios/cameraview/CameraUtils$2;->val$source:[B

    iput p2, p0, Lcom/otaliastudios/cameraview/CameraUtils$2;->val$maxWidth:I

    iput p3, p0, Lcom/otaliastudios/cameraview/CameraUtils$2;->val$maxHeight:I

    iput-object p4, p0, Lcom/otaliastudios/cameraview/CameraUtils$2;->val$options:Landroid/graphics/BitmapFactory$Options;

    iput p5, p0, Lcom/otaliastudios/cameraview/CameraUtils$2;->val$rotation:I

    iput-object p6, p0, Lcom/otaliastudios/cameraview/CameraUtils$2;->val$ui:Landroid/os/Handler;

    iput-object p7, p0, Lcom/otaliastudios/cameraview/CameraUtils$2;->val$callback:Lcom/otaliastudios/cameraview/BitmapCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 215
    iget-object v0, p0, Lcom/otaliastudios/cameraview/CameraUtils$2;->val$source:[B

    iget v1, p0, Lcom/otaliastudios/cameraview/CameraUtils$2;->val$maxWidth:I

    iget v2, p0, Lcom/otaliastudios/cameraview/CameraUtils$2;->val$maxHeight:I

    iget-object v3, p0, Lcom/otaliastudios/cameraview/CameraUtils$2;->val$options:Landroid/graphics/BitmapFactory$Options;

    iget v4, p0, Lcom/otaliastudios/cameraview/CameraUtils$2;->val$rotation:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/otaliastudios/cameraview/CameraUtils;->access$000([BIILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/otaliastudios/cameraview/CameraUtils$2;->val$ui:Landroid/os/Handler;

    new-instance v2, Lcom/otaliastudios/cameraview/CameraUtils$2$1;

    invoke-direct {v2, p0, v0}, Lcom/otaliastudios/cameraview/CameraUtils$2$1;-><init>(Lcom/otaliastudios/cameraview/CameraUtils$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
