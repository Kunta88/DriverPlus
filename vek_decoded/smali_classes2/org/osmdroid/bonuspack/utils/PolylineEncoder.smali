.class public Lorg/osmdroid/bonuspack/utils/PolylineEncoder;
.super Ljava/lang/Object;
.source "PolylineEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;IZ)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    div-int/lit8 v2, v0, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v3, v0, :cond_7

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    add-int/lit8 v9, v3, 0x1

    .line 71
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x3f

    and-int/lit8 v10, v3, 0x1f

    shl-int/2addr v10, v8

    or-int/2addr v7, v10

    add-int/lit8 v8, v8, 0x5

    const/16 v10, 0x20

    if-ge v3, v10, :cond_6

    and-int/lit8 v3, v7, 0x1

    if-eqz v3, :cond_0

    shr-int/lit8 v3, v7, 0x1

    xor-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_0
    shr-int/lit8 v3, v7, 0x1

    :goto_2
    add-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v8, v9, 0x1

    .line 80
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x3f

    and-int/lit8 v11, v9, 0x1f

    shl-int/2addr v11, v7

    or-int/2addr v4, v11

    add-int/lit8 v7, v7, 0x5

    if-ge v9, v10, :cond_5

    and-int/lit8 v7, v4, 0x1

    shr-int/lit8 v4, v4, 0x1

    if-eqz v7, :cond_1

    xor-int/lit8 v4, v4, -0x1

    :cond_1
    add-int/2addr v5, v4

    if-eqz p2, :cond_4

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_4
    add-int/lit8 v9, v8, 0x1

    .line 90
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x3f

    and-int/lit8 v11, v8, 0x1f

    shl-int/2addr v11, v7

    or-int/2addr v4, v11

    add-int/lit8 v7, v7, 0x5

    if-ge v8, v10, :cond_3

    and-int/lit8 v7, v4, 0x1

    shr-int/lit8 v4, v4, 0x1

    if-eqz v7, :cond_2

    xor-int/lit8 v4, v4, -0x1

    :cond_2
    add-int/2addr v6, v4

    move v8, v9

    goto :goto_5

    :cond_3
    move v8, v9

    goto :goto_4

    .line 98
    :cond_4
    :goto_5
    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    mul-int v7, v3, p1

    mul-int v9, v5, p1

    div-int/lit8 v10, v6, 0x64

    invoke-direct {v4, v7, v9, v10}, Lorg/osmdroid/util/GeoPoint;-><init>(III)V

    .line 99
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v3

    move v3, v8

    goto :goto_0

    :cond_5
    move v9, v8

    goto :goto_3

    :cond_6
    move v3, v9

    goto :goto_1

    :cond_7
    return-object v1
.end method

.method public static encode(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/util/GeoPoint;

    .line 43
    invoke-virtual {v3}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v4

    div-int/2addr v4, p1

    .line 44
    invoke-virtual {v3}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v3

    div-int/2addr v3, p1

    sub-int v1, v4, v1

    .line 45
    invoke-static {v1}, Lorg/osmdroid/bonuspack/utils/PolylineEncoder;->encodeSignedNumber(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    sub-int v1, v3, v2

    .line 46
    invoke-static {v1}, Lorg/osmdroid/bonuspack/utils/PolylineEncoder;->encodeSignedNumber(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    move v2, v3

    move v1, v4

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encodeNumber(I)Ljava/lang/StringBuffer;
    .locals 3

    .line 22
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    and-int/lit8 v2, p0, 0x1f

    or-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3f

    int-to-char v1, v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 p0, p0, 0x5

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x3f

    int-to-char p0, p0

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object v0
.end method

.method private static encodeSignedNumber(I)Ljava/lang/StringBuffer;
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    if-gez p0, :cond_0

    xor-int/lit8 v0, v0, -0x1

    .line 18
    :cond_0
    invoke-static {v0}, Lorg/osmdroid/bonuspack/utils/PolylineEncoder;->encodeNumber(I)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method
