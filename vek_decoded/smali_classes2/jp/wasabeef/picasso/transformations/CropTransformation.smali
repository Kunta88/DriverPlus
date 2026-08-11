.class public Ljp/wasabeef/picasso/transformations/CropTransformation;
.super Ljava/lang/Object;
.source "CropTransformation.java"

# interfaces
.implements Lcom/squareup/picasso/Transformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;,
        Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PicassoTransformation"


# instance fields
.field private mAspectRatio:F

.field private mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

.field private mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

.field private mHeight:I

.field private mHeightRatio:F

.field private mLeft:I

.field private mTop:I

.field private mWidth:I

.field private mWidthRatio:F


# direct methods
.method public constructor <init>(FF)V
    .locals 2

    .line 151
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    sget-object v1, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    invoke-direct {p0, p1, p2, v0, v1}, Ljp/wasabeef/picasso/transformations/CropTransformation;-><init>(FFLjp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;)V

    return-void
.end method

.method public constructor <init>(FFFLjp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;)V
    .locals 1

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 66
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 204
    iput p1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidthRatio:F

    .line 205
    iput p2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeightRatio:F

    .line 206
    iput p3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    .line 207
    iput-object p4, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 208
    iput-object p5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    return-void
.end method

.method public constructor <init>(FFLjp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;)V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 66
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 131
    iput p1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidthRatio:F

    .line 132
    iput p2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeightRatio:F

    .line 133
    iput-object p3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 134
    iput-object p4, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    return-void
.end method

.method public constructor <init>(FLjp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;)V
    .locals 1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 66
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 222
    iput p1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    .line 223
    iput-object p2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 224
    iput-object p3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 111
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    sget-object v1, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    invoke-direct {p0, p1, p2, v0, v1}, Ljp/wasabeef/picasso/transformations/CropTransformation;-><init>(IILjp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;)V

    return-void
.end method

.method public constructor <init>(IIFLjp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;)V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 66
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 172
    iput p1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    .line 173
    iput p2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    .line 174
    iput p3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    .line 175
    iput-object p4, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 176
    iput-object p5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 66
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 78
    iput p1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mLeft:I

    .line 79
    iput p2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mTop:I

    .line 80
    iput p3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    .line 81
    iput p4, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 83
    iput-object p1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    return-void
.end method

.method public constructor <init>(IILjp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 66
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->CENTER:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    .line 97
    iput p1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    .line 98
    iput p2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    .line 99
    iput-object p3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    .line 100
    iput-object p4, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    return-void
.end method

.method private getLeft(Landroid/graphics/Bitmap;)I
    .locals 2

    .line 341
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$1;->$SwitchMap$jp$wasabeef$picasso$transformations$CropTransformation$GravityHorizontal:[I

    iget-object v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    invoke-virtual {v1}, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 347
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    sub-int/2addr p1, v0

    return p1

    .line 345
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    sub-int/2addr p1, v0

    div-int/2addr p1, v1

    return p1
.end method

.method private getTop(Landroid/graphics/Bitmap;)I
    .locals 2

    .line 328
    sget-object v0, Ljp/wasabeef/picasso/transformations/CropTransformation$1;->$SwitchMap$jp$wasabeef$picasso$transformations$CropTransformation$GravityVertical:[I

    iget-object v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    invoke-virtual {v1}, Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 334
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    sub-int/2addr p1, v0

    return p1

    .line 332
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget v0, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    sub-int/2addr p1, v0

    div-int/2addr p1, v1

    return p1
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 2

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CropTransformation(width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidthRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidthRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeightRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeightRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gravityHorizontal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGravityVertical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "PicassoTransformation"

    const/4 v1, 0x2

    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transform(): called, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljp/wasabeef/picasso/transformations/CropTransformation;->key()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    iget v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidthRatio:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 231
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidthRatio:F

    mul-float v2, v2, v4

    float-to-int v2, v2

    iput v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    .line 233
    :cond_1
    iget v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    if-nez v2, :cond_2

    iget v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeightRatio:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeightRatio:F

    mul-float v2, v2, v4

    float-to-int v2, v2

    iput v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    .line 237
    :cond_2
    iget v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    const-string v4, ", height: "

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_9

    .line 238
    iget v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    const-string v3, "transform(): mAspectRatio: "

    if-nez v2, :cond_5

    iget v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    if-nez v2, :cond_5

    .line 239
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    .line 241
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 242
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sourceRatio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_3
    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    .line 248
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    goto :goto_0

    .line 251
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    .line 255
    :cond_5
    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transform(): before setting other of h/w: mAspectRatio: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", set one of width: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_6
    iget v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    if-eqz v2, :cond_7

    int-to-float v2, v2

    .line 261
    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    div-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    goto :goto_1

    .line 263
    :cond_7
    iget v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    if-eqz v2, :cond_8

    int-to-float v2, v2

    .line 264
    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    mul-float v2, v2, v5

    float-to-int v2, v2

    iput v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    .line 268
    :cond_8
    :goto_1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mAspectRatio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", set width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_9
    iget v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    if-nez v2, :cond_a

    .line 276
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    .line 279
    :cond_a
    iget v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    if-nez v2, :cond_b

    .line 280
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    .line 283
    :cond_b
    iget-object v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityHorizontal:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityHorizontal;

    if-eqz v2, :cond_c

    .line 284
    invoke-direct {p0, p1}, Ljp/wasabeef/picasso/transformations/CropTransformation;->getLeft(Landroid/graphics/Bitmap;)I

    move-result v2

    iput v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mLeft:I

    .line 286
    :cond_c
    iget-object v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mGravityVertical:Ljp/wasabeef/picasso/transformations/CropTransformation$GravityVertical;

    if-eqz v2, :cond_d

    .line 287
    invoke-direct {p0, p1}, Ljp/wasabeef/picasso/transformations/CropTransformation;->getTop(Landroid/graphics/Bitmap;)I

    move-result v2

    iput v2, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mTop:I

    .line 290
    :cond_d
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mLeft:I

    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mTop:I

    iget v6, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    add-int/2addr v6, v3

    iget v7, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    add-int/2addr v7, v5

    invoke-direct {v2, v3, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 291
    new-instance v3, Landroid/graphics/Rect;

    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    iget v6, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    const/4 v7, 0x0

    invoke-direct {v3, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 293
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 294
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "transform(): created sourceRect with mLeft: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mLeft:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mTop: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mTop:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", right: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mLeft:I

    iget v7, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bottom: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mTop:I

    iget v7, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_e
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 299
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "transform(): created targetRect with width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_f
    iget v5, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mWidth:I

    iget v6, p0, Ljp/wasabeef/picasso/transformations/CropTransformation;->mHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 303
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 304
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 305
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "transform(): copying from source with width: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 305
    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v7, 0x0

    .line 308
    invoke-virtual {v6, p1, v2, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 310
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 312
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transform(): returning bitmap with width: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 314
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 313
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-object v5
.end method
