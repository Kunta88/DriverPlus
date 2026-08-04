.class Lorg/osmdroid/bonuspack/location/POI$ThumbnailTask;
.super Landroid/os/AsyncTask;
.source "POI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/bonuspack/location/POI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/widget/ImageView;",
        "Ljava/lang/Void;",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/bonuspack/location/POI;


# direct methods
.method public constructor <init>(Lorg/osmdroid/bonuspack/location/POI;Landroid/widget/ImageView;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lorg/osmdroid/bonuspack/location/POI$ThumbnailTask;->this$0:Lorg/osmdroid/bonuspack/location/POI;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 126
    iget-object p1, p1, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailPath:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/osmdroid/bonuspack/location/POI$ThumbnailTask;->this$0:Lorg/osmdroid/bonuspack/location/POI;

    invoke-virtual {v0}, Lorg/osmdroid/bonuspack/location/POI;->getThumbnail()Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 131
    aget-object p1, p1, v0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 123
    check-cast p1, [Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/location/POI$ThumbnailTask;->doInBackground([Landroid/widget/ImageView;)Landroid/widget/ImageView;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/widget/ImageView;)V
    .locals 2

    .line 135
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/bonuspack/location/POI$ThumbnailTask;->this$0:Lorg/osmdroid/bonuspack/location/POI;

    iget-object v0, v0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/osmdroid/bonuspack/location/POI$ThumbnailTask;->this$0:Lorg/osmdroid/bonuspack/location/POI;

    iget-object v0, v0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/osmdroid/bonuspack/location/POI$ThumbnailTask;->this$0:Lorg/osmdroid/bonuspack/location/POI;

    iget-object v0, v0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 123
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/location/POI$ThumbnailTask;->onPostExecute(Landroid/widget/ImageView;)V

    return-void
.end method
