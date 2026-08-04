.class public Lorg/osmdroid/bonuspack/utils/BonusPackHelper;
.super Ljava/lang/Object;
.source "BonusPackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/bonuspack/utils/BonusPackHelper$FlushedInputStream;
    }
.end annotation


# static fields
.field public static final DEFAULT_USER_AGENT:Ljava/lang/String; = "OsmBonusPack/1"

.field public static final LOG_TAG:Ljava/lang/String; = "BONUSPACK"

.field public static final UNDEFINED_RES_ID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneBoundingBox(Lorg/osmdroid/util/BoundingBox;)Lorg/osmdroid/util/BoundingBox;
    .locals 10

    .line 38
    new-instance v9, Lorg/osmdroid/util/BoundingBox;

    .line 39
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v1

    .line 40
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v3

    .line 41
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v5

    .line 42
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v9
.end method

.method public static concatBoundingBox(Lorg/osmdroid/util/BoundingBox;Lorg/osmdroid/util/BoundingBox;)Lorg/osmdroid/util/BoundingBox;
    .locals 10

    .line 47
    new-instance v9, Lorg/osmdroid/util/BoundingBox;

    .line 48
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 49
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 50
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 51
    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v7

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide p0

    invoke-static {v7, v8, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    return-object v9
.end method

.method public static isEmulator()Z
    .locals 2

    .line 34
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "google_sdk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "sdk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    .line 92
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    if-nez p0, :cond_0

    return-object v0

    .line 95
    :cond_0
    new-instance v1, Lorg/osmdroid/bonuspack/utils/BonusPackHelper$FlushedInputStream;

    invoke-direct {v1, p0}, Lorg/osmdroid/bonuspack/utils/BonusPackHelper$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static parseStringMapResource(Landroid/content/Context;I)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 146
    new-instance p1, Ljava/util/HashMap;

    array-length v0, p0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 147
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    const/4 v4, 0x2

    const-string v5, "\\|"

    .line 148
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 149
    aget-object v4, v3, v1

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private static readStream(Lorg/osmdroid/bonuspack/utils/HttpConnection;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/utils/HttpConnection;->getContentAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static requestStringFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-static {p0, v0}, Lorg/osmdroid/bonuspack/utils/BonusPackHelper;->requestStringFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static requestStringFromUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 67
    new-instance v0, Lorg/osmdroid/bonuspack/utils/HttpConnection;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/utils/HttpConnection;-><init>()V

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {v0, p1}, Lorg/osmdroid/bonuspack/utils/HttpConnection;->setUserAgent(Ljava/lang/String;)V

    .line 70
    :cond_0
    invoke-virtual {v0, p0}, Lorg/osmdroid/bonuspack/utils/HttpConnection;->doGet(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Lorg/osmdroid/bonuspack/utils/HttpConnection;->getContentAsString()Ljava/lang/String;

    move-result-object p0

    .line 72
    invoke-virtual {v0}, Lorg/osmdroid/bonuspack/utils/HttpConnection;->close()V

    return-object p0
.end method
