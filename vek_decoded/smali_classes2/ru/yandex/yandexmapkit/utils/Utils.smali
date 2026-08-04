.class public final Lru/yandex/yandexmapkit/utils/Utils;
.super Ljava/lang/Object;


# static fields
.field protected static final a:[Z

.field private static b:[I

.field private static final c:[F

.field private static final d:[F

.field private static e:I

.field private static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x100

    new-array v0, v0, [Z

    sput-object v0, Lru/yandex/yandexmapkit/utils/Utils;->a:[Z

    const/16 v0, 0x61

    :goto_0
    const/16 v1, 0x7a

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    sget-object v1, Lru/yandex/yandexmapkit/utils/Utils;->a:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    sget-object v1, Lru/yandex/yandexmapkit/utils/Utils;->a:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    sget-object v1, Lru/yandex/yandexmapkit/utils/Utils;->a:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Lru/yandex/yandexmapkit/utils/Utils;->a:[Z

    const/16 v1, 0x2d

    aput-boolean v2, v0, v1

    const/16 v1, 0x5f

    aput-boolean v2, v0, v1

    const/16 v1, 0x2e

    aput-boolean v2, v0, v1

    const/16 v1, 0x2a

    aput-boolean v2, v0, v1

    const/16 v1, 0x20

    aput-boolean v2, v0, v1

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lru/yandex/yandexmapkit/utils/Utils;->c:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lru/yandex/yandexmapkit/utils/Utils;->d:[F

    const/4 v0, 0x0

    sput v0, Lru/yandex/yandexmapkit/utils/Utils;->e:I

    const/4 v0, 0x0

    sput-object v0, Lru/yandex/yandexmapkit/utils/Utils;->f:Ljava/lang/String;

    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-class v1, Landroid/os/Build$VERSION;

    const-string v2, "SDK_INT"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x41200000    # 10.0f
        0x42c80000    # 100.0f
        0x447a0000    # 1000.0f
        0x461c4000    # 10000.0f
    .end array-data

    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3c23d70a    # 0.01f
        0x3a83126f    # 0.001f
        0x38d1b717    # 1.0E-4f
        0x3727c5ac    # 1.0E-5f
        0x358637bd    # 1.0E-6f
        0x33d6bf95    # 1.0E-7f
        0x322bcc77    # 1.0E-8f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native InvertBitmapNative([II)V
.end method

.method public static native InvertBitmapNative([SI)V
.end method

.method private static a(II)C
    .locals 2

    const/4 v0, 0x0

    if-ge p0, p1, :cond_3

    if-gez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-lt p1, v1, :cond_3

    const/16 v1, 0x24

    if-le p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 p1, 0xa

    if-ge p0, p1, :cond_2

    add-int/lit8 p0, p0, 0x30

    :goto_0
    int-to-char p0, p0

    return p0

    :cond_2
    add-int/lit8 p0, p0, 0x57

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static a(FF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method public static a([CII)F
    .locals 9

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    aget-char v1, p0, v0

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_1
    const/4 v1, 0x0

    aget-char v2, p0, p1

    const/16 v3, 0x2d

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_3

    const/16 v6, 0x2b

    if-ne v2, v6, :cond_4

    :cond_3
    add-int/lit8 p1, p1, 0x1

    :cond_4
    add-int/lit8 v2, v0, -0x1

    const/4 v6, 0x0

    :goto_3
    if-lt v2, p1, :cond_5

    aget-char v7, p0, v2

    add-int/lit8 v7, v7, -0x30

    int-to-float v7, v7

    sget-object v8, Lru/yandex/yandexmapkit/utils/Utils;->c:[F

    aget v8, v8, v6

    mul-float v7, v7, v8

    add-float/2addr v1, v7

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v6, v5

    goto :goto_3

    :cond_5
    add-int/2addr v0, v5

    :goto_4
    if-ge v0, p2, :cond_6

    aget-char p1, p0, v0

    add-int/lit8 p1, p1, -0x30

    int-to-float p1, p1

    sget-object v2, Lru/yandex/yandexmapkit/utils/Utils;->d:[F

    aget v2, v2, v4

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v4, v5

    goto :goto_4

    :cond_6
    if-eqz v3, :cond_7

    neg-float p0, v1

    return p0

    :cond_7
    return v1
.end method

.method public static a(F)I
    .locals 5

    float-to-int v0, p0

    const/4 v1, 0x0

    cmpl-float v2, p0, v1

    if-lez v2, :cond_0

    int-to-float v1, v0

    sub-float/2addr p0, v1

    float-to-double v1, p0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpl-double p0, v1, v3

    if-ltz p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    cmpg-float v1, p0, v1

    if-gez v1, :cond_1

    int-to-float v1, v0

    sub-float/2addr p0, v1

    float-to-double v1, p0

    const-wide/high16 v3, -0x4020000000000000L    # -0.5

    cmpg-double p0, v1, v3

    if-gtz p0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    return v0
.end method

.method public static a(I)I
    .locals 0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    neg-int p0, p0

    return p0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2

    sget v0, Lru/yandex/yandexmapkit/utils/Utils;->e:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    const-class v0, Landroid/util/DisplayMetrics;

    const-string v1, "densityDpi"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lru/yandex/yandexmapkit/utils/Utils;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/high16 v0, 0x43200000    # 160.0f

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    sput p0, Lru/yandex/yandexmapkit/utils/Utils;->e:I

    :cond_0
    :goto_0
    sget p0, Lru/yandex/yandexmapkit/utils/Utils;->e:I

    return p0
.end method

.method public static a([BI)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    add-int v2, p1, v0

    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v3, v0, 0x3

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    sget-object v2, Lru/yandex/cu;->a:[I

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v2

    invoke-static {v2, v1}, Lru/yandex/yandexmapkit/utils/Utils;->InvertBitmapNative([II)V

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This bitmap config is not supported for native invert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v1}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->array()[S

    move-result-object v2

    invoke-static {v2, v1}, Lru/yandex/yandexmapkit/utils/Utils;->InvertBitmapNative([SI)V

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lru/yandex/yandexmapkit/utils/Utils;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string v1, "MANUFACTURER"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    new-instance v1, Landroid/os/Build;

    invoke-direct {v1}, Landroid/os/Build;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lru/yandex/yandexmapkit/utils/Utils;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, "Unknown"

    sput-object v0, Lru/yandex/yandexmapkit/utils/Utils;->f:Ljava/lang/String;

    :goto_0
    sget-object v0, Lru/yandex/yandexmapkit/utils/Utils;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static a(D)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    double-to-int v1, p0

    invoke-static {v1}, Lru/yandex/yandexmapkit/utils/Utils;->a(I)I

    move-result v1

    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_0

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p0, v1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double p0, p0, v2

    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    add-double v4, p0, v2

    double-to-int v4, v4

    invoke-static {v4}, Lru/yandex/yandexmapkit/utils/Utils;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p0, v4

    add-double/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lru/yandex/yandexmapkit/utils/Utils;->b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lru/yandex/yandexmapkit/utils/Utils;->c([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static a(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/TimeZone;
    .locals 2

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/SimpleTimeZone;

    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;Z)Lru/yandex/yandexmapkit/utils/GeoPoint;
    .locals 4

    if-eqz p0, :cond_1

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v1, p0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, v1, v0}, Lru/yandex/yandexmapkit/utils/Utils;->a([CII)F

    move-result p1

    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lru/yandex/yandexmapkit/utils/Utils;->a([CII)F

    move-result p0

    :goto_0
    new-instance v0, Lru/yandex/yandexmapkit/utils/GeoPoint;

    float-to-double v1, p1

    float-to-double p0, p0

    invoke-direct {v0, v1, v2, p0, p1}, Lru/yandex/yandexmapkit/utils/GeoPoint;-><init>(DD)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(I[BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    array-length v2, p1

    if-ge v1, v2, :cond_0

    int-to-byte v2, p0

    aput-byte v2, p1, v1

    shr-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(III)Z
    .locals 1

    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/16 v0, 0x17

    if-ge p2, v0, :cond_0

    const/4 v0, 0x2

    shl-int p2, v0, p2

    if-ge p0, p2, :cond_0

    if-ge p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(IIII)Z
    .locals 2

    add-int/2addr p2, p0

    add-int/2addr p3, p1

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getSizeTile()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorScaleTile()F

    move-result v1

    mul-float v0, v0, v1

    int-to-float v1, p0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getSizeTile()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lru/yandex/yandexmapkit/map/Tile;->getFactorScaleTile()F

    move-result v1

    mul-float v0, v0, v1

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    if-lt p2, p0, :cond_0

    if-lez p2, :cond_2

    :cond_0
    if-lt p3, p1, :cond_1

    if-lez p3, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static a(IIIIII)Z
    .locals 0

    if-ge p0, p4, :cond_0

    add-int/2addr p0, p2

    if-le p0, p4, :cond_0

    if-ge p1, p5, :cond_0

    add-int/2addr p1, p3

    if-le p1, p5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(IIIIIIII)Z
    .locals 0

    add-int/2addr p6, p4

    if-ge p0, p6, :cond_0

    add-int/2addr p0, p2

    if-le p0, p4, :cond_0

    add-int/2addr p7, p5

    if-ge p1, p7, :cond_0

    add-int/2addr p1, p3

    if-le p1, p5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(JJJJJJJJ)Z
    .locals 5

    cmp-long v0, p8, p0

    if-gez v0, :cond_0

    add-long v0, p0, p4

    add-long v2, p8, p12

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    cmp-long v0, p2, p10

    if-lez v0, :cond_0

    add-long v0, p2, p6

    add-long v2, p10, p14

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Landroid/graphics/Rect;II)Z
    .locals 1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-lt v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-gt p1, p2, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-lt p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/io/InputStream;[BII)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-lez p3, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    :goto_0
    if-ge v1, p3, :cond_1

    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static a([B)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    const/16 v2, 0x8b

    if-ne p0, v2, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 4

    if-eqz p0, :cond_2

    const/16 v0, 0x400

    new-array v0, v0, [B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_1
    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    throw p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)[Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x2f

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p0, 0x0

    new-array v1, p0, [Ljava/io/File;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    new-instance p2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p3, Lru/yandex/ct;

    invoke-direct {p3, p1}, Lru/yandex/ct;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object p2

    array-length p3, p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_3

    aget-object v2, p2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object p2

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    const/4 p0, 0x0

    return-object p0

    :cond_5
    array-length p2, v1

    new-array p3, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p2, :cond_6

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return-object p3
.end method

.method public static b(Ljava/io/InputStream;[BII)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p0, :cond_4

    if-lez p3, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    return v0

    :cond_0
    :goto_0
    if-ge v1, p3, :cond_3

    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-eq v2, v0, :cond_1

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    return p3

    :cond_4
    return v0
.end method

.method public static b([BI)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    add-int v2, p1, v0

    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v3, v0, 0x3

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static b([B)J
    .locals 8

    sget-object v0, Lru/yandex/yandexmapkit/utils/Utils;->b:[I

    const/16 v1, 0xff

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/16 v0, 0x100

    new-array v0, v0, [I

    sput-object v0, Lru/yandex/yandexmapkit/utils/Utils;->b:[I

    const/4 v0, 0x0

    :goto_0
    if-gt v0, v1, :cond_2

    const/16 v3, 0x8

    move v4, v0

    :goto_1
    if-lez v3, :cond_1

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    ushr-int/lit8 v4, v4, 0x1

    if-ne v5, v6, :cond_0

    const v5, -0x12477ce0

    xor-int/2addr v4, v5

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lru/yandex/yandexmapkit/utils/Utils;->b:[I

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    array-length v0, p0

    const/4 v3, -0x1

    const/4 v4, -0x1

    :goto_2
    add-int/lit8 v5, v0, -0x1

    if-eqz v0, :cond_3

    ushr-int/lit8 v0, v4, 0x8

    sget-object v6, Lru/yandex/yandexmapkit/utils/Utils;->b:[I

    add-int/lit8 v7, v2, 0x1

    aget-byte v2, p0, v2

    xor-int/2addr v2, v4

    and-int/2addr v2, v1

    aget v2, v6, v2

    xor-int v4, v0, v2

    move v0, v5

    move v2, v7

    goto :goto_2

    :cond_3
    xor-int/lit8 p0, v4, -0x1

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static b(I[BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    array-length v2, p1

    if-ge v1, v2, :cond_0

    int-to-byte v2, p0

    aput-byte v2, p1, v1

    shr-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x401

    if-ne v2, v3, :cond_1

    const/16 v2, 0xa8

    :cond_1
    const/16 v3, 0x451

    if-ne v2, v3, :cond_2

    const/16 v2, 0xb8

    :cond_2
    const/16 v3, 0x409

    if-le v2, v3, :cond_3

    add-int/lit16 v2, v2, -0x350

    int-to-char v2, v2

    :cond_3
    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static c([B)[B
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lru/yandex/yandexmapkit/utils/Utils;->a:[Z

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_4

    aget-byte v3, p0, v2

    if-gez v3, :cond_1

    add-int/lit16 v3, v3, 0x100

    :cond_1
    aget-boolean v4, v0, v3

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    const/16 v3, 0x2b

    goto :goto_1

    :cond_2
    const/16 v4, 0x25

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lru/yandex/yandexmapkit/utils/Utils;->a(II)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v5}, Lru/yandex/yandexmapkit/utils/Utils;->a(II)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_3
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
