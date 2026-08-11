.class public Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;
.super Lcom/txdriver/ui/fragment/BaseFragment;
.source "PhotoControlTaskCameraViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SetImageResult;,
        Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;
    }
.end annotation


# static fields
.field private static final RESTORED_IMAGES:Ljava/lang/String; = "restoredImages"

.field private static final RESTORED_POSITION:Ljava/lang/String; = "restoredPosition"


# instance fields
.field private cameraView:Lcom/otaliastudios/cameraview/CameraView;

.field private deletePhotoButton:Landroid/widget/ImageButton;

.field private imageUrl:Ljava/lang/String;

.field private imageView:Landroid/widget/ImageView;

.field private images:[Lcom/txdriver/json/PhotoControlImage;

.field private isPhotoTaken:Z

.field private makePhotoButton:Landroid/widget/ImageButton;

.field private nextPhotoButton:Landroid/widget/ImageButton;

.field private photoPosition:I

.field private photoResult:Landroid/graphics/Bitmap;

.field private previousPhotoButton:Landroid/widget/ImageButton;

.field private resultImageView:Landroid/widget/ImageView;

.field private savePhotoButton:Landroid/widget/ImageButton;

.field setImageResult:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SetImageResult;

.field private switchCameraButton:Landroid/widget/ImageButton;

.field private switchFlashModeButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoResult:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->isPhotoTaken:Z

    return p0
.end method

.method static synthetic access$102(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->isPhotoTaken:Z

    return p1
.end method

.method static synthetic access$200(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->changeControlButtonsLayout(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->resultImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)I
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->calculateScreenWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)I
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->calculateScreenHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)[Lcom/txdriver/json/PhotoControlImage;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->images:[Lcom/txdriver/json/PhotoControlImage;

    return-object p0
.end method

.method static synthetic access$900(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    return p0
.end method

.method private calculateScreenHeight()I
    .locals 4

    .line 241
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCREEN"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method private calculateScreenWidth()I
    .locals 4

    .line 235
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCREEN"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method private changeControlButtonsLayout(Z)V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->cameraView:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {p1, v1}, Lcom/otaliastudios/cameraview/CameraView;->setVisibility(I)V

    .line 195
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->cameraView:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/CameraView;->close()V

    .line 196
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->previousPhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 197
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->previousPhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 198
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->switchCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 199
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->switchCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 200
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->makePhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 201
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->makePhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 202
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->switchFlashModeButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 203
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->switchFlashModeButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 204
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->nextPhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 205
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->nextPhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 206
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->savePhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 207
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->savePhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 208
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->deletePhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 209
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->deletePhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 210
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->resultImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->cameraView:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {p1, v2}, Lcom/otaliastudios/cameraview/CameraView;->setVisibility(I)V

    .line 213
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->cameraView:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/CameraView;->open()V

    .line 214
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->previousPhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 215
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->previousPhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 216
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->hasFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 217
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->switchCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 218
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->switchCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 220
    :cond_1
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->makePhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 221
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->makePhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 222
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->switchFlashModeButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 223
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->switchFlashModeButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 224
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->nextPhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->nextPhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 226
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->savePhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 227
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->savePhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->deletePhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 229
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->deletePhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 230
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->resultImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private checkCameraFlashModes(Landroid/content/Context;Landroid/widget/ImageButton;)V
    .locals 1

    .line 357
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.camera.flash"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 358
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 360
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 p2, 0x4b

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    return-void
.end method

.method private fillOverlayImageView(Landroid/view/View;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x1

    new-array v3, v0, [Landroid/graphics/Bitmap;

    new-array v4, v0, [I

    new-array v5, v0, [I

    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v8, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;

    move-object v1, v8

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;-><init>(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;[Landroid/graphics/Bitmap;[I[ILandroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    return-void
.end method

.method private getImageData()V
    .locals 3

    .line 306
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "taskImages"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "image_position"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->imageUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 309
    check-cast v0, [Lcom/txdriver/json/PhotoControlImage;

    check-cast v0, [Lcom/txdriver/json/PhotoControlImage;

    iput-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->images:[Lcom/txdriver/json/PhotoControlImage;

    .line 310
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    :cond_0
    return-void
.end method

.method private hasFrontCamera()Z
    .locals 6

    .line 443
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 444
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 446
    invoke-static {v3, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 447
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private initButtons()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->previousPhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->switchCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->makePhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->switchFlashModeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->nextPhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->deletePhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->savePhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setNextPhotoTemplate()V
    .locals 4

    .line 426
    iget v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    add-int/lit8 v1, v0, 0x1

    .line 427
    iput v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    .line 428
    iget-object v2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->images:[Lcom/txdriver/json/PhotoControlImage;

    array-length v2, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 429
    iput v3, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    .line 431
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->images:[Lcom/txdriver/json/PhotoControlImage;

    iget v2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/txdriver/json/PhotoControlImage;->sentByDriverImageUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 432
    iput v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    .line 433
    iget-object v2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->images:[Lcom/txdriver/json/PhotoControlImage;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 434
    iput v3, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    goto :goto_0

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->images:[Lcom/txdriver/json/PhotoControlImage;

    iget v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/txdriver/json/PhotoControlImage;->imageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->imageUrl:Ljava/lang/String;

    .line 438
    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->imageView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->fillOverlayImageView(Landroid/view/View;Ljava/lang/String;)V

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PHOTO_POSITION"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setPreviousPhotoTemplate()V
    .locals 3

    .line 409
    iget v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    add-int/lit8 v1, v0, -0x1

    .line 410
    iput v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    if-gez v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->images:[Lcom/txdriver/json/PhotoControlImage;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    .line 414
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->images:[Lcom/txdriver/json/PhotoControlImage;

    iget v2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/txdriver/json/PhotoControlImage;->sentByDriverImageUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 415
    iput v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    if-gez v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->images:[Lcom/txdriver/json/PhotoControlImage;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    goto :goto_0

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->images:[Lcom/txdriver/json/PhotoControlImage;

    iget v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/txdriver/json/PhotoControlImage;->imageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->imageUrl:Ljava/lang/String;

    .line 421
    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->imageView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->fillOverlayImageView(Landroid/view/View;Ljava/lang/String;)V

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PHOTO_POSITION"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private switchCameraFlashMode()V
    .locals 2

    .line 289
    sget-object v0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$3;->$SwitchMap$com$otaliastudios$cameraview$controls$Flash:[I

    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->cameraView:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/CameraView;->getFlash()Lcom/otaliastudios/cameraview/controls/Flash;

    move-result-object v1

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/controls/Flash;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->cameraView:Lcom/otaliastudios/cameraview/CameraView;

    sget-object v1, Lcom/otaliastudios/cameraview/controls/Flash;->AUTO:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraView;->setFlash(Lcom/otaliastudios/cameraview/controls/Flash;)V

    .line 300
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->switchFlashModeButton:Landroid/widget/ImageButton;

    const v1, 0x7f0800b3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->cameraView:Lcom/otaliastudios/cameraview/CameraView;

    sget-object v1, Lcom/otaliastudios/cameraview/controls/Flash;->OFF:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraView;->setFlash(Lcom/otaliastudios/cameraview/controls/Flash;)V

    .line 296
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->switchFlashModeButton:Landroid/widget/ImageButton;

    const v1, 0x7f0800b4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->cameraView:Lcom/otaliastudios/cameraview/CameraView;

    sget-object v1, Lcom/otaliastudios/cameraview/controls/Flash;->ON:Lcom/otaliastudios/cameraview/controls/Flash;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraView;->setFlash(Lcom/otaliastudios/cameraview/controls/Flash;)V

    .line 292
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->switchFlashModeButton:Landroid/widget/ImageButton;

    const v1, 0x7f0800b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private switchCameraMode()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->cameraView:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/CameraView;->getFacing()Lcom/otaliastudios/cameraview/controls/Facing;

    move-result-object v0

    sget-object v1, Lcom/otaliastudios/cameraview/controls/Facing;->BACK:Lcom/otaliastudios/cameraview/controls/Facing;

    if-ne v0, v1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->cameraView:Lcom/otaliastudios/cameraview/CameraView;

    sget-object v1, Lcom/otaliastudios/cameraview/controls/Facing;->FRONT:Lcom/otaliastudios/cameraview/controls/Facing;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraView;->setFacing(Lcom/otaliastudios/cameraview/controls/Facing;)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->cameraView:Lcom/otaliastudios/cameraview/CameraView;

    sget-object v1, Lcom/otaliastudios/cameraview/controls/Facing;->BACK:Lcom/otaliastudios/cameraview/controls/Facing;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/cameraview/CameraView;->setFacing(Lcom/otaliastudios/cameraview/controls/Facing;)V

    .line 285
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->cameraView:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {v1}, Lcom/otaliastudios/cameraview/CameraView;->getFacing()Lcom/otaliastudios/cameraview/controls/Facing;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAMERA_MODE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 70
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    const-string v0, "savePhotoBitMap"

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "saveIsPhotoTaken"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x0

    .line 75
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoResult:Landroid/graphics/Bitmap;

    .line 76
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->isPhotoTaken:Z

    .line 77
    invoke-direct {p0, p1}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->changeControlButtonsLayout(Z)V

    .line 78
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->resultImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoResult:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const-string v0, "restoredImages"

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 81
    check-cast v0, [Lcom/txdriver/json/PhotoControlImage;

    check-cast v0, [Lcom/txdriver/json/PhotoControlImage;

    iput-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->images:[Lcom/txdriver/json/PhotoControlImage;

    const-string v0, "restoredPosition"

    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    .line 83
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->images:[Lcom/txdriver/json/PhotoControlImage;

    aget-object p1, v1, p1

    iget-object p1, p1, Lcom/txdriver/json/PhotoControlImage;->imageUrl:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->fillOverlayImageView(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 404
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 405
    check-cast p1, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SetImageResult;

    iput-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->setImageResult:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SetImageResult;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 256
    :sswitch_0
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->switchCameraFlashMode()V

    goto :goto_0

    .line 253
    :sswitch_1
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->switchCameraMode()V

    goto :goto_0

    .line 270
    :sswitch_2
    new-instance p1, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;-><init>(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1;)V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoResult:Landroid/graphics/Bitmap;

    aput-object v3, v2, v0

    invoke-virtual {p1, v2}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$SendPhotoResultTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 271
    iput-boolean v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->isPhotoTaken:Z

    .line 272
    invoke-direct {p0, v0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->changeControlButtonsLayout(Z)V

    .line 273
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 274
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f100275

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 250
    :sswitch_3
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->setPreviousPhotoTemplate()V

    goto :goto_0

    .line 262
    :sswitch_4
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->setNextPhotoTemplate()V

    goto :goto_0

    .line 259
    :sswitch_5
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->cameraView:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/CameraView;->takePicture()V

    goto :goto_0

    .line 265
    :sswitch_6
    iput-boolean v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->isPhotoTaken:Z

    .line 266
    invoke-direct {p0, v0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->changeControlButtonsLayout(Z)V

    .line 267
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoResult:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900b9 -> :sswitch_6
        0x7f0900cc -> :sswitch_5
        0x7f0901b1 -> :sswitch_4
        0x7f090235 -> :sswitch_3
        0x7f090267 -> :sswitch_2
        0x7f0902cc -> :sswitch_1
        0x7f0902cd -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c005e

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09013b

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->imageView:Landroid/widget/ImageView;

    const p2, 0x7f0902db

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->resultImageView:Landroid/widget/ImageView;

    const p2, 0x7f0900cc

    .line 109
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->makePhotoButton:Landroid/widget/ImageButton;

    const p2, 0x7f0902cc

    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->switchCameraButton:Landroid/widget/ImageButton;

    const p2, 0x7f0902cd

    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->switchFlashModeButton:Landroid/widget/ImageButton;

    const p2, 0x7f090235

    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->previousPhotoButton:Landroid/widget/ImageButton;

    const p2, 0x7f0901b1

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->nextPhotoButton:Landroid/widget/ImageButton;

    const p2, 0x7f090267

    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->savePhotoButton:Landroid/widget/ImageButton;

    const p2, 0x7f0900b9

    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->deletePhotoButton:Landroid/widget/ImageButton;

    .line 116
    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->makePhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/16 p3, 0x4b

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 117
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->hasFrontCamera()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 118
    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->switchCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->switchCameraButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 122
    :goto_0
    invoke-virtual {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->switchFlashModeButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p2, v1}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->checkCameraFlashModes(Landroid/content/Context;Landroid/widget/ImageButton;)V

    .line 123
    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->previousPhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 124
    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->nextPhotoButton:Landroid/widget/ImageButton;

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 125
    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->imageView:Landroid/widget/ImageView;

    const p3, 0x3ecccccd    # 0.4f

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    const p2, 0x7f09022d

    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/otaliastudios/cameraview/CameraView;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->cameraView:Lcom/otaliastudios/cameraview/CameraView;

    .line 127
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->calculateScreenWidth()I

    move-result p2

    invoke-static {p2}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->minWidth(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object p2

    .line 128
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->calculateScreenHeight()I

    move-result p3

    invoke-static {p3}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->minHeight(I)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object p3

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/otaliastudios/cameraview/size/SizeSelector;

    aput-object p2, v1, v0

    const/4 p2, 0x1

    aput-object p3, v1, p2

    .line 129
    invoke-static {v1}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->and([Lcom/otaliastudios/cameraview/size/SizeSelector;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object p2

    .line 130
    iget-object p3, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->cameraView:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {p3, p2}, Lcom/otaliastudios/cameraview/CameraView;->setPreviewStreamSize(Lcom/otaliastudios/cameraview/size/SizeSelector;)V

    .line 132
    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->cameraView:Lcom/otaliastudios/cameraview/CameraView;

    sget-object p3, Lcom/otaliastudios/cameraview/gesture/Gesture;->TAP:Lcom/otaliastudios/cameraview/gesture/Gesture;

    sget-object v0, Lcom/otaliastudios/cameraview/gesture/GestureAction;->AUTO_FOCUS:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    invoke-virtual {p2, p3, v0}, Lcom/otaliastudios/cameraview/CameraView;->mapGesture(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/gesture/GestureAction;)Z

    .line 133
    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->cameraView:Lcom/otaliastudios/cameraview/CameraView;

    sget-object p3, Lcom/otaliastudios/cameraview/gesture/Gesture;->PINCH:Lcom/otaliastudios/cameraview/gesture/Gesture;

    sget-object v0, Lcom/otaliastudios/cameraview/gesture/GestureAction;->ZOOM:Lcom/otaliastudios/cameraview/gesture/GestureAction;

    invoke-virtual {p2, p3, v0}, Lcom/otaliastudios/cameraview/CameraView;->mapGesture(Lcom/otaliastudios/cameraview/gesture/Gesture;Lcom/otaliastudios/cameraview/gesture/GestureAction;)Z

    .line 134
    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->cameraView:Lcom/otaliastudios/cameraview/CameraView;

    new-instance p3, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1;

    invoke-direct {p3, p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$1;-><init>(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)V

    invoke-virtual {p2, p3}, Lcom/otaliastudios/cameraview/CameraView;->addCameraListener(Lcom/otaliastudios/cameraview/CameraListener;)V

    .line 151
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->getImageData()V

    .line 152
    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->imageView:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->images:[Lcom/txdriver/json/PhotoControlImage;

    iget v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    aget-object p3, p3, v0

    iget-object p3, p3, Lcom/txdriver/json/PhotoControlImage;->imageUrl:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->fillOverlayImageView(Landroid/view/View;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->initButtons()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 178
    invoke-super {p0}, Lcom/txdriver/ui/fragment/BaseFragment;->onDestroyView()V

    .line 179
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->cameraView:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/CameraView;->destroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 172
    invoke-super {p0}, Lcom/txdriver/ui/fragment/BaseFragment;->onPause()V

    .line 173
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->cameraView:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/CameraView;->close()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 166
    invoke-super {p0}, Lcom/txdriver/ui/fragment/BaseFragment;->onResume()V

    .line 167
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->cameraView:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/otaliastudios/cameraview/CameraView;->open()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 90
    invoke-super {p0, p1}, Lcom/txdriver/ui/fragment/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoResult:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->isPhotoTaken:Z

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoResult:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 94
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v1, "savePhotoBitMap"

    .line 95
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 96
    iget-boolean v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->isPhotoTaken:Z

    const-string v1, "saveIsPhotoTaken"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->images:[Lcom/txdriver/json/PhotoControlImage;

    if-eqz v0, :cond_1

    const-string v1, "restoredImages"

    .line 98
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 99
    iget v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->photoPosition:I

    const-string v1, "restoredPosition"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 160
    invoke-super {p0, p1, p2}, Lcom/txdriver/ui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 161
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->cameraView:Lcom/otaliastudios/cameraview/CameraView;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/CameraView;->open()V

    return-void
.end method
