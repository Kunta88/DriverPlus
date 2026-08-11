.class public Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PhotoControlTaskImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhotoControlTaskImageViewHolder"
.end annotation


# instance fields
.field private taskImageView:Landroid/widget/ImageView;

.field private taskMakePhotoButton:Landroid/widget/ImageButton;

.field final synthetic this$0:Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;


# direct methods
.method public constructor <init>(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;Landroid/view/View;)V
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;->this$0:Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;

    .line 79
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0902dc

    .line 80
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;->taskImageView:Landroid/widget/ImageView;

    const v0, 0x7f09013a

    .line 81
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;->taskMakePhotoButton:Landroid/widget/ImageButton;

    .line 82
    new-instance v0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder$1;-><init>(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;)I
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;->calculateImageWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;)Landroid/widget/ImageButton;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;->taskMakePhotoButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;->taskImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private calculateImageWidth()I
    .locals 6

    .line 94
    iget-object v0, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 95
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-double v2, v0

    const-wide v4, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenSize"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v0, 0x3fd3333333333333L    # 0.3

    .line 97
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    double-to-int v0, v2

    return v0
.end method
