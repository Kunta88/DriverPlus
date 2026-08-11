.class public Lorg/osmdroid/bonuspack/utils/WebImageCache;
.super Ljava/lang/Object;
.source "WebImageCache.java"


# instance fields
.field mCacheMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mCapacity:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lorg/osmdroid/bonuspack/utils/WebImageCache;->mCapacity:I

    .line 19
    new-instance v0, Lorg/osmdroid/bonuspack/utils/WebImageCache$1;

    const/4 v1, 0x1

    add-int/2addr p1, v1

    const v2, 0x3f8ccccd    # 1.1f

    invoke-direct {v0, p0, p1, v2, v1}, Lorg/osmdroid/bonuspack/utils/WebImageCache$1;-><init>(Lorg/osmdroid/bonuspack/utils/WebImageCache;IFZ)V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/utils/WebImageCache;->mCacheMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private putInCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lorg/osmdroid/bonuspack/utils/WebImageCache;->mCacheMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 29
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/bonuspack/utils/WebImageCache;->mCacheMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 44
    iget-object v0, p0, Lorg/osmdroid/bonuspack/utils/WebImageCache;->mCacheMap:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/bonuspack/utils/WebImageCache;->mCacheMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const-string v0, "BONUSPACK"

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebImageCache:load :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {p1}, Lorg/osmdroid/bonuspack/utils/BonusPackHelper;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    invoke-direct {p0, p1, v1}, Lorg/osmdroid/bonuspack/utils/WebImageCache;->putInCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v1

    :catchall_0
    move-exception p1

    .line 46
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
