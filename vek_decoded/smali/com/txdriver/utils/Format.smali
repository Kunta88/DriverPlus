.class public Lcom/txdriver/utils/Format;
.super Ljava/lang/Object;
.source "Format.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDouble(D)Ljava/lang/String;
    .locals 5

    double-to-int v0, p0

    int-to-double v0, v0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    const-string v0, "%.0f"

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double v0, v0, p0

    double-to-int v2, v0

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    const-string v0, "%.1f"

    goto :goto_0

    :cond_1
    const-string v0, "%.2f"

    .line 24
    :goto_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDouble(DLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 11
    invoke-static {p0, p1}, Lcom/txdriver/utils/Format;->formatDouble(D)Ljava/lang/String;

    move-result-object p0

    .line 12
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p2, v0, p0

    const-string p0, "%s %s"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
