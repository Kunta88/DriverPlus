.class public Lcom/otaliastudios/cameraview/size/SizeSelectors;
.super Ljava/lang/Object;
.source "SizeSelectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/size/SizeSelectors$OrSelector;,
        Lcom/otaliastudios/cameraview/size/SizeSelectors$AndSelector;,
        Lcom/otaliastudios/cameraview/size/SizeSelectors$FilterSelector;,
        Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs and([Lcom/otaliastudios/cameraview/size/SizeSelector;)Lcom/otaliastudios/cameraview/size/SizeSelector;
    .locals 2

    .line 213
    new-instance v0, Lcom/otaliastudios/cameraview/size/SizeSelectors$AndSelector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/otaliastudios/cameraview/size/SizeSelectors$AndSelector;-><init>([Lcom/otaliastudios/cameraview/size/SizeSelector;Lcom/otaliastudios/cameraview/size/SizeSelectors$1;)V

    return-object v0
.end method

.method public static aspectRatio(Lcom/otaliastudios/cameraview/size/AspectRatio;F)Lcom/otaliastudios/cameraview/size/SizeSelector;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/size/AspectRatio;->toFloat()F

    move-result p0

    .line 117
    new-instance v0, Lcom/otaliastudios/cameraview/size/SizeSelectors$5;

    invoke-direct {v0, p0, p1}, Lcom/otaliastudios/cameraview/size/SizeSelectors$5;-><init>(FF)V

    invoke-static {v0}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->withFilter(Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object p0

    return-object p0
.end method

.method public static biggest()Lcom/otaliastudios/cameraview/size/SizeSelector;
    .locals 1

    .line 135
    new-instance v0, Lcom/otaliastudios/cameraview/size/SizeSelectors$6;

    invoke-direct {v0}, Lcom/otaliastudios/cameraview/size/SizeSelectors$6;-><init>()V

    return-object v0
.end method

.method public static maxArea(I)Lcom/otaliastudios/cameraview/size/SizeSelector;
    .locals 1

    .line 175
    new-instance v0, Lcom/otaliastudios/cameraview/size/SizeSelectors$8;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/size/SizeSelectors$8;-><init>(I)V

    invoke-static {v0}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->withFilter(Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object p0

    return-object p0
.end method

.method public static maxHeight(I)Lcom/otaliastudios/cameraview/size/SizeSelector;
    .locals 1

    .line 79
    new-instance v0, Lcom/otaliastudios/cameraview/size/SizeSelectors$3;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/size/SizeSelectors$3;-><init>(I)V

    invoke-static {v0}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->withFilter(Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object p0

    return-object p0
.end method

.method public static maxWidth(I)Lcom/otaliastudios/cameraview/size/SizeSelector;
    .locals 1

    .line 44
    new-instance v0, Lcom/otaliastudios/cameraview/size/SizeSelectors$1;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/size/SizeSelectors$1;-><init>(I)V

    invoke-static {v0}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->withFilter(Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object p0

    return-object p0
.end method

.method public static minArea(I)Lcom/otaliastudios/cameraview/size/SizeSelector;
    .locals 1

    .line 193
    new-instance v0, Lcom/otaliastudios/cameraview/size/SizeSelectors$9;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/size/SizeSelectors$9;-><init>(I)V

    invoke-static {v0}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->withFilter(Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object p0

    return-object p0
.end method

.method public static minHeight(I)Lcom/otaliastudios/cameraview/size/SizeSelector;
    .locals 1

    .line 96
    new-instance v0, Lcom/otaliastudios/cameraview/size/SizeSelectors$4;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/size/SizeSelectors$4;-><init>(I)V

    invoke-static {v0}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->withFilter(Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object p0

    return-object p0
.end method

.method public static minWidth(I)Lcom/otaliastudios/cameraview/size/SizeSelector;
    .locals 1

    .line 61
    new-instance v0, Lcom/otaliastudios/cameraview/size/SizeSelectors$2;

    invoke-direct {v0, p0}, Lcom/otaliastudios/cameraview/size/SizeSelectors$2;-><init>(I)V

    invoke-static {v0}, Lcom/otaliastudios/cameraview/size/SizeSelectors;->withFilter(Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;)Lcom/otaliastudios/cameraview/size/SizeSelector;

    move-result-object p0

    return-object p0
.end method

.method public static varargs or([Lcom/otaliastudios/cameraview/size/SizeSelector;)Lcom/otaliastudios/cameraview/size/SizeSelector;
    .locals 2

    .line 226
    new-instance v0, Lcom/otaliastudios/cameraview/size/SizeSelectors$OrSelector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/otaliastudios/cameraview/size/SizeSelectors$OrSelector;-><init>([Lcom/otaliastudios/cameraview/size/SizeSelector;Lcom/otaliastudios/cameraview/size/SizeSelectors$1;)V

    return-object v0
.end method

.method public static smallest()Lcom/otaliastudios/cameraview/size/SizeSelector;
    .locals 1

    .line 155
    new-instance v0, Lcom/otaliastudios/cameraview/size/SizeSelectors$7;

    invoke-direct {v0}, Lcom/otaliastudios/cameraview/size/SizeSelectors$7;-><init>()V

    return-object v0
.end method

.method public static withFilter(Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;)Lcom/otaliastudios/cameraview/size/SizeSelector;
    .locals 2

    .line 32
    new-instance v0, Lcom/otaliastudios/cameraview/size/SizeSelectors$FilterSelector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/otaliastudios/cameraview/size/SizeSelectors$FilterSelector;-><init>(Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;Lcom/otaliastudios/cameraview/size/SizeSelectors$1;)V

    return-object v0
.end method
