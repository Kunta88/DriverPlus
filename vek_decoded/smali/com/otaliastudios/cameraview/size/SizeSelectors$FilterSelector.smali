.class Lcom/otaliastudios/cameraview/size/SizeSelectors$FilterSelector;
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
    name = "FilterSelector"
.end annotation


# instance fields
.field private constraint:Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;


# direct methods
.method private constructor <init>(Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;)V
    .locals 0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lcom/otaliastudios/cameraview/size/SizeSelectors$FilterSelector;->constraint:Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;Lcom/otaliastudios/cameraview/size/SizeSelectors$1;)V
    .locals 0

    .line 232
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/size/SizeSelectors$FilterSelector;-><init>(Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;)V

    return-void
.end method


# virtual methods
.method public select(Ljava/util/List;)Ljava/util/List;
    .locals 3
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

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/cameraview/size/Size;

    .line 245
    iget-object v2, p0, Lcom/otaliastudios/cameraview/size/SizeSelectors$FilterSelector;->constraint:Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;

    invoke-interface {v2, v1}, Lcom/otaliastudios/cameraview/size/SizeSelectors$Filter;->accepts(Lcom/otaliastudios/cameraview/size/Size;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
