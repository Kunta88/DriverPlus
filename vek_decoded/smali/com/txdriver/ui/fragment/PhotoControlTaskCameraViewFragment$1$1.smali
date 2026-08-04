.class Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1$1;
.super Ljava/lang/Object;
.source "PhotoControlTaskCameraViewFragment.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/BitmapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1;->onPictureTaken(Lcom/otaliastudios/cameraview/PictureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1$1;->this$1:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapReady(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1$1;->this$1:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1;

    iget-object v0, v0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    invoke-static {v0, p1}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->access$002(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 142
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1$1;->this$1:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1;

    iget-object v0, v0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->access$102(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;Z)Z

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1$1;->this$1:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1;

    iget-object v0, v0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1$1;->this$1:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1;

    iget-object v1, v1, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    invoke-static {v1}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->access$100(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->access$200(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;Z)V

    .line 145
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1$1;->this$1:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1;

    iget-object v0, v0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    invoke-static {v0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->access$300(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
