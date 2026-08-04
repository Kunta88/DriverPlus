.class public Lru/yandex/yandexmapkit/map/jams/JamsButton;
.super Landroid/widget/Button;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:[Landroid/graphics/drawable/Drawable;

.field public b:I

.field public c:I

.field public d:Landroid/os/Handler;

.field public e:Z

.field private f:I

.field private g:Lru/yandex/be;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->c:I

    new-instance v0, Lru/yandex/bg;

    invoke-direct {v0, p0}, Lru/yandex/bg;-><init>(Lru/yandex/yandexmapkit/map/jams/JamsButton;)V

    iput-object v0, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->h:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->d:Landroid/os/Handler;

    iput-boolean p2, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->e:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->a:[Landroid/graphics/drawable/Drawable;

    sget v1, Lru/yandex/yandexmapkit/R$drawable;->ymk_sgrayvga:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, p2

    iget-object p2, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->a:[Landroid/graphics/drawable/Drawable;

    sget v0, Lru/yandex/yandexmapkit/R$drawable;->ymk_sredvga:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    iget-object p2, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->a:[Landroid/graphics/drawable/Drawable;

    sget v0, Lru/yandex/yandexmapkit/R$drawable;->ymk_syellowvga:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p2, v1

    iget-object p2, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->a:[Landroid/graphics/drawable/Drawable;

    sget v0, Lru/yandex/yandexmapkit/R$drawable;->ymk_sgreenvga:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p2, v1

    iget-object p2, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->a:[Landroid/graphics/drawable/Drawable;

    sget v0, Lru/yandex/yandexmapkit/R$drawable;->ymk_tlight_no_level_inactive:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p2, v1

    iget-object p2, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->a:[Landroid/graphics/drawable/Drawable;

    sget v0, Lru/yandex/yandexmapkit/R$drawable;->ymk_tlight_loading:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p2, v1

    iget-object p2, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->a:[Landroid/graphics/drawable/Drawable;

    sget v0, Lru/yandex/yandexmapkit/R$drawable;->ymk_tlight_no_level_active:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x6

    aput-object p1, p2, v0

    const/4 p1, -0x2

    iput p1, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->b:I

    iput p1, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->f:I

    return-void
.end method

.method private a(II)V
    .locals 1

    if-lez p1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/map/jams/JamsButton;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lru/yandex/yandexmapkit/map/jams/JamsButton;->a()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->a:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p2

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/map/jams/JamsButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iput p1, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->f:I

    iput p2, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->b:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    iget-object v0, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->a:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    check-cast v0, Landroid/graphics/drawable/LevelListDrawable;

    const/4 v1, 0x1

    iput v1, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    iget-object v1, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->d:Landroid/os/Handler;

    iget-object v2, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->h:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->d:Landroid/os/Handler;

    iget-object v2, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->h:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2ee

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/map/jams/JamsButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lru/yandex/yandexmapkit/map/jams/JamsButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lru/yandex/be;)V
    .locals 0

    iput-object p1, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->g:Lru/yandex/be;

    return-void
.end method

.method public a(Lru/yandex/bh;)V
    .locals 5

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget v1, p1, Lru/yandex/bh;->c:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iget-object v2, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->g:Lru/yandex/be;

    invoke-virtual {v2}, Lru/yandex/be;->b()Z

    move-result v2

    iget-object v3, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->g:Lru/yandex/be;

    invoke-virtual {v3}, Lru/yandex/be;->c()Z

    move-result v3

    iget-object v4, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->g:Lru/yandex/be;

    invoke-virtual {v4}, Lru/yandex/be;->isVisible()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 p1, 0x4

    goto :goto_3

    :cond_1
    if-nez v2, :cond_4

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x6

    goto :goto_2

    :cond_3
    iget p1, p1, Lru/yandex/bh;->d:I

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x5

    :goto_2
    move v0, v1

    :goto_3
    iget v1, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->f:I

    if-ne v0, v1, :cond_5

    iget v1, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->b:I

    if-eq p1, v1, :cond_6

    :cond_5
    invoke-direct {p0, v0, p1}, Lru/yandex/yandexmapkit/map/jams/JamsButton;->a(II)V

    :cond_6
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->e:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->e:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->g:Lru/yandex/be;

    invoke-virtual {p1}, Lru/yandex/be;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->g:Lru/yandex/be;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/yandex/be;->setVisible(Z)V

    iget-object p1, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->a:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x4

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/map/jams/JamsButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Lru/yandex/yandexmapkit/map/jams/JamsButton;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object p1, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->g:Lru/yandex/be;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lru/yandex/be;->setVisible(Z)V

    iget p1, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->f:I

    iget v0, p0, Lru/yandex/yandexmapkit/map/jams/JamsButton;->b:I

    invoke-direct {p0, p1, v0}, Lru/yandex/yandexmapkit/map/jams/JamsButton;->a(II)V

    return-void
.end method
