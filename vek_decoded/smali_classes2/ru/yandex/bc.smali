.class public final Lru/yandex/bc;
.super Lru/yandex/cw;


# instance fields
.field public final a:[[Lru/yandex/bb;

.field public final b:Ljava/util/TreeMap;

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lru/yandex/cw;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [[Lru/yandex/bb;

    iput-object v0, p0, Lru/yandex/bc;->a:[[Lru/yandex/bb;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lru/yandex/bc;->b:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "arrows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iput v3, v0, Lru/yandex/bc;->d:I

    return-void

    :cond_0
    const-string v2, "zoom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput v3, v0, Lru/yandex/bc;->d:I

    iget v1, v0, Lru/yandex/bc;->g:I

    iget-object v2, v0, Lru/yandex/bc;->a:[[Lru/yandex/bb;

    array-length v3, v2

    const/16 v4, 0x18

    if-le v1, v3, :cond_1

    iget-object v2, v0, Lru/yandex/bc;->b:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lru/yandex/bb;

    if-nez v2, :cond_3

    new-array v2, v4, [Lru/yandex/bb;

    iget-object v3, v0, Lru/yandex/bc;->b:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    aget-object v3, v2, v1

    if-nez v3, :cond_2

    new-array v3, v4, [Lru/yandex/bb;

    aput-object v3, v2, v1

    :cond_2
    aget-object v2, v2, v1

    :cond_3
    :goto_0
    iget v1, v0, Lru/yandex/bc;->h:I

    :goto_1
    iget v3, v0, Lru/yandex/bc;->i:I

    if-gt v1, v3, :cond_4

    new-instance v3, Lru/yandex/bb;

    iget v5, v0, Lru/yandex/bc;->e:F

    iget v6, v0, Lru/yandex/bc;->f:F

    iget v7, v0, Lru/yandex/bc;->j:I

    iget v8, v0, Lru/yandex/bc;->l:F

    iget v9, v0, Lru/yandex/bc;->m:F

    iget-boolean v10, v0, Lru/yandex/bc;->s:Z

    iget v11, v0, Lru/yandex/bc;->k:I

    iget v12, v0, Lru/yandex/bc;->n:F

    iget v13, v0, Lru/yandex/bc;->o:F

    iget v14, v0, Lru/yandex/bc;->p:F

    iget v15, v0, Lru/yandex/bc;->q:F

    iget v4, v0, Lru/yandex/bc;->r:F

    move/from16 v16, v4

    move-object v4, v3

    invoke-direct/range {v4 .. v16}, Lru/yandex/bb;-><init>(FFIFFZIFFFFF)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public a(Ljava/lang/String;Lru/yandex/cv;)V
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    iput v1, p0, Lru/yandex/bc;->c:I

    const-string v2, "style"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iput v3, p0, Lru/yandex/bc;->c:I

    :try_start_0
    const-string p1, "id"

    invoke-virtual {p2, p1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lru/yandex/bc;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/high16 p1, -0x40000000    # -2.0f

    :try_start_1
    const-string v1, "speed_from"

    invoke-virtual {p2, v1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lru/yandex/bc;->e:F

    goto :goto_0

    :cond_0
    iput p1, p0, Lru/yandex/bc;->e:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    iput p1, p0, Lru/yandex/bc;->e:F

    :goto_0
    :try_start_2
    const-string v1, "speed_to"

    invoke-virtual {p2, v1}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p0, Lru/yandex/bc;->f:F

    return-void

    :cond_1
    iput p1, p0, Lru/yandex/bc;->f:F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    iput p1, p0, Lru/yandex/bc;->f:F

    return-void

    :cond_2
    const-string v0, "zoom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lru/yandex/bc;->s:Z

    const/4 p1, 0x0

    iput p1, p0, Lru/yandex/bc;->m:F

    iput v2, p0, Lru/yandex/bc;->d:I

    iput v2, p0, Lru/yandex/bc;->c:I

    iput v1, p0, Lru/yandex/bc;->h:I

    const/16 p1, 0x17

    iput p1, p0, Lru/yandex/bc;->i:I

    :try_start_3
    const-string v0, "from"

    invoke-virtual {p2, v0}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lru/yandex/bc;->h:I

    const-string v0, "to"

    invoke-virtual {p2, v0}, Lru/yandex/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lru/yandex/bc;->i:I

    iget v0, p0, Lru/yandex/bc;->h:I

    if-gez v0, :cond_3

    iput v1, p0, Lru/yandex/bc;->h:I

    :cond_3
    if-le p2, p1, :cond_4

    iput p1, p0, Lru/yandex/bc;->i:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_4
    return-void

    :cond_5
    iget p2, p0, Lru/yandex/bc;->d:I

    const/4 v0, 0x5

    if-ne p2, v2, :cond_9

    const-string p2, "line_color"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p1, 0x3

    iput p1, p0, Lru/yandex/bc;->c:I

    return-void

    :cond_6
    const-string p2, "line_width"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p1, 0x4

    iput p1, p0, Lru/yandex/bc;->c:I

    return-void

    :cond_7
    const-string p2, "line_width_street_modifier"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const/16 p1, 0xc

    iput p1, p0, Lru/yandex/bc;->c:I

    return-void

    :cond_8
    const-string p2, "arrows"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iput v0, p0, Lru/yandex/bc;->d:I

    iput v0, p0, Lru/yandex/bc;->c:I

    iput-boolean v3, p0, Lru/yandex/bc;->s:Z

    return-void

    :cond_9
    if-ne p2, v0, :cond_f

    const-string p2, "color"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    const/4 p1, 0x6

    iput p1, p0, Lru/yandex/bc;->c:I

    return-void

    :cond_a
    const-string p2, "dash"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    const/4 p1, 0x7

    iput p1, p0, Lru/yandex/bc;->c:I

    return-void

    :cond_b
    const-string p2, "space"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    const/16 p1, 0x8

    iput p1, p0, Lru/yandex/bc;->c:I

    return-void

    :cond_c
    const-string p2, "thickness"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    const/16 p1, 0x9

    iput p1, p0, Lru/yandex/bc;->c:I

    return-void

    :cond_d
    const-string p2, "arrow_height"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    const/16 p1, 0xa

    iput p1, p0, Lru/yandex/bc;->c:I

    return-void

    :cond_e
    const-string p2, "arrow_length"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/16 p1, 0xb

    iput p1, p0, Lru/yandex/bc;->c:I

    :cond_f
    return-void
.end method

.method public a([CI)V
    .locals 3

    iget v0, p0, Lru/yandex/bc;->c:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {p1, v2, p2}, Lru/yandex/yandexmapkit/utils/Utils;->a([CII)F

    move-result p1

    iput p1, p0, Lru/yandex/bc;->m:F

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v2, p2}, Lru/yandex/yandexmapkit/utils/Utils;->a([CII)F

    move-result p1

    iput p1, p0, Lru/yandex/bc;->r:F

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v2, p2}, Lru/yandex/yandexmapkit/utils/Utils;->a([CII)F

    move-result p1

    iput p1, p0, Lru/yandex/bc;->q:F

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v2, p2}, Lru/yandex/yandexmapkit/utils/Utils;->a([CII)F

    move-result p1

    iput p1, p0, Lru/yandex/bc;->p:F

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v2, p2}, Lru/yandex/yandexmapkit/utils/Utils;->a([CII)F

    move-result p1

    iput p1, p0, Lru/yandex/bc;->o:F

    goto :goto_0

    :pswitch_6
    invoke-static {p1, v2, p2}, Lru/yandex/yandexmapkit/utils/Utils;->a([CII)F

    move-result p1

    iput p1, p0, Lru/yandex/bc;->n:F

    goto :goto_0

    :pswitch_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v2, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lru/yandex/bc;->k:I

    goto :goto_0

    :pswitch_8
    invoke-static {p1, v2, p2}, Lru/yandex/yandexmapkit/utils/Utils;->a([CII)F

    move-result p1

    iput p1, p0, Lru/yandex/bc;->l:F

    goto :goto_0

    :pswitch_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v2, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lru/yandex/bc;->j:I

    :goto_0
    iput v2, p0, Lru/yandex/bc;->c:I

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method a(IIF)[Lru/yandex/bb;
    .locals 5

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lru/yandex/bc;->a:[[Lru/yandex/bb;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    aget-object v3, v2, p2

    if-eqz v3, :cond_0

    iget v4, v3, Lru/yandex/bb;->a:F

    cmpg-float v4, p3, v4

    if-ltz v4, :cond_0

    iget v3, v3, Lru/yandex/bb;->b:F

    cmpl-float v3, p3, v3

    if-gez v3, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v1, p0, Lru/yandex/bc;->b:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lru/yandex/bb;

    if-eqz v2, :cond_3

    aget-object v3, v2, p2

    if-eqz v3, :cond_3

    iget v4, v3, Lru/yandex/bb;->a:F

    cmpg-float v4, p3, v4

    if-ltz v4, :cond_3

    iget v3, v3, Lru/yandex/bb;->b:F

    cmpl-float v3, p3, v3

    if-gez v3, :cond_3

    move-object v0, v2

    :cond_4
    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object p2, p0, Lru/yandex/bc;->a:[[Lru/yandex/bb;

    array-length p3, p2

    if-le p1, p3, :cond_6

    iget-object p2, p0, Lru/yandex/bc;->b:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lru/yandex/bb;

    return-object p1

    :cond_6
    aget-object p1, p2, p1

    return-object p1
.end method
