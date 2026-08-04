.class public final Lcom/otaliastudios/opengl/extensions/MatrixKt;
.super Ljava/lang/Object;
.source "Matrix.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0010\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0002\u001a\n\u0010\u0003\u001a\u00020\u0002*\u00020\u0002\u001a\n\u0010\u0004\u001a\u00020\u0002*\u00020\u0002\u001a*\u0010\u0005\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007\u001a\u0012\u0010\u000b\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u0012\u0010\u000c\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u0012\u0010\r\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007\u001a(\u0010\u000e\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007\u001a\u0012\u0010\u000f\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0007\u001a\u0012\u0010\u0010\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0007\u001a\u0012\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0007\u001a(\u0010\u0012\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007\u001a\u0012\u0010\u0013\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0007\u001a\u0012\u0010\u0015\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0007\u001a\u0012\u0010\u0016\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0007\u00a8\u0006\u0017"
    }
    d2 = {
        "checkSize",
        "",
        "",
        "clear",
        "makeIdentity",
        "rotate",
        "angle",
        "",
        "x",
        "y",
        "z",
        "rotateX",
        "rotateY",
        "rotateZ",
        "scale",
        "scaleX",
        "scaleY",
        "scaleZ",
        "translate",
        "translateX",
        "translation",
        "translateY",
        "translateZ",
        "egloo-metadata_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private static final checkSize([F)V
    .locals 1

    .line 9
    array-length p0, p0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Need a 16 values matrix."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public static final clear([F)[F
    .locals 1

    const-string v0, "$this$clear"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {p0}, Lcom/otaliastudios/opengl/extensions/MatrixKt;->makeIdentity([F)[F

    move-result-object p0

    return-object p0
.end method

.method public static final makeIdentity([F)[F
    .locals 1

    const-string v0, "$this$makeIdentity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p0}, Lcom/otaliastudios/opengl/extensions/MatrixKt;->checkSize([F)V

    .line 14
    invoke-static {p0}, Lcom/otaliastudios/opengl/internal/MiscKt;->matrixMakeIdentity([F)V

    return-object p0
.end method

.method public static final rotate([FFFFF)[F
    .locals 1

    const-string v0, "$this$rotate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {p0}, Lcom/otaliastudios/opengl/extensions/MatrixKt;->checkSize([F)V

    .line 64
    invoke-static {p0, p1, p2, p3, p4}, Lcom/otaliastudios/opengl/internal/MiscKt;->matrixRotate([FFFFF)V

    return-object p0
.end method

.method public static final rotateX([FF)[F
    .locals 2

    const-string v0, "$this$rotateX"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 69
    invoke-static {p0, p1, v0, v1, v1}, Lcom/otaliastudios/opengl/extensions/MatrixKt;->rotate([FFFFF)[F

    move-result-object p0

    return-object p0
.end method

.method public static final rotateY([FF)[F
    .locals 2

    const-string v0, "$this$rotateY"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 74
    invoke-static {p0, p1, v0, v1, v0}, Lcom/otaliastudios/opengl/extensions/MatrixKt;->rotate([FFFFF)[F

    move-result-object p0

    return-object p0
.end method

.method public static final rotateZ([FF)[F
    .locals 2

    const-string v0, "$this$rotateZ"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 79
    invoke-static {p0, p1, v0, v0, v1}, Lcom/otaliastudios/opengl/extensions/MatrixKt;->rotate([FFFFF)[F

    move-result-object p0

    return-object p0
.end method

.method public static final scale([FFFF)[F
    .locals 1

    const-string v0, "$this$scale"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p0}, Lcom/otaliastudios/opengl/extensions/MatrixKt;->checkSize([F)V

    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/otaliastudios/opengl/internal/MiscKt;->matrixScale([FFFF)V

    return-object p0
.end method

.method public static synthetic scale$default([FFFFILjava/lang/Object;)[F
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p5, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/high16 p3, 0x3f800000    # 1.0f

    .line 43
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/otaliastudios/opengl/extensions/MatrixKt;->scale([FFFF)[F

    move-result-object p0

    return-object p0
.end method

.method public static final scaleX([FF)[F
    .locals 7

    const-string v0, "$this$scaleX"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    .line 50
    invoke-static/range {v1 .. v6}, Lcom/otaliastudios/opengl/extensions/MatrixKt;->scale$default([FFFFILjava/lang/Object;)[F

    move-result-object p0

    return-object p0
.end method

.method public static final scaleY([FF)[F
    .locals 7

    const-string v0, "$this$scaleY"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    .line 54
    invoke-static/range {v1 .. v6}, Lcom/otaliastudios/opengl/extensions/MatrixKt;->scale$default([FFFFILjava/lang/Object;)[F

    move-result-object p0

    return-object p0
.end method

.method public static final scaleZ([FF)[F
    .locals 7

    const-string v0, "$this$scaleZ"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    .line 59
    invoke-static/range {v1 .. v6}, Lcom/otaliastudios/opengl/extensions/MatrixKt;->scale$default([FFFFILjava/lang/Object;)[F

    move-result-object p0

    return-object p0
.end method

.method public static final translate([FFFF)[F
    .locals 1

    const-string v0, "$this$translate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {p0}, Lcom/otaliastudios/opengl/extensions/MatrixKt;->checkSize([F)V

    .line 24
    invoke-static {p0, p1, p2, p3}, Lcom/otaliastudios/opengl/internal/MiscKt;->matrixTranslate([FFFF)V

    return-object p0
.end method

.method public static synthetic translate$default([FFFFILjava/lang/Object;)[F
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 22
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/otaliastudios/opengl/extensions/MatrixKt;->translate([FFFF)[F

    move-result-object p0

    return-object p0
.end method

.method public static final translateX([FF)[F
    .locals 7

    const-string v0, "$this$translateX"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    .line 30
    invoke-static/range {v1 .. v6}, Lcom/otaliastudios/opengl/extensions/MatrixKt;->translate$default([FFFFILjava/lang/Object;)[F

    move-result-object p0

    return-object p0
.end method

.method public static final translateY([FF)[F
    .locals 7

    const-string v0, "$this$translateY"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    .line 35
    invoke-static/range {v1 .. v6}, Lcom/otaliastudios/opengl/extensions/MatrixKt;->translate$default([FFFFILjava/lang/Object;)[F

    move-result-object p0

    return-object p0
.end method

.method public static final translateZ([FF)[F
    .locals 7

    const-string v0, "$this$translateZ"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    .line 40
    invoke-static/range {v1 .. v6}, Lcom/otaliastudios/opengl/extensions/MatrixKt;->translate$default([FFFFILjava/lang/Object;)[F

    move-result-object p0

    return-object p0
.end method
