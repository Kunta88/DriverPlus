.class Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask$1;
.super Ljava/lang/Object;
.source "PhotoControlTaskCameraViewFragment.java"

# interfaces
.implements Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest<",
        "Lcom/txdriver/json/PhotoControlImageResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask$1;->this$1:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;)V
    .locals 2

    .line 392
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask$1;->this$1:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->app:Lcom/txdriver/App;

    const v0, 0x7f1001ff

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onResponse(Lcom/txdriver/json/PhotoControlImageResult;)V
    .locals 2

    if-nez p1, :cond_0

    .line 382
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask$1;->this$1:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->app:Lcom/txdriver/App;

    const v0, 0x7f100074

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 384
    :cond_0
    iget-object p1, p1, Lcom/txdriver/json/PhotoControlImageResult;->imageUrl:Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask$1;->this$1:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;

    iget-object v0, v0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    invoke-static {v0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->access$900(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)I

    move-result v0

    .line 386
    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask$1;->this$1:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;

    iget-object v1, v1, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    iget-object v1, v1, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->setImageResult:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SetImageResult;

    invoke-interface {v1, v0, p1}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SetImageResult;->setNewImageToImageView(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 378
    check-cast p1, Lcom/txdriver/json/PhotoControlImageResult;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask$1;->onResponse(Lcom/txdriver/json/PhotoControlImageResult;)V

    return-void
.end method
