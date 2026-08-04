.class public final Lcom/activeandroid/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static sEnabled:Z = false

.field private static sTag:Ljava/lang/String; = "ActiveAndroid"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1

    .line 75
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 82
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 96
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 89
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1

    .line 159
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 166
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 180
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 173
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 1

    .line 103
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 110
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 124
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 117
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    return v0
.end method

.method public static setEnabled(Z)V
    .locals 0

    .line 39
    sput-boolean p0, Lcom/activeandroid/util/Log;->sEnabled:Z

    return-void
.end method

.method public static varargs t(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1

    .line 187
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "test"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Ljava/lang/String;)I
    .locals 1

    .line 47
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 54
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 68
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 61
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;)I
    .locals 1

    .line 131
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 138
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 152
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 145
    sget-boolean v0, Lcom/activeandroid/util/Log;->sEnabled:Z

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/activeandroid/util/Log;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
