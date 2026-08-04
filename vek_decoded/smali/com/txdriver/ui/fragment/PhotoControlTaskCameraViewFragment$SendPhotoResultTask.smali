.class Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;
.super Landroid/os/AsyncTask;
.source "PhotoControlTaskCameraViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendPhotoResultTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;


# direct methods
.method private constructor <init>(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1;)V
    .locals 0

    .line 363
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;-><init>(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 363
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;->doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 5

    .line 368
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 369
    aget-object v2, p1, v1

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 370
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 371
    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 372
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 363
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    .line 377
    new-instance v0, Lcom/txdriver/http/request/PhotoControlSendImageRequest;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    iget-object v1, v1, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->app:Lcom/txdriver/App;

    iget-object v2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    invoke-static {v2}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->access$800(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)[Lcom/txdriver/json/PhotoControlImage;

    move-result-object v2

    iget-object v3, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    invoke-static {v3}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->access$900(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lcom/txdriver/json/PhotoControlImage;->imageId:I

    iget-object v3, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    iget-object v3, v3, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->app:Lcom/txdriver/App;

    invoke-virtual {v3}, Lcom/txdriver/App;->getPreferences()Lcom/txdriver/preferences/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/txdriver/preferences/Preferences;->getPrefDriverUuid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/txdriver/http/request/PhotoControlSendImageRequest;-><init>(Lcom/txdriver/App;ILjava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance p1, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask$1;

    invoke-direct {p1, p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask$1;-><init>(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;)V

    invoke-virtual {v0, p1}, Lcom/txdriver/http/request/PhotoControlSendImageRequest;->setOnResponseListener(Lcom/txdriver/http/request/HttpPostRequest$OnResponseListenerForPostRequest;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 395
    invoke-virtual {v0, p1}, Lcom/txdriver/http/request/PhotoControlSendImageRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
