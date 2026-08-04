.class public final Lru/yandex/bh;
.super Ljava/lang/Object;


# instance fields
.field public final a:D

.field public final b:D

.field public final c:I

.field public final d:I


# direct methods
.method constructor <init>(DDILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lru/yandex/bh;->a:D

    iput-wide p3, p0, Lru/yandex/bh;->b:D

    iput p5, p0, Lru/yandex/bh;->c:I

    const-string p1, "red"

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lru/yandex/bh;->d:I

    goto :goto_1

    :cond_0
    const-string p1, "yellow"

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput p2, p0, Lru/yandex/bh;->d:I

    goto :goto_1

    :cond_1
    const-string p1, "green"

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    const-string p1, "false"

    invoke-virtual {p1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x6

    iput p3, p0, Lru/yandex/bh;->d:I

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p3, 0xb

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    if-ltz p5, :cond_5

    iget p3, p0, Lru/yandex/bh;->d:I

    if-eqz p3, :cond_5

    const-string p3, "\u0431\u0430\u043b\u043b"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt p5, p2, :cond_3

    const/4 p2, 0x4

    if-gt p5, p2, :cond_3

    const-string p2, "\u0430"

    goto :goto_2

    :cond_3
    if-eqz p5, :cond_4

    const/4 p2, 0x5

    if-lt p5, p2, :cond_6

    :cond_4
    const-string p2, "\u043e\u0432"

    goto :goto_2

    :cond_5
    const-string p2, "\u043d\u0435\u0442 \u0434\u0430\u043d\u043d\u044b\u0445"

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
