.class Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1;
.super Lcom/otaliastudios/cameraview/CameraListener;
.source "PhotoControlTaskCameraViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    invoke-direct {p0}, Lcom/otaliastudios/cameraview/CameraListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken(Lcom/otaliastudios/cameraview/PictureResult;)V
    .locals 1

    .line 137
    new-instance v0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1$1;

    invoke-direct {v0, p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1$1;-><init>(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1;)V

    invoke-virtual {p1, v0}, Lcom/otaliastudios/cameraview/PictureResult;->toBitmap(Lcom/otaliastudios/cameraview/BitmapCallback;)V

    return-void
.end method
