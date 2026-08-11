.class Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;
.super Ljava/lang/Object;
.source "PhotoControlTaskCameraViewFragment.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->fillOverlayImageView(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

.field final synthetic val$bitmapHeight:[I

.field final synthetic val$bitmapWidth:[I

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$source:[Landroid/graphics/Bitmap;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;[Landroid/graphics/Bitmap;[I[ILandroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    iput-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->val$source:[Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->val$bitmapWidth:[I

    iput-object p4, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->val$bitmapHeight:[I

    iput-object p5, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->val$view:Landroid/view/View;

    iput-object p6, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->val$imageUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 7

    .line 324
    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->val$source:[Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    .line 325
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->val$bitmapWidth:[I

    aget-object p2, p2, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    aput p2, p1, v0

    .line 326
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->val$bitmapHeight:[I

    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->val$source:[Landroid/graphics/Bitmap;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    aput p2, p1, v0

    .line 328
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    invoke-virtual {p1}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 329
    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->val$bitmapWidth:[I

    aget p2, p2, v0

    iget-object v1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->val$bitmapHeight:[I

    aget v0, v1, v0

    const-wide v1, 0x3feccccccccccccdL    # 0.9

    const/high16 v3, 0x42b40000    # 90.0f

    const-wide v4, 0x3fea8f5c28f5c28fL    # 0.83

    const/4 v6, 0x2

    if-le p2, v0, :cond_1

    if-ne p1, v6, :cond_0

    .line 331
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    invoke-static {p2}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->access$600(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)I

    move-result p2

    int-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    double-to-int p2, v3

    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    invoke-static {v0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->access$700(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    invoke-static {p2}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->access$500(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 333
    :cond_0
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/squareup/picasso/RequestCreator;->rotate(F)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    invoke-static {p2}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->access$600(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)I

    move-result p2

    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    invoke-static {v0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->access$700(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    double-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    invoke-static {p2}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->access$500(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    .line 337
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/squareup/picasso/RequestCreator;->rotate(F)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    invoke-static {p2}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->access$600(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)I

    move-result p2

    int-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    double-to-int p2, v3

    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    invoke-static {v0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->access$700(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    invoke-static {p2}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->access$500(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 339
    :cond_2
    iget-object p1, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    invoke-static {p2}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->access$600(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)I

    move-result p2

    iget-object v0, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    invoke-static {v0}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->access$700(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    double-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object p2, p0, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment$2;->this$0:Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;

    invoke-static {p2}, Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;->access$500(Lcom/txdriver/ui/fragment/PhotoControlTaskCameraViewFragment;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
