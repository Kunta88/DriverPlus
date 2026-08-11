.class public Lru/yandex/yandexmapkit/map/scale/ScaleView;
.super Landroid/widget/TextView;

# interfaces
.implements Lru/yandex/yandexmapkit/map/OnMapListener;


# instance fields
.field public a:Ljava/lang/StringBuilder;

.field private b:Landroid/content/Context;

.field private c:Lru/yandex/yandexmapkit/MapController;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x8

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p2, p0, Lru/yandex/yandexmapkit/map/scale/ScaleView;->a:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lru/yandex/yandexmapkit/map/scale/ScaleView;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lru/yandex/yandexmapkit/R$drawable;->ymk_scale:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p2}, Lru/yandex/yandexmapkit/map/scale/ScaleView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    sget p2, Lru/yandex/yandexmapkit/R$drawable;->ymk_scale:I

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq p2, v1, :cond_1

    :cond_0
    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lru/yandex/yandexmapkit/map/scale/ScaleView;->d:I

    return-void
.end method

.method private a()V
    .locals 9

    iget v0, p0, Lru/yandex/yandexmapkit/map/scale/ScaleView;->d:I

    int-to-long v0, v0

    iget-object v2, p0, Lru/yandex/yandexmapkit/map/scale/ScaleView;->c:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/MapController;->getZoomCurrent()F

    move-result v2

    const/high16 v3, 0x41b80000    # 23.0f

    sub-float/2addr v3, v2

    float-to-double v2, v3

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    mul-long v0, v0, v2

    iget-object v2, p0, Lru/yandex/yandexmapkit/map/scale/ScaleView;->c:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/MapController;->getMapModel()Lru/yandex/yandexmapkit/MapModel;

    move-result-object v2

    invoke-virtual {v2}, Lru/yandex/yandexmapkit/MapModel;->getY()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lru/yandex/yandexmapkit/utils/CoordConversion;->getDistanceXY(JJ)D

    move-result-wide v0

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    div-double/2addr v0, v4

    :cond_0
    iget-object v2, p0, Lru/yandex/yandexmapkit/map/scale/ScaleView;->a:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide v2, 0x408f400000000000L    # 1000.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    iget-object v2, p0, Lru/yandex/yandexmapkit/map/scale/ScaleView;->a:Ljava/lang/StringBuilder;

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v3

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/scale/ScaleView;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/yandex/yandexmapkit/map/scale/ScaleView;->b:Landroid/content/Context;

    sget v2, Lru/yandex/yandexmapkit/R$string;->ymk_meters_short:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    const-wide v4, 0x40c3880000000000L    # 10000.0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_2

    iget-object v4, p0, Lru/yandex/yandexmapkit/map/scale/ScaleView;->a:Ljava/lang/StringBuilder;

    div-double v5, v0, v2

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lru/yandex/yandexmapkit/map/scale/ScaleView;->a:Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lru/yandex/yandexmapkit/map/scale/ScaleView;->a:Ljava/lang/StringBuilder;

    rem-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    :goto_1
    div-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/scale/ScaleView;->a:Ljava/lang/StringBuilder;

    :goto_2
    iget-object v1, p0, Lru/yandex/yandexmapkit/map/scale/ScaleView;->b:Landroid/content/Context;

    sget v2, Lru/yandex/yandexmapkit/R$string;->ymk_kilometers_short:I

    goto :goto_0

    :cond_2
    const-wide v6, 0x40f86a0000000000L    # 100000.0

    cmpg-double v8, v0, v6

    if-gez v8, :cond_3

    iget-object v4, p0, Lru/yandex/yandexmapkit/map/scale/ScaleView;->a:Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lru/yandex/yandexmapkit/map/scale/ScaleView;->a:Ljava/lang/StringBuilder;

    div-double/2addr v0, v4

    double-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/scale/ScaleView;->a:Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lru/yandex/yandexmapkit/map/scale/ScaleView;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/map/scale/ScaleView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/scale/ScaleView;->c:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {v0}, Lru/yandex/yandexmapkit/MapController;->getMapView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lru/yandex/bp;

    invoke-direct {v1, p0}, Lru/yandex/bp;-><init>(Lru/yandex/yandexmapkit/map/scale/ScaleView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Lru/yandex/yandexmapkit/MapController;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/yandexmapkit/map/scale/ScaleView;->c:Lru/yandex/yandexmapkit/MapController;

    invoke-virtual {p1, p0}, Lru/yandex/yandexmapkit/MapController;->addMapListener(Lru/yandex/yandexmapkit/map/OnMapListener;)V

    invoke-direct {p0}, Lru/yandex/yandexmapkit/map/scale/ScaleView;->a()V

    return-void
.end method

.method public onMapActionEvent(Lru/yandex/yandexmapkit/map/MapEvent;)V
    .locals 0

    invoke-virtual {p1}, Lru/yandex/yandexmapkit/map/MapEvent;->getMsg()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lru/yandex/yandexmapkit/map/scale/ScaleView;->a()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
