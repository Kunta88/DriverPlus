.class public Lcom/otaliastudios/cameraview/size/AspectRatio;
.super Ljava/lang/Object;
.source "AspectRatio.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/otaliastudios/cameraview/size/AspectRatio;",
        ">;"
    }
.end annotation


# static fields
.field static final sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/otaliastudios/cameraview/size/AspectRatio;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mX:I

.field private final mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/otaliastudios/cameraview/size/AspectRatio;->sCache:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/otaliastudios/cameraview/size/AspectRatio;->mX:I

    .line 71
    iput p2, p0, Lcom/otaliastudios/cameraview/size/AspectRatio;->mY:I

    return-void
.end method

.method private static gcd(II)I
    .locals 1

    :goto_0
    move v0, p1

    move p1, p0

    move p0, v0

    if-eqz p0, :cond_0

    .line 138
    rem-int/2addr p1, p0

    goto :goto_0

    :cond_0
    return p1
.end method

.method public static of(II)Lcom/otaliastudios/cameraview/size/AspectRatio;
    .locals 3

    .line 35
    invoke-static {p0, p1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->gcd(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 36
    div-int/2addr p0, v0

    :cond_0
    if-lez v0, :cond_1

    .line 37
    div-int/2addr p1, v0

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/otaliastudios/cameraview/size/AspectRatio;->sCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/otaliastudios/cameraview/size/AspectRatio;

    if-nez v2, :cond_2

    .line 41
    new-instance v2, Lcom/otaliastudios/cameraview/size/AspectRatio;

    invoke-direct {v2, p0, p1}, Lcom/otaliastudios/cameraview/size/AspectRatio;-><init>(II)V

    .line 42
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v2
.end method

.method public static of(Lcom/otaliastudios/cameraview/size/Size;)Lcom/otaliastudios/cameraview/size/AspectRatio;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/size/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/size/Size;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->of(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/otaliastudios/cameraview/size/AspectRatio;
    .locals 2

    const-string v0, ":"

    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 58
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 61
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 62
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 63
    invoke-static {v0, p0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->of(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object p0

    return-object p0

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "Illegal AspectRatio string. Must be x:y"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public compareTo(Lcom/otaliastudios/cameraview/size/AspectRatio;)I
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v0

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lcom/otaliastudios/cameraview/size/AspectRatio;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->compareTo(Lcom/otaliastudios/cameraview/size/AspectRatio;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 98
    :cond_1
    instance-of v2, p1, Lcom/otaliastudios/cameraview/size/AspectRatio;

    if-eqz v2, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v2

    check-cast p1, Lcom/otaliastudios/cameraview/size/AspectRatio;

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result p1

    cmpl-float p1, v2, p1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public flip()Lcom/otaliastudios/cameraview/size/AspectRatio;
    .locals 2

    .line 131
    iget v0, p0, Lcom/otaliastudios/cameraview/size/AspectRatio;->mY:I

    iget v1, p0, Lcom/otaliastudios/cameraview/size/AspectRatio;->mX:I

    invoke-static {v0, v1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->of(II)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object v0

    return-object v0
.end method

.method public getX()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/otaliastudios/cameraview/size/AspectRatio;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/otaliastudios/cameraview/size/AspectRatio;->mY:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public matches(Lcom/otaliastudios/cameraview/size/Size;)Z
    .locals 0

    .line 83
    invoke-static {p1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->of(Lcom/otaliastudios/cameraview/size/Size;)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public matches(Lcom/otaliastudios/cameraview/size/Size;F)Z
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result v0

    invoke-static {p1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->of(Lcom/otaliastudios/cameraview/size/Size;)Lcom/otaliastudios/cameraview/size/AspectRatio;

    move-result-object p1

    invoke-virtual {p1}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toFloat()F
    .locals 2

    .line 111
    iget v0, p0, Lcom/otaliastudios/cameraview/size/AspectRatio;->mX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/otaliastudios/cameraview/size/AspectRatio;->mY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/otaliastudios/cameraview/size/AspectRatio;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/otaliastudios/cameraview/size/AspectRatio;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
