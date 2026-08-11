.class public final Lru/yandex/bb;
.super Ljava/lang/Object;


# instance fields
.field final a:F

.field final b:F

.field final c:I

.field final d:I

.field final e:F

.field final f:F

.field final g:F

.field final h:F

.field final i:F

.field final j:F

.field final k:F

.field final l:Z

.field final m:I


# direct methods
.method constructor <init>(FFIFFZIFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/yandex/bb;->a:F

    iput p2, p0, Lru/yandex/bb;->b:F

    iput-boolean p6, p0, Lru/yandex/bb;->l:Z

    iput p3, p0, Lru/yandex/bb;->c:I

    iput p4, p0, Lru/yandex/bb;->e:F

    iput p5, p0, Lru/yandex/bb;->k:F

    iput p7, p0, Lru/yandex/bb;->d:I

    iput p8, p0, Lru/yandex/bb;->f:F

    iput p9, p0, Lru/yandex/bb;->g:F

    iput p10, p0, Lru/yandex/bb;->h:F

    iput p11, p0, Lru/yandex/bb;->i:F

    iput p12, p0, Lru/yandex/bb;->j:F

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p4, p1

    invoke-static {p4}, Lru/yandex/yandexmapkit/utils/Utils;->a(F)I

    move-result p1

    shr-int/lit8 p1, p1, 0x1

    iput p1, p0, Lru/yandex/bb;->m:I

    return-void
.end method
