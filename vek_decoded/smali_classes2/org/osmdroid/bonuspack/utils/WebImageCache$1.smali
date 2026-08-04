.class Lorg/osmdroid/bonuspack/utils/WebImageCache$1;
.super Ljava/util/LinkedHashMap;
.source "WebImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/bonuspack/utils/WebImageCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x430c56660f1388e3L


# instance fields
.field final synthetic this$0:Lorg/osmdroid/bonuspack/utils/WebImageCache;


# direct methods
.method constructor <init>(Lorg/osmdroid/bonuspack/utils/WebImageCache;IFZ)V
    .locals 0

    .line 19
    iput-object p1, p0, Lorg/osmdroid/bonuspack/utils/WebImageCache$1;->this$0:Lorg/osmdroid/bonuspack/utils/WebImageCache;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/utils/WebImageCache$1;->size()I

    move-result p1

    iget-object v0, p0, Lorg/osmdroid/bonuspack/utils/WebImageCache$1;->this$0:Lorg/osmdroid/bonuspack/utils/WebImageCache;

    iget v0, v0, Lorg/osmdroid/bonuspack/utils/WebImageCache;->mCapacity:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
