.class Lcom/otaliastudios/cameraview/size/SizeSelectors$OrSelector;
.super Ljava/lang/Object;
.source "SizeSelectors.java"

# interfaces
.implements Lcom/otaliastudios/cameraview/size/SizeSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/cameraview/size/SizeSelectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OrSelector"
.end annotation


# instance fields
.field private values:[Lcom/otaliastudios/cameraview/size/SizeSelector;


# direct methods
.method private varargs constructor <init>([Lcom/otaliastudios/cameraview/size/SizeSelector;)V
    .locals 0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-object p1, p0, Lcom/otaliastudios/cameraview/size/SizeSelectors$OrSelector;->values:[Lcom/otaliastudios/cameraview/size/SizeSelector;

    return-void
.end method

.method synthetic constructor <init>([Lcom/otaliastudios/cameraview/size/SizeSelector;Lcom/otaliastudios/cameraview/size/SizeSelectors$1;)V
    .locals 0

    .line 272
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/size/SizeSelectors$OrSelector;-><init>([Lcom/otaliastudios/cameraview/size/SizeSelector;)V

    return-void
.end method


# virtual methods
.method public select(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/otaliastudios/cameraview/size/Size;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/otaliastudios/cameraview/size/Size;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/otaliastudios/cameraview/size/SizeSelectors$OrSelector;->values:[Lcom/otaliastudios/cameraview/size/SizeSelector;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    .line 285
    invoke-interface {v2, p1}, Lcom/otaliastudios/cameraview/size/SizeSelector;->select(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 286
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 290
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    return-object v2
.end method
