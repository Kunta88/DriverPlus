.class Lcom/otaliastudios/cameraview/size/SizeSelectors$AndSelector;
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
    name = "AndSelector"
.end annotation


# instance fields
.field private values:[Lcom/otaliastudios/cameraview/size/SizeSelector;


# direct methods
.method private varargs constructor <init>([Lcom/otaliastudios/cameraview/size/SizeSelector;)V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/otaliastudios/cameraview/size/SizeSelectors$AndSelector;->values:[Lcom/otaliastudios/cameraview/size/SizeSelector;

    return-void
.end method

.method synthetic constructor <init>([Lcom/otaliastudios/cameraview/size/SizeSelector;Lcom/otaliastudios/cameraview/size/SizeSelectors$1;)V
    .locals 0

    .line 253
    invoke-direct {p0, p1}, Lcom/otaliastudios/cameraview/size/SizeSelectors$AndSelector;-><init>([Lcom/otaliastudios/cameraview/size/SizeSelector;)V

    return-void
.end method


# virtual methods
.method public select(Ljava/util/List;)Ljava/util/List;
    .locals 4
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

    .line 265
    iget-object v0, p0, Lcom/otaliastudios/cameraview/size/SizeSelectors$AndSelector;->values:[Lcom/otaliastudios/cameraview/size/SizeSelector;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 266
    invoke-interface {v3, p1}, Lcom/otaliastudios/cameraview/size/SizeSelector;->select(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
