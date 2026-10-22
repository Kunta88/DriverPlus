.class public final Lcom/txdriver/compat/AutoLoginPolicy;
.super Ljava/lang/Object;
.source "AutoLoginPolicy.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shouldSkipForm(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 4

    .line 7
    if-eqz p2, :cond_1a

    if-nez p3, :cond_1a

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1a

    if-eqz p1, :cond_1a

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    .line 7
    :goto_1b
    return p0
.end method
