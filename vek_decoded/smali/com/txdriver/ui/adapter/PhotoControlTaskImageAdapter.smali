.class public Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PhotoControlTaskImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$OnImageClickListener;,
        Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public isMakePhotoButtonEnabled:Z

.field private onImageClickListener:Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$OnImageClickListener;

.field public photoControlImages:[Lcom/txdriver/json/PhotoControlImage;


# direct methods
.method public constructor <init>([Lcom/txdriver/json/PhotoControlImage;ZLandroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;->photoControlImages:[Lcom/txdriver/json/PhotoControlImage;

    .line 30
    iput-boolean p2, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;->isMakePhotoButtonEnabled:Z

    .line 31
    iput-object p3, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$300(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;)Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$OnImageClickListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;->onImageClickListener:Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$OnImageClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;->photoControlImages:[Lcom/txdriver/json/PhotoControlImage;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;->onBindViewHolder(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;I)V
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;->photoControlImages:[Lcom/txdriver/json/PhotoControlImage;

    aget-object p2, v0, p2

    .line 44
    invoke-static {p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;->access$000(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;)I

    move-result v0

    .line 45
    iget-boolean v1, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;->isMakePhotoButtonEnabled:Z

    const/16 v2, 0x8

    if-nez v1, :cond_1

    .line 46
    invoke-static {p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;->access$100(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 47
    iget-object v1, p2, Lcom/txdriver/json/PhotoControlImage;->sentByDriverImageUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 48
    invoke-static {p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;->access$200(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object p2, p2, Lcom/txdriver/json/PhotoControlImage;->sentByDriverImageUrl:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2, v0, v0}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    .line 49
    invoke-static {p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;->access$200(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;->access$200(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object p2, p2, Lcom/txdriver/json/PhotoControlImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2, v0, v0}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    .line 52
    invoke-static {p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;->access$200(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v1, p2, Lcom/txdriver/json/PhotoControlImage;->sentByDriverImageUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 56
    invoke-static {p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;->access$200(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object p2, p2, Lcom/txdriver/json/PhotoControlImage;->sentByDriverImageUrl:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    invoke-virtual {p2, v0, v0}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    .line 57
    invoke-static {p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;->access$200(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 58
    invoke-static {p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;->access$100(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-static {p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;->access$100(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 61
    invoke-static {p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;->access$200(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object p2, p2, Lcom/txdriver/json/PhotoControlImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    new-instance v1, Ljp/wasabeef/picasso/transformations/BlurTransformation;

    iget-object v2, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;->context:Landroid/content/Context;

    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljp/wasabeef/picasso/transformations/BlurTransformation;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p2, v1}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    .line 62
    invoke-virtual {p2, v0, v0}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    .line 63
    invoke-static {p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;->access$200(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;
    .locals 2

    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0071

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 38
    new-instance p2, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$PhotoControlTaskImageViewHolder;-><init>(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnImageClickListener(Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$OnImageClickListener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter;->onImageClickListener:Lcom/txdriver/ui/adapter/PhotoControlTaskImageAdapter$OnImageClickListener;

    return-void
.end method
