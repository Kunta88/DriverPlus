.class public Lcom/txdriver/ui/fragment/map/Item;
.super Ljava/lang/Object;
.source "Item.java"


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mPoint:Lcom/txdriver/ui/fragment/map/Point;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/txdriver/ui/fragment/map/Point;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/txdriver/ui/fragment/map/Item;->mTitle:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/txdriver/ui/fragment/map/Item;->mPoint:Lcom/txdriver/ui/fragment/map/Point;

    .line 16
    iput-object p3, p0, Lcom/txdriver/ui/fragment/map/Item;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 30
    :cond_0
    instance-of v1, p1, Lcom/txdriver/ui/fragment/map/Item;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 32
    :cond_1
    check-cast p1, Lcom/txdriver/ui/fragment/map/Item;

    .line 34
    iget-object v1, p0, Lcom/txdriver/ui/fragment/map/Item;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/txdriver/ui/fragment/map/Item;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/txdriver/ui/fragment/map/Item;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    :goto_0
    return v2

    .line 36
    :cond_3
    iget-object v1, p0, Lcom/txdriver/ui/fragment/map/Item;->mPoint:Lcom/txdriver/ui/fragment/map/Point;

    iget-object v3, p1, Lcom/txdriver/ui/fragment/map/Item;->mPoint:Lcom/txdriver/ui/fragment/map/Point;

    invoke-virtual {v1, v3}, Lcom/txdriver/ui/fragment/map/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 37
    :cond_4
    iget-object v1, p0, Lcom/txdriver/ui/fragment/map/Item;->mTitle:Ljava/lang/String;

    iget-object p1, p1, Lcom/txdriver/ui/fragment/map/Item;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/Item;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPoint()Lcom/txdriver/ui/fragment/map/Point;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/Item;->mPoint:Lcom/txdriver/ui/fragment/map/Point;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/Item;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/txdriver/ui/fragment/map/Item;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 45
    iget-object v1, p0, Lcom/txdriver/ui/fragment/map/Item;->mPoint:Lcom/txdriver/ui/fragment/map/Point;

    invoke-virtual {v1}, Lcom/txdriver/ui/fragment/map/Point;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 46
    iget-object v1, p0, Lcom/txdriver/ui/fragment/map/Item;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/txdriver/ui/fragment/map/Item;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setPoint(Lcom/txdriver/ui/fragment/map/Point;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/txdriver/ui/fragment/map/Item;->mPoint:Lcom/txdriver/ui/fragment/map/Point;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/txdriver/ui/fragment/map/Item;->mTitle:Ljava/lang/String;

    return-void
.end method
